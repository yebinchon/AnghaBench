; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_scale_filter_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_scale_filter_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_video_info = type { i32, i32 }
%struct.anon = type { i32, i32 }

@NUM_DOWNSCALES = common dso_local global i32 0, align 4
@downscale_vals = common dso_local global double* null, align 8
@S_SAMPLING = common dso_local global i32 0, align 4
@T_SAMPLING = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@sampling_modified = common dso_local global i32 0, align 4
@T_SAMPLING_POINT = common dso_local global i8* null, align 8
@S_SAMPLING_POINT = common dso_local global i8* null, align 8
@T_SAMPLING_BILINEAR = common dso_local global i8* null, align 8
@S_SAMPLING_BILINEAR = common dso_local global i8* null, align 8
@T_SAMPLING_BICUBIC = common dso_local global i8* null, align 8
@S_SAMPLING_BICUBIC = common dso_local global i8* null, align 8
@T_SAMPLING_LANCZOS = common dso_local global i8* null, align 8
@S_SAMPLING_LANCZOS = common dso_local global i8* null, align 8
@T_SAMPLING_AREA = common dso_local global i8* null, align 8
@S_SAMPLING_AREA = common dso_local global i8* null, align 8
@S_RESOLUTION = common dso_local global i32 0, align 4
@T_RESOLUTION = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_EDITABLE = common dso_local global i32 0, align 4
@T_NONE = common dso_local global i8* null, align 8
@T_BASE = common dso_local global i8* null, align 8
@NUM_ASPECTS = common dso_local global i64 0, align 8
@aspects = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@S_UNDISTORT = common dso_local global i32 0, align 4
@T_UNDISTORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @scale_filter_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @scale_filter_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.obs_video_info, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  store i8* %0, i8** %2, align 8
  %14 = call i32* (...) @obs_properties_create()
  store i32* %14, i32** %3, align 8
  %15 = load i32, i32* @NUM_DOWNSCALES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.anon, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = call i32 @obs_get_video_info(%struct.obs_video_info* %4)
  %20 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %52, %1
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* @NUM_DOWNSCALES, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = sitofp i32 %30 to double
  %32 = load double*, double** @downscale_vals, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds double, double* %32, i64 %33
  %35 = load double, double* %34, align 8
  %36 = fdiv double %31, %35
  %37 = fptosi double %36 to i32
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %18, i64 %38
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sitofp i32 %41 to double
  %43 = load double*, double** @downscale_vals, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds double, double* %43, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fdiv double %42, %46
  %48 = fptosi double %47 to i32
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %18, i64 %49
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %29
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %24

55:                                               ; preds = %24
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @S_SAMPLING, align 4
  %58 = load i32, i32* @T_SAMPLING, align 4
  %59 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %60 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %61 = call i32* @obs_properties_add_list(i32* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @sampling_modified, align 4
  %64 = call i32 @obs_property_set_modified_callback(i32* %62, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** @T_SAMPLING_POINT, align 8
  %67 = load i8*, i8** @S_SAMPLING_POINT, align 8
  %68 = call i32 @obs_property_list_add_string(i32* %65, i8* %66, i8* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i8*, i8** @T_SAMPLING_BILINEAR, align 8
  %71 = load i8*, i8** @S_SAMPLING_BILINEAR, align 8
  %72 = call i32 @obs_property_list_add_string(i32* %69, i8* %70, i8* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** @T_SAMPLING_BICUBIC, align 8
  %75 = load i8*, i8** @S_SAMPLING_BICUBIC, align 8
  %76 = call i32 @obs_property_list_add_string(i32* %73, i8* %74, i8* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i8*, i8** @T_SAMPLING_LANCZOS, align 8
  %79 = load i8*, i8** @S_SAMPLING_LANCZOS, align 8
  %80 = call i32 @obs_property_list_add_string(i32* %77, i8* %78, i8* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load i8*, i8** @T_SAMPLING_AREA, align 8
  %83 = load i8*, i8** @S_SAMPLING_AREA, align 8
  %84 = call i32 @obs_property_list_add_string(i32* %81, i8* %82, i8* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @S_RESOLUTION, align 4
  %87 = load i32, i32* @T_RESOLUTION, align 4
  %88 = load i32, i32* @OBS_COMBO_TYPE_EDITABLE, align 4
  %89 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %90 = call i32* @obs_properties_add_list(i32* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store i32* %90, i32** %5, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i8*, i8** @T_NONE, align 8
  %93 = load i8*, i8** @T_NONE, align 8
  %94 = call i32 @obs_property_list_add_string(i32* %91, i8* %92, i8* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load i8*, i8** @T_BASE, align 8
  %97 = load i8*, i8** @T_BASE, align 8
  %98 = call i32 @obs_property_list_add_string(i32* %95, i8* %96, i8* %97)
  store i64 0, i64* %11, align 8
  br label %99

99:                                               ; preds = %114, %55
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @NUM_ASPECTS, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i32*, i32** %5, align 8
  %105 = load i8**, i8*** @aspects, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load i8**, i8*** @aspects, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i8*, i8** %109, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @obs_property_list_add_string(i32* %104, i8* %108, i8* %112)
  br label %114

114:                                              ; preds = %103
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %11, align 8
  br label %99

117:                                              ; preds = %99
  store i64 0, i64* %12, align 8
  br label %118

118:                                              ; preds = %138, %117
  %119 = load i64, i64* %12, align 8
  %120 = load i32, i32* @NUM_DOWNSCALES, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ult i64 %119, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %118
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %18, i64 %125
  %127 = getelementptr inbounds %struct.anon, %struct.anon* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds %struct.anon, %struct.anon* %18, i64 %129
  %131 = getelementptr inbounds %struct.anon, %struct.anon* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @snprintf(i8* %124, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %132)
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %137 = call i32 @obs_property_list_add_string(i32* %134, i8* %135, i8* %136)
  br label %138

138:                                              ; preds = %123
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %12, align 8
  br label %118

141:                                              ; preds = %118
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* @S_UNDISTORT, align 4
  %144 = load i32, i32* @T_UNDISTORT, align 4
  %145 = call i32 @obs_properties_add_bool(i32* %142, i32 %143, i32 %144)
  %146 = load i8*, i8** %2, align 8
  %147 = call i32 @UNUSED_PARAMETER(i8* %146)
  %148 = load i32*, i32** %3, align 8
  %149 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %149)
  ret i32* %148
}

declare dso_local i32* @obs_properties_create(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @obs_get_video_info(%struct.obs_video_info*) #1

declare dso_local i32* @obs_properties_add_list(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
