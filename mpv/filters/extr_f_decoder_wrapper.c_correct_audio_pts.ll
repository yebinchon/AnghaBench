; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_correct_audio_pts.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_correct_audio_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { double, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { double, i32 }
%struct.mp_aframe = type { i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [23 x i8] c"value %f audio-pts-err\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid audio PTS: %f -> %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, %struct.mp_aframe*)* @correct_audio_pts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correct_audio_pts(%struct.priv* %0, %struct.mp_aframe* %1) #0 {
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_aframe*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.priv* %0, %struct.priv** %3, align 8
  store %struct.mp_aframe* %1, %struct.mp_aframe** %4, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  store double %12, double* %5, align 8
  %13 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %14 = call double @mp_aframe_get_pts(%struct.mp_aframe* %13)
  store double %14, double* %6, align 8
  %15 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %16 = call double @mp_aframe_duration(%struct.mp_aframe* %15)
  store double %16, double* %7, align 8
  %17 = load double, double* %6, align 8
  %18 = load double, double* @MP_NOPTS_VALUE, align 8
  %19 = fcmp une double %17, %18
  br i1 %19, label %20, label %85

20:                                               ; preds = %2
  %21 = load double, double* %5, align 8
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load double, double* %6, align 8
  %25 = load double, double* %7, align 8
  %26 = fadd double %24, %25
  %27 = fneg double %26
  store double %27, double* %6, align 8
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = load double, double* @MP_NOPTS_VALUE, align 8
  %33 = fcmp une double %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = load %struct.priv*, %struct.priv** %3, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = load double, double* %6, align 8
  %40 = fsub double %38, %39
  %41 = call i32 @MP_STATS(%struct.priv* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), double %40)
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.priv*, %struct.priv** %3, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = load double, double* %6, align 8
  %47 = fsub double %45, %46
  %48 = call double @llvm.fabs.f64(double %47)
  store double %48, double* %8, align 8
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = load double, double* @MP_NOPTS_VALUE, align 8
  %53 = fcmp une double %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %42
  %55 = load double, double* %8, align 8
  %56 = fcmp ogt double %55, 1.000000e-01
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.priv*, %struct.priv** %3, align 8
  %59 = load %struct.priv*, %struct.priv** %3, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = load double, double* %6, align 8
  %63 = call i32 @MP_WARN(%struct.priv* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), double %61, double %62)
  %64 = load double, double* %8, align 8
  %65 = fcmp oge double %64, 5.000000e+00
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %57
  br label %71

71:                                               ; preds = %70, %54, %42
  %72 = load %struct.priv*, %struct.priv** %3, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 0
  %74 = load double, double* %73, align 8
  %75 = load double, double* @MP_NOPTS_VALUE, align 8
  %76 = fcmp oeq double %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load double, double* %8, align 8
  %79 = fcmp ogt double %78, 1.000000e-03
  br i1 %79, label %80, label %84

80:                                               ; preds = %77, %71
  %81 = load double, double* %6, align 8
  %82 = load %struct.priv*, %struct.priv** %3, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 0
  store double %81, double* %83, align 8
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %2
  %86 = load %struct.priv*, %struct.priv** %3, align 8
  %87 = getelementptr inbounds %struct.priv, %struct.priv* %86, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = load double, double* @MP_NOPTS_VALUE, align 8
  %90 = fcmp oeq double %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.priv*, %struct.priv** %3, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.priv*, %struct.priv** %3, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 0
  store double 0.000000e+00, double* %100, align 8
  br label %101

101:                                              ; preds = %98, %91, %85
  %102 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %103 = load %struct.priv*, %struct.priv** %3, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 0
  %105 = load double, double* %104, align 8
  %106 = call i32 @mp_aframe_set_pts(%struct.mp_aframe* %102, double %105)
  %107 = load %struct.priv*, %struct.priv** %3, align 8
  %108 = getelementptr inbounds %struct.priv, %struct.priv* %107, i32 0, i32 0
  %109 = load double, double* %108, align 8
  %110 = load double, double* @MP_NOPTS_VALUE, align 8
  %111 = fcmp une double %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %101
  %113 = load double, double* %7, align 8
  %114 = load %struct.priv*, %struct.priv** %3, align 8
  %115 = getelementptr inbounds %struct.priv, %struct.priv* %114, i32 0, i32 0
  %116 = load double, double* %115, align 8
  %117 = fadd double %116, %113
  store double %117, double* %115, align 8
  br label %118

118:                                              ; preds = %112, %101
  ret void
}

declare dso_local double @mp_aframe_get_pts(%struct.mp_aframe*) #1

declare dso_local double @mp_aframe_duration(%struct.mp_aframe*) #1

declare dso_local i32 @MP_STATS(%struct.priv*, i8*, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @MP_WARN(%struct.priv*, i8*, double, double) #1

declare dso_local i32 @mp_aframe_set_pts(%struct.mp_aframe*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
