; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashEnsureBatchAccessors.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashEnsureBatchAccessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i8*, i8*, i64, i32* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@ParallelWorkerNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ExecParallelHashEnsureBatchAccessors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecParallelHashEnsureBatchAccessors(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %113

25:                                               ; preds = %16
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = call i32 @ExecParallelHashCloseBatchAccessors(%struct.TYPE_8__* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @DsaPointerIsValid(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %113

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MemoryContextSwitchTo(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 40, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @palloc0(i32 %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_7__*
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @dsa_get_address(i32 %56, i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %107, %35
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %110

69:                                               ; preds = %62
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %7, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32* @NthParallelHashJoinBatch(i32* %76, i32 %77)
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @ParallelHashJoinBatchInner(i32* %86)
  %88 = load i64, i64* @ParallelWorkerNumber, align 8
  %89 = add nsw i64 %88, 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = call i8* @sts_attach(i32 %87, i64 %89, i32* %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ParallelHashJoinBatchOuter(i32* %95, i32 %98)
  %100 = load i64, i64* @ParallelWorkerNumber, align 8
  %101 = add nsw i64 %100, 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = call i8* @sts_attach(i32 %99, i64 %101, i32* %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %69
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %62

110:                                              ; preds = %62
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @MemoryContextSwitchTo(i32 %111)
  br label %113

113:                                              ; preds = %110, %34, %24
  ret void
}

declare dso_local i32 @ExecParallelHashCloseBatchAccessors(%struct.TYPE_8__*) #1

declare dso_local i32 @DsaPointerIsValid(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i64 @dsa_get_address(i32, i32) #1

declare dso_local i32* @NthParallelHashJoinBatch(i32*, i32) #1

declare dso_local i8* @sts_attach(i32, i64, i32*) #1

declare dso_local i32 @ParallelHashJoinBatchInner(i32*) #1

declare dso_local i32 @ParallelHashJoinBatchOuter(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
