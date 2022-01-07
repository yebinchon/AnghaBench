; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_chroma-key-filter.c_color_settings_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_chroma-key-filter.c_color_settings_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chroma_key_filter_data = type { float, float, float, i32 }

@SETTING_OPACITY = common dso_local global i32 0, align 4
@SETTING_CONTRAST = common dso_local global i32 0, align 4
@SETTING_BRIGHTNESS = common dso_local global i32 0, align 4
@SETTING_GAMMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chroma_key_filter_data*, i32*)* @color_settings_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_settings_update(%struct.chroma_key_filter_data* %0, i32* %1) #0 {
  %3 = alloca %struct.chroma_key_filter_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.chroma_key_filter_data* %0, %struct.chroma_key_filter_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @SETTING_OPACITY, align 4
  %12 = call i32 @obs_data_get_int(i32* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 255
  %15 = sdiv i32 %14, 100
  %16 = shl i32 %15, 24
  %17 = or i32 16777215, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @SETTING_CONTRAST, align 4
  %20 = call double @obs_data_get_double(i32* %18, i32 %19)
  store double %20, double* %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @SETTING_BRIGHTNESS, align 4
  %23 = call double @obs_data_get_double(i32* %21, i32 %22)
  store double %23, double* %8, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @SETTING_GAMMA, align 4
  %26 = call double @obs_data_get_double(i32* %24, i32 %25)
  store double %26, double* %9, align 8
  %27 = load double, double* %7, align 8
  %28 = fcmp olt double %27, 0.000000e+00
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load double, double* %7, align 8
  %31 = fneg double %30
  %32 = fadd double %31, 1.000000e+00
  %33 = fdiv double 1.000000e+00, %32
  br label %37

34:                                               ; preds = %2
  %35 = load double, double* %7, align 8
  %36 = fadd double %35, 1.000000e+00
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi double [ %33, %29 ], [ %36, %34 ]
  store double %38, double* %7, align 8
  %39 = load double, double* %8, align 8
  %40 = fmul double %39, 5.000000e-01
  store double %40, double* %8, align 8
  %41 = load double, double* %9, align 8
  %42 = fcmp olt double %41, 0.000000e+00
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load double, double* %9, align 8
  %45 = fneg double %44
  %46 = fadd double %45, 1.000000e+00
  br label %51

47:                                               ; preds = %37
  %48 = load double, double* %9, align 8
  %49 = fadd double %48, 1.000000e+00
  %50 = fdiv double 1.000000e+00, %49
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi double [ %46, %43 ], [ %50, %47 ]
  store double %52, double* %9, align 8
  %53 = load double, double* %7, align 8
  %54 = fptrunc double %53 to float
  %55 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %3, align 8
  %56 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %55, i32 0, i32 0
  store float %54, float* %56, align 4
  %57 = load double, double* %8, align 8
  %58 = fptrunc double %57 to float
  %59 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %3, align 8
  %60 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %59, i32 0, i32 1
  store float %58, float* %60, align 4
  %61 = load double, double* %9, align 8
  %62 = fptrunc double %61 to float
  %63 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %3, align 8
  %64 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %63, i32 0, i32 2
  store float %62, float* %64, align 4
  %65 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %3, align 8
  %66 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %65, i32 0, i32 3
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @vec4_from_rgba(i32* %66, i32 %67)
  ret void
}

declare dso_local i32 @obs_data_get_int(i32*, i32) #1

declare dso_local double @obs_data_get_double(i32*, i32) #1

declare dso_local i32 @vec4_from_rgba(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
