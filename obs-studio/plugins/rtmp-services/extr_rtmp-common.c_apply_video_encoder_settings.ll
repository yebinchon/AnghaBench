; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_apply_video_encoder_settings.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_apply_video_encoder_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"keyint_sec\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rate_control\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@OBS_DATA_STRING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"max video bitrate\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"bf\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"x264opts\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @apply_video_encoder_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_video_encoder_settings(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dstr, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @json_object_get(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @json_is_integer(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @json_integer_value(i32* %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @obs_data_set_int(i32* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @obs_data_set_string(i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @json_object_get(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32* @obs_data_item_byname(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @json_is_string(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @obs_data_item_gettype(i32* %36)
  %38 = load i64, i64* @OBS_DATA_STRING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = call i8* @json_string_value(i32* %41)
  store i8* %42, i8** %8, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @obs_data_set_string(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %40, %35, %25
  %47 = load i32*, i32** %4, align 8
  %48 = call i32* @json_object_get(i32* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @json_is_integer(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @json_integer_value(i32* %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @obs_data_get_int(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @obs_data_set_int(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @obs_data_set_int(i32* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %60, %52
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32*, i32** %4, align 8
  %70 = call i32* @json_object_get(i32* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32* %70, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @json_is_integer(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @obs_data_set_int(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 0)
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i32*, i32** %4, align 8
  %79 = call i32* @json_object_get(i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i32* %79, i32** %5, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @json_is_string(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load i32*, i32** %5, align 8
  %85 = call i8* @json_string_value(i32* %84)
  store i8* %85, i8** %10, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = call i8* @obs_data_get_string(i32* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @dstr_init_copy(%struct.dstr* %12, i8* %88)
  %90 = call i32 @dstr_is_empty(%struct.dstr* %12)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %83
  %93 = call i32 @dstr_cat(%struct.dstr* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %83
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @dstr_cat(%struct.dstr* %12, i8* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @obs_data_set_string(i32* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %99)
  %101 = call i32 @dstr_free(%struct.dstr* %12)
  br label %102

102:                                              ; preds = %94, %77
  ret void
}

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i64 @json_is_integer(i32*) #1

declare dso_local i64 @json_integer_value(i32*) #1

declare dso_local i32 @obs_data_set_int(i32*, i8*, i32) #1

declare dso_local i32 @obs_data_set_string(i32*, i8*, i8*) #1

declare dso_local i32* @obs_data_item_byname(i32*, i8*) #1

declare dso_local i64 @json_is_string(i32*) #1

declare dso_local i64 @obs_data_item_gettype(i32*) #1

declare dso_local i8* @json_string_value(i32*) #1

declare dso_local i32 @obs_data_get_int(i32*, i8*) #1

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @dstr_init_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_is_empty(%struct.dstr*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
