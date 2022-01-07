; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeHeap2Op.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeHeap2Op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@XLOG_HEAP_OPMASK = common dso_local global i32 0, align 4
@SNAPBUILD_FULL_SNAPSHOT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unexpected RM_HEAP2_ID record type: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*)* @DecodeHeap2Op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeHeap2Op(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @XLogRecGetInfo(i32 %11)
  %13 = load i32, i32* @XLOG_HEAP_OPMASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @XLogRecGetXid(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ReorderBufferProcessXid(i32 %24, i32 %25, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @SnapBuildCurrentState(i32* %30)
  %32 = load i64, i64* @SNAPBUILD_FULL_SNAPSHOT, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %2
  br label %79

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %75 [
    i32 131, label %42
    i32 130, label %60
    i32 129, label %73
    i32 133, label %74
    i32 135, label %74
    i32 134, label %74
    i32 128, label %74
    i32 132, label %74
  ]

42:                                               ; preds = %40
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SnapBuildProcessChange(i32* %48, i32 %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = call i32 @DecodeMultiInsert(%struct.TYPE_8__* %56, %struct.TYPE_7__* %57)
  br label %59

59:                                               ; preds = %55, %47, %42
  br label %79

60:                                               ; preds = %40
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @XLogRecGetData(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @SnapBuildProcessNewCid(i32* %66, i32 %67, i32 %70, i32* %71)
  br label %79

73:                                               ; preds = %40
  br label %79

74:                                               ; preds = %40, %40, %40, %40, %40
  br label %79

75:                                               ; preds = %40
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @elog(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %39, %75, %74, %73, %60, %59
  ret void
}

declare dso_local i32 @XLogRecGetInfo(i32) #1

declare dso_local i32 @XLogRecGetXid(i32) #1

declare dso_local i32 @ReorderBufferProcessXid(i32, i32, i32) #1

declare dso_local i64 @SnapBuildCurrentState(i32*) #1

declare dso_local i32 @SnapBuildProcessChange(i32*, i32, i32) #1

declare dso_local i32 @DecodeMultiInsert(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i64 @XLogRecGetData(i32) #1

declare dso_local i32 @SnapBuildProcessNewCid(i32*, i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
