; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_mask-filter.c_mask_filter_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_mask-filter.c_mask_filter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mask_filter_data = type { i8*, i32, i32, i32 }

@SETTING_IMAGE_PATH = common dso_local global i32 0, align 4
@SETTING_TYPE = common dso_local global i32 0, align 4
@SETTING_COLOR = common dso_local global i32 0, align 4
@SETTING_OPACITY = common dso_local global i32 0, align 4
@SETTING_STRETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @mask_filter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mask_filter_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mask_filter_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.mask_filter_data*
  store %struct.mask_filter_data* %12, %struct.mask_filter_data** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @SETTING_IMAGE_PATH, align 4
  %15 = call i8* @obs_data_get_string(i32* %13, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @SETTING_TYPE, align 4
  %18 = call i8* @obs_data_get_string(i32* %16, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @SETTING_COLOR, align 4
  %21 = call i64 @obs_data_get_int(i32* %19, i32 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @SETTING_OPACITY, align 4
  %25 = call i64 @obs_data_get_int(i32* %23, i32 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %28 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %33 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @bfree(i8* %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @bstrdup(i8* %37)
  %39 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %40 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 16777215
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double %44, 2.550000e+00
  %46 = fptosi double %45 to i32
  %47 = shl i32 %46, 24
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %51 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %50, i32 0, i32 3
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @vec4_from_rgba(i32* %51, i32 %52)
  %54 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %55 = call i32 @mask_filter_image_load(%struct.mask_filter_data* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @SETTING_STRETCH, align 4
  %58 = call i32 @obs_data_get_bool(i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %63 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = call i32 (...) @obs_enter_graphics()
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @obs_module_file(i8* %65)
  store i8* %66, i8** %10, align 8
  %67 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %68 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @gs_effect_destroy(i32 %69)
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @gs_effect_create_from_file(i8* %71, i32* null)
  %73 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %74 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @bfree(i8* %75)
  %77 = call i32 (...) @obs_leave_graphics()
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i64 @obs_data_get_int(i32*, i32) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @vec4_from_rgba(i32*, i32) #1

declare dso_local i32 @mask_filter_image_load(%struct.mask_filter_data*) #1

declare dso_local i32 @obs_data_get_bool(i32*, i32) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i8* @obs_module_file(i8*) #1

declare dso_local i32 @gs_effect_destroy(i32) #1

declare dso_local i32 @gs_effect_create_from_file(i8*, i32*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
