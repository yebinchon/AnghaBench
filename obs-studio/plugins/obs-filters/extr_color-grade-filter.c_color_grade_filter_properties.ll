; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-grade-filter.c_color_grade_filter_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-grade-filter.c_color_grade_filter_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lut_filter_data = type { i8* }
%struct.dstr = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"(*.png)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LUTs\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SETTING_IMAGE_PATH = common dso_local global i32 0, align 4
@TEXT_IMAGE_PATH = common dso_local global i32 0, align 4
@OBS_PATH_FILE = common dso_local global i32 0, align 4
@SETTING_CLUT_AMOUNT = common dso_local global i32 0, align 4
@TEXT_AMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @color_grade_filter_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @color_grade_filter_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lut_filter_data*, align 8
  %4 = alloca %struct.dstr, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dstr, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.lut_filter_data*
  store %struct.lut_filter_data* %10, %struct.lut_filter_data** %3, align 8
  %11 = bitcast %struct.dstr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = call i32* (...) @obs_properties_create()
  store i32* %12, i32** %6, align 8
  %13 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = call i32 @dstr_cat(%struct.dstr* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.lut_filter_data*, %struct.lut_filter_data** %3, align 8
  %16 = icmp ne %struct.lut_filter_data* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.lut_filter_data*, %struct.lut_filter_data** %3, align 8
  %19 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.lut_filter_data*, %struct.lut_filter_data** %3, align 8
  %24 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.lut_filter_data*, %struct.lut_filter_data** %3, align 8
  %31 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @dstr_copy(%struct.dstr* %4, i8* %32)
  br label %41

34:                                               ; preds = %22, %17, %1
  %35 = call i8* @obs_module_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @dstr_copy(%struct.dstr* %4, i8* %36)
  %38 = call i32 @dstr_cat_ch(%struct.dstr* %4, i8 signext 47)
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @bfree(i8* %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = call i32 @dstr_replace(%struct.dstr* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strrchr(i8* %44, i8 signext 47)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %49 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = add nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = call i32 @dstr_resize(%struct.dstr* %4, i32 %56)
  br label %58

58:                                               ; preds = %48, %41
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @SETTING_IMAGE_PATH, align 4
  %61 = load i32, i32* @TEXT_IMAGE_PATH, align 4
  %62 = load i32, i32* @OBS_PATH_FILE, align 4
  %63 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @obs_properties_add_path(i32* %59, i32 %60, i32 %61, i32 %62, i8* %64, i8* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @SETTING_CLUT_AMOUNT, align 4
  %70 = load i32, i32* @TEXT_AMOUNT, align 4
  %71 = call i32 @obs_properties_add_float_slider(i32* %68, i32 %69, i32 %70, i32 0, i32 1, double 1.000000e-02)
  %72 = call i32 @dstr_free(%struct.dstr* %7)
  %73 = call i32 @dstr_free(%struct.dstr* %4)
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @UNUSED_PARAMETER(i8* %74)
  %76 = load i32*, i32** %6, align 8
  ret i32* %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @obs_properties_create(...) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i8* @obs_module_file(i8*) #2

declare dso_local i32 @dstr_cat_ch(%struct.dstr*, i8 signext) #2

declare dso_local i32 @bfree(i8*) #2

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @dstr_resize(%struct.dstr*, i32) #2

declare dso_local i32 @obs_properties_add_path(i32*, i32, i32, i32, i8*, i8*) #2

declare dso_local i32 @obs_properties_add_float_slider(i32*, i32, i32, i32, i32, double) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i32 @UNUSED_PARAMETER(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
