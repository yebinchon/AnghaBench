; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelReinitialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelReinitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__*, i32*, i32, i32*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@PARALLEL_KEY_EXECUTOR_FIXED = common dso_local global i32 0, align 4
@InvalidDsaPointer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecParallelReinitialize(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @Assert(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = call i32 @GetPerTupleExprContext(%struct.TYPE_17__* %17)
  %19 = call i32 @ExecSetParamPlanMulti(i32* %16, i32 %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = call i32 @ReinitializeParallelDSM(%struct.TYPE_18__* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = call i32 @ExecParallelSetupTupleQueues(%struct.TYPE_18__* %26, i32 1)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PARALLEL_KEY_EXECUTOR_FIXED, align 4
  %40 = call %struct.TYPE_16__* @shm_toc_lookup(i32 %38, i32 %39, i32 0)
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %8, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @DsaPointerIsValid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %3
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dsa_free(i32* %49, i32 %52)
  %54 = load i32, i32* @InvalidDsaPointer, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %46, %3
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @bms_is_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @SerializeParamExecParams(%struct.TYPE_17__* %62, i32* %63, i32* %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %61, %57
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = call i32 @ExecParallelReInitializeDSM(%struct.TYPE_14__* %81, %struct.TYPE_18__* %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExecSetParamPlanMulti(i32*, i32) #1

declare dso_local i32 @GetPerTupleExprContext(%struct.TYPE_17__*) #1

declare dso_local i32 @ReinitializeParallelDSM(%struct.TYPE_18__*) #1

declare dso_local i32 @ExecParallelSetupTupleQueues(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_16__* @shm_toc_lookup(i32, i32, i32) #1

declare dso_local i64 @DsaPointerIsValid(i32) #1

declare dso_local i32 @dsa_free(i32*, i32) #1

declare dso_local i32 @bms_is_empty(i32*) #1

declare dso_local i32 @SerializeParamExecParams(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @ExecParallelReInitializeDSM(%struct.TYPE_14__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
