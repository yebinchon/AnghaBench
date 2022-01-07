; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_clip_timestamps.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_clip_timestamps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { double, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_aframe_clip_timestamps(%struct.mp_aframe* %0, double %1, double %2) #0 {
  %4 = alloca %struct.mp_aframe*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mp_aframe* %0, %struct.mp_aframe** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %11 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %12 = call double @mp_aframe_end_pts(%struct.mp_aframe* %11)
  store double %12, double* %7, align 8
  %13 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %14 = call double @mp_aframe_get_effective_rate(%struct.mp_aframe* %13)
  store double %14, double* %8, align 8
  %15 = load double, double* %7, align 8
  %16 = load double, double* @MP_NOPTS_VALUE, align 8
  %17 = fcmp oeq double %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %110

19:                                               ; preds = %3
  %20 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %21 = call i32 @mp_aframe_get_format(%struct.mp_aframe* %20)
  %22 = call i64 @af_fmt_is_spdif(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %110

25:                                               ; preds = %19
  %26 = load double, double* %6, align 8
  %27 = load double, double* @MP_NOPTS_VALUE, align 8
  %28 = fcmp une double %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load double, double* %7, align 8
  %31 = load double, double* %6, align 8
  %32 = fcmp oge double %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %35 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load double, double* %6, align 8
  %38 = fcmp oge double %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %41 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* null, i8** %43, align 8
  br label %64

44:                                               ; preds = %33
  %45 = load double, double* %6, align 8
  %46 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %47 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fsub double %45, %48
  %50 = load double, double* %8, align 8
  %51 = fmul double %49, %50
  %52 = fptosi double %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %55 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @MPCLAMP(i32 %53, i32 0, i8* %58)
  %60 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %61 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %59, i8** %63, align 8
  br label %64

64:                                               ; preds = %44, %39
  br label %65

65:                                               ; preds = %64, %29
  br label %66

66:                                               ; preds = %65, %25
  %67 = load double, double* %5, align 8
  %68 = load double, double* @MP_NOPTS_VALUE, align 8
  %69 = fcmp une double %67, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %66
  %71 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %72 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %71, i32 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = load double, double* %5, align 8
  %75 = fcmp olt double %73, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %70
  %77 = load double, double* %7, align 8
  %78 = load double, double* %5, align 8
  %79 = fcmp ole double %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %82 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i8* null, i8** %84, align 8
  %85 = load double, double* %7, align 8
  %86 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %87 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %86, i32 0, i32 0
  store double %85, double* %87, align 8
  br label %108

88:                                               ; preds = %76
  %89 = load double, double* %5, align 8
  %90 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %91 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %90, i32 0, i32 0
  %92 = load double, double* %91, align 8
  %93 = fsub double %89, %92
  %94 = load double, double* %8, align 8
  %95 = fmul double %93, %94
  %96 = fptosi double %95 to i32
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %99 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @MPCLAMP(i32 %97, i32 0, i8* %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %10, align 4
  %105 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @mp_aframe_skip_samples(%struct.mp_aframe* %105, i32 %106)
  br label %108

108:                                              ; preds = %88, %80
  br label %109

109:                                              ; preds = %108, %70
  br label %110

110:                                              ; preds = %18, %24, %109, %66
  ret void
}

declare dso_local double @mp_aframe_end_pts(%struct.mp_aframe*) #1

declare dso_local double @mp_aframe_get_effective_rate(%struct.mp_aframe*) #1

declare dso_local i64 @af_fmt_is_spdif(i32) #1

declare dso_local i32 @mp_aframe_get_format(%struct.mp_aframe*) #1

declare dso_local i8* @MPCLAMP(i32, i32, i8*) #1

declare dso_local i32 @mp_aframe_skip_samples(%struct.mp_aframe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
