; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_proc.c_closure_setup.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_proc.c_closure_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.REnv* }
%struct.REnv = type { i32, %struct.RClass* }
%struct.RClass = type { i32 }
%struct.RProc = type { i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.RProc* }
%struct.TYPE_15__ = type { %struct.REnv* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.RBasic = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }

@MRB_PROC_ENVSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.RProc*)* @closure_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closure_setup(%struct.TYPE_16__* %0, %struct.RProc* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.RProc*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.RProc*, align 8
  %7 = alloca %struct.REnv*, align 8
  %8 = alloca %struct.RClass*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.RProc* %1, %struct.RProc** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %5, align 8
  %14 = load %struct.RProc*, %struct.RProc** %4, align 8
  %15 = getelementptr inbounds %struct.RProc, %struct.RProc* %14, i32 0, i32 3
  %16 = load %struct.RProc*, %struct.RProc** %15, align 8
  store %struct.RProc* %16, %struct.RProc** %6, align 8
  store %struct.REnv* null, %struct.REnv** %7, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.REnv*, %struct.REnv** %21, align 8
  %23 = icmp ne %struct.REnv* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.REnv*, %struct.REnv** %26, align 8
  store %struct.REnv* %27, %struct.REnv** %7, align 8
  br label %76

28:                                               ; preds = %19, %2
  %29 = load %struct.RProc*, %struct.RProc** %6, align 8
  %30 = icmp ne %struct.RProc* %29, null
  br i1 %30, label %31, label %75

31:                                               ; preds = %28
  %32 = load %struct.RProc*, %struct.RProc** %4, align 8
  %33 = call %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.RProc* %32)
  store %struct.RClass* %33, %struct.RClass** %8, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = load %struct.RProc*, %struct.RProc** %6, align 8
  %36 = getelementptr inbounds %struct.RProc, %struct.RProc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.REnv* @env_new(%struct.TYPE_16__* %34, i32 %40)
  store %struct.REnv* %41, %struct.REnv** %7, align 8
  %42 = load %struct.REnv*, %struct.REnv** %7, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  store %struct.REnv* %42, %struct.REnv** %44, align 8
  %45 = load %struct.RClass*, %struct.RClass** %8, align 8
  %46 = icmp ne %struct.RClass* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %31
  %48 = load %struct.RClass*, %struct.RClass** %8, align 8
  %49 = load %struct.REnv*, %struct.REnv** %7, align 8
  %50 = getelementptr inbounds %struct.REnv, %struct.REnv* %49, i32 0, i32 1
  store %struct.RClass* %48, %struct.RClass** %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = load %struct.REnv*, %struct.REnv** %7, align 8
  %53 = bitcast %struct.REnv* %52 to %struct.RBasic*
  %54 = load %struct.RClass*, %struct.RClass** %8, align 8
  %55 = bitcast %struct.RClass* %54 to %struct.RBasic*
  %56 = call i32 @mrb_field_write_barrier(%struct.TYPE_16__* %51, %struct.RBasic* %53, %struct.RBasic* %55)
  br label %57

57:                                               ; preds = %47, %31
  %58 = load %struct.RProc*, %struct.RProc** %6, align 8
  %59 = call i64 @MRB_PROC_ENV_P(%struct.RProc* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.RProc*, %struct.RProc** %6, align 8
  %63 = call %struct.TYPE_11__* @MRB_PROC_ENV(%struct.RProc* %62)
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.RProc*, %struct.RProc** %6, align 8
  %69 = call %struct.TYPE_11__* @MRB_PROC_ENV(%struct.RProc* %68)
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.REnv*, %struct.REnv** %7, align 8
  %73 = getelementptr inbounds %struct.REnv, %struct.REnv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %67, %61, %57
  br label %75

75:                                               ; preds = %74, %28
  br label %76

76:                                               ; preds = %75, %24
  %77 = load %struct.REnv*, %struct.REnv** %7, align 8
  %78 = icmp ne %struct.REnv* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.REnv*, %struct.REnv** %7, align 8
  %81 = load %struct.RProc*, %struct.RProc** %4, align 8
  %82 = getelementptr inbounds %struct.RProc, %struct.RProc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store %struct.REnv* %80, %struct.REnv** %83, align 8
  %84 = load i32, i32* @MRB_PROC_ENVSET, align 4
  %85 = load %struct.RProc*, %struct.RProc** %4, align 8
  %86 = getelementptr inbounds %struct.RProc, %struct.RProc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = load %struct.RProc*, %struct.RProc** %4, align 8
  %91 = bitcast %struct.RProc* %90 to %struct.RBasic*
  %92 = load %struct.REnv*, %struct.REnv** %7, align 8
  %93 = bitcast %struct.REnv* %92 to %struct.RBasic*
  %94 = call i32 @mrb_field_write_barrier(%struct.TYPE_16__* %89, %struct.RBasic* %91, %struct.RBasic* %93)
  br label %95

95:                                               ; preds = %79, %76
  ret void
}

declare dso_local %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.RProc*) #1

declare dso_local %struct.REnv* @env_new(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @mrb_field_write_barrier(%struct.TYPE_16__*, %struct.RBasic*, %struct.RBasic*) #1

declare dso_local i64 @MRB_PROC_ENV_P(%struct.RProc*) #1

declare dso_local %struct.TYPE_11__* @MRB_PROC_ENV(%struct.RProc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
