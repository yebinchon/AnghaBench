; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ParallelQueryMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ParallelQueryMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, i32, i32, i32 }
%struct.TYPE_35__ = type { i32 (%struct.TYPE_35__*)* }
%struct.TYPE_32__ = type { %struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i64, i32* }
%struct.TYPE_33__ = type { i32*, i32* }

@PARALLEL_KEY_EXECUTOR_FIXED = common dso_local global i32 0, align 4
@PARALLEL_KEY_INSTRUMENTATION = common dso_local global i32 0, align 4
@PARALLEL_KEY_JIT_INSTRUMENTATION = common dso_local global i32 0, align 4
@debug_query_string = common dso_local global i32 0, align 4
@STATE_RUNNING = common dso_local global i32 0, align 4
@PARALLEL_KEY_DSA = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@PARALLEL_KEY_BUFFER_USAGE = common dso_local global i32 0, align 4
@ParallelWorkerNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ParallelQueryMain(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_33__, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @PARALLEL_KEY_EXECUTOR_FIXED, align 4
  %18 = call i8* @shm_toc_lookup(i32* %16, i32 %17, i32 0)
  %19 = bitcast i8* %18 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %19, %struct.TYPE_34__** %5, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_35__* @ExecParallelGetReceiver(i32* %20, i32* %21)
  store %struct.TYPE_35__* %22, %struct.TYPE_35__** %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @PARALLEL_KEY_INSTRUMENTATION, align 4
  %25 = call i8* @shm_toc_lookup(i32* %23, i32 %24, i32 1)
  %26 = bitcast i8* %25 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %26, %struct.TYPE_31__** %9, align 8
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %28 = icmp ne %struct.TYPE_31__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @PARALLEL_KEY_JIT_INSTRUMENTATION, align 4
  %36 = call i8* @shm_toc_lookup(i32* %34, i32 %35, i32 1)
  %37 = bitcast i8* %36 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %37, %struct.TYPE_30__** %10, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call %struct.TYPE_32__* @ExecParallelGetQueryDesc(i32* %38, %struct.TYPE_35__* %39, i32 %40)
  store %struct.TYPE_32__* %41, %struct.TYPE_32__** %8, align 8
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* @debug_query_string, align 4
  %45 = load i32, i32* @STATE_RUNNING, align 4
  %46 = load i32, i32* @debug_query_string, align 4
  %47 = call i32 @pgstat_report_activity(i32 %45, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @PARALLEL_KEY_DSA, align 4
  %50 = call i8* @shm_toc_lookup(i32* %48, i32 %49, i32 0)
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = call i32* @dsa_attach_in_place(i8* %51, i32* %52)
  store i32* %53, i32** %13, align 8
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ExecutorStart(%struct.TYPE_32__* %61, i32 %64)
  %66 = load i32*, i32** %13, align 8
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  store i32* %66, i32** %72, align 8
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @DsaPointerIsValid(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %33
  %79 = load i32*, i32** %13, align 8
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @dsa_get_address(i32* %79, i32 %82)
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %86, align 8
  %88 = call i32 @RestoreParamExecParams(i8* %84, %struct.TYPE_25__* %87)
  br label %89

89:                                               ; preds = %78, %33
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 1
  store i32* %90, i32** %91, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 0
  store i32* %92, i32** %93, align 8
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %95, align 8
  %97 = call i32 @ExecParallelInitializeWorker(%struct.TYPE_26__* %96, %struct.TYPE_33__* %14)
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %102, align 8
  %104 = call i32 @ExecSetTupleBound(i64 %100, %struct.TYPE_26__* %103)
  %105 = call i32 (...) @InstrStartParallelQuery()
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %107 = load i32, i32* @ForwardScanDirection, align 4
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %89
  br label %117

113:                                              ; preds = %89
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  br label %117

117:                                              ; preds = %113, %112
  %118 = phi i64 [ 0, %112 ], [ %116, %113 ]
  %119 = call i32 @ExecutorRun(%struct.TYPE_32__* %106, i32 %107, i64 %118, i32 1)
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %121 = call i32 @ExecutorFinish(%struct.TYPE_32__* %120)
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* @PARALLEL_KEY_BUFFER_USAGE, align 4
  %124 = call i8* @shm_toc_lookup(i32* %122, i32 %123, i32 0)
  %125 = bitcast i8* %124 to i32*
  store i32* %125, i32** %6, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i64, i64* @ParallelWorkerNumber, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = call i32 @InstrEndParallelQuery(i32* %128)
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %131 = icmp ne %struct.TYPE_31__* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %117
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %134, align 8
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %137 = call i32 @ExecParallelReportInstrumentation(%struct.TYPE_26__* %135, %struct.TYPE_31__* %136)
  br label %138

138:                                              ; preds = %132, %117
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %142, align 8
  %144 = icmp ne %struct.TYPE_29__* %143, null
  br i1 %144, label %145, label %168

145:                                              ; preds = %138
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %147 = icmp ne %struct.TYPE_30__* %146, null
  br i1 %147, label %148, label %168

148:                                              ; preds = %145
  %149 = load i64, i64* @ParallelWorkerNumber, align 8
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ult i64 %149, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @Assert(i32 %154)
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @ParallelWorkerNumber, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 %162, i32* %167, align 4
  br label %168

168:                                              ; preds = %148, %145, %138
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %170 = call i32 @ExecutorEnd(%struct.TYPE_32__* %169)
  %171 = load i32*, i32** %13, align 8
  %172 = call i32 @dsa_detach(i32* %171)
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %174 = call i32 @FreeQueryDesc(%struct.TYPE_32__* %173)
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %175, i32 0, i32 0
  %177 = load i32 (%struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*)** %176, align 8
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %179 = call i32 %177(%struct.TYPE_35__* %178)
  ret void
}

declare dso_local i8* @shm_toc_lookup(i32*, i32, i32) #1

declare dso_local %struct.TYPE_35__* @ExecParallelGetReceiver(i32*, i32*) #1

declare dso_local %struct.TYPE_32__* @ExecParallelGetQueryDesc(i32*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @pgstat_report_activity(i32, i32) #1

declare dso_local i32* @dsa_attach_in_place(i8*, i32*) #1

declare dso_local i32 @ExecutorStart(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @DsaPointerIsValid(i32) #1

declare dso_local i8* @dsa_get_address(i32*, i32) #1

declare dso_local i32 @RestoreParamExecParams(i8*, %struct.TYPE_25__*) #1

declare dso_local i32 @ExecParallelInitializeWorker(%struct.TYPE_26__*, %struct.TYPE_33__*) #1

declare dso_local i32 @ExecSetTupleBound(i64, %struct.TYPE_26__*) #1

declare dso_local i32 @InstrStartParallelQuery(...) #1

declare dso_local i32 @ExecutorRun(%struct.TYPE_32__*, i32, i64, i32) #1

declare dso_local i32 @ExecutorFinish(%struct.TYPE_32__*) #1

declare dso_local i32 @InstrEndParallelQuery(i32*) #1

declare dso_local i32 @ExecParallelReportInstrumentation(%struct.TYPE_26__*, %struct.TYPE_31__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExecutorEnd(%struct.TYPE_32__*) #1

declare dso_local i32 @dsa_detach(i32*) #1

declare dso_local i32 @FreeQueryDesc(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
