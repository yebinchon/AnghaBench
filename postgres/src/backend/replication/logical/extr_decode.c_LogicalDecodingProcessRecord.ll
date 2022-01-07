; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_LogicalDecodingProcessRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_LogicalDecodingProcessRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32*, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected RM_NEXT_ID rmgr_id: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LogicalDecodingProcessRecord(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @XLogRecGetRmid(i32* %20)
  switch i32 %21, label %55 [
    i32 128, label %22
    i32 129, label %25
    i32 131, label %28
    i32 141, label %31
    i32 140, label %34
    i32 139, label %37
    i32 133, label %40
    i32 148, label %40
    i32 146, label %40
    i32 130, label %40
    i32 138, label %40
    i32 136, label %40
    i32 149, label %40
    i32 142, label %40
    i32 144, label %40
    i32 143, label %40
    i32 134, label %40
    i32 132, label %40
    i32 150, label %40
    i32 147, label %40
    i32 135, label %40
    i32 145, label %40
    i32 137, label %49
  ]

22:                                               ; preds = %2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = call i32 @DecodeXLogOp(%struct.TYPE_19__* %23, %struct.TYPE_18__* %5)
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = call i32 @DecodeXactOp(%struct.TYPE_19__* %26, %struct.TYPE_18__* %5)
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = call i32 @DecodeStandbyOp(%struct.TYPE_19__* %29, %struct.TYPE_18__* %5)
  br label %55

31:                                               ; preds = %2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = call i32 @DecodeHeap2Op(%struct.TYPE_19__* %32, %struct.TYPE_18__* %5)
  br label %55

34:                                               ; preds = %2
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = call i32 @DecodeHeapOp(%struct.TYPE_19__* %35, %struct.TYPE_18__* %5)
  br label %55

37:                                               ; preds = %2
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = call i32 @DecodeLogicalMsgOp(%struct.TYPE_19__* %38, %struct.TYPE_18__* %5)
  br label %55

40:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @XLogRecGetXid(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ReorderBufferProcessXid(i32 %43, i32 %45, i32 %47)
  br label %55

49:                                               ; preds = %2
  %50 = load i32, i32* @ERROR, align 4
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @XLogRecGetRmid(i32* %52)
  %54 = call i32 @elog(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %2, %40, %37, %34, %31, %28, %25, %22
  ret void
}

declare dso_local i32 @XLogRecGetRmid(i32*) #1

declare dso_local i32 @DecodeXLogOp(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @DecodeXactOp(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @DecodeStandbyOp(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @DecodeHeap2Op(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @DecodeHeapOp(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @DecodeLogicalMsgOp(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ReorderBufferProcessXid(i32, i32, i32) #1

declare dso_local i32 @XLogRecGetXid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
