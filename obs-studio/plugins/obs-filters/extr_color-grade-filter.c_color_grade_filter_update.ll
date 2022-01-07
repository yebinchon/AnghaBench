; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-grade-filter.c_color_grade_filter_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-grade-filter.c_color_grade_filter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lut_filter_data = type { i8*, float, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@SETTING_IMAGE_PATH = common dso_local global i32 0, align 4
@SETTING_CLUT_AMOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"color_grade_filter.effect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @color_grade_filter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_grade_filter_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lut_filter_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.lut_filter_data*
  store %struct.lut_filter_data* %10, %struct.lut_filter_data** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @SETTING_IMAGE_PATH, align 4
  %13 = call i8* @obs_data_get_string(i32* %11, i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @SETTING_CLUT_AMOUNT, align 4
  %16 = call double @obs_data_get_double(i32* %14, i32 %15)
  store double %16, double* %7, align 8
  %17 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %18 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @bfree(i8* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @bstrdup(i8* %24)
  %26 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %27 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %30 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %29, i32 0, i32 0
  store i8* null, i8** %30, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = call i32 (...) @obs_enter_graphics()
  %33 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %34 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %33, i32 0, i32 3
  %35 = call i32 @gs_image_file_free(%struct.TYPE_4__* %34)
  %36 = call i32 (...) @obs_leave_graphics()
  %37 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %38 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %37, i32 0, i32 3
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @gs_image_file_init(%struct.TYPE_4__* %38, i8* %39)
  %41 = call i32 (...) @obs_enter_graphics()
  %42 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %43 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %42, i32 0, i32 3
  %44 = call i32 @gs_image_file_init_texture(%struct.TYPE_4__* %43)
  %45 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %46 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %50 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load double, double* %7, align 8
  %52 = fptrunc double %51 to float
  %53 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %54 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %53, i32 0, i32 1
  store float %52, float* %54, align 8
  %55 = call i8* @obs_module_file(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* %55, i8** %8, align 8
  %56 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %57 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gs_effect_destroy(i32 %58)
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @gs_effect_create_from_file(i8* %60, i32* null)
  %62 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %63 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @bfree(i8* %64)
  %66 = call i32 (...) @obs_leave_graphics()
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local double @obs_data_get_double(i32*, i32) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_image_file_free(%struct.TYPE_4__*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @gs_image_file_init(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @gs_image_file_init_texture(%struct.TYPE_4__*) #1

declare dso_local i8* @obs_module_file(i8*) #1

declare dso_local i32 @gs_effect_destroy(i32) #1

declare dso_local i32 @gs_effect_create_from_file(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
