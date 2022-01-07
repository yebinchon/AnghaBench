; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_format_selected.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_format_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@V4L2_IN_CAP_STD = common dso_local global i32 0, align 4
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dv_timing\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pixelformat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @format_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_selected(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @UNUSED_PARAMETER(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @obs_data_get_string(i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = load i32, i32* @O_NONBLOCK, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @v4l2_open(i32 %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @obs_data_get_int(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @v4l2_get_input_caps(i32 %30, i32 %31, i32* %10)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %133

35:                                               ; preds = %26
  %36 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %37 = load i32, i32* @V4L2_IN_CAP_DV_TIMINGS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @obs_properties_get(i32* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @obs_properties_get(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32* @obs_properties_get(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32* @obs_properties_get(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = call i32 @obs_property_set_visible(i32* %49, i32 %54)
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = call i32 @obs_property_set_visible(i32* %56, i32 %61)
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = call i32 @obs_property_set_visible(i32* %63, i32 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @V4L2_IN_CAP_DV_TIMINGS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = call i32 @obs_property_set_visible(i32* %71, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %35
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call i64 @obs_data_get_int(i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @v4l2_resolution_list(i32 %82, i64 %84, i32* %85)
  br label %87

87:                                               ; preds = %81, %35
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @v4l2_standard_list(i32 %93, i32* %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @V4L2_IN_CAP_DV_TIMINGS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @v4l2_dv_timing_list(i32 %102, i32* %103)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @v4l2_close(i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load i32*, i32** %11, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @obs_property_modified(i32* %111, i32* %112)
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32*, i32** %13, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @obs_property_modified(i32* %120, i32* %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @V4L2_IN_CAP_DV_TIMINGS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32*, i32** %14, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @obs_property_modified(i32* %129, i32* %130)
  br label %132

132:                                              ; preds = %128, %123
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %34, %25
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @v4l2_open(i32, i32) #1

declare dso_local i32 @obs_data_get_string(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i64 @v4l2_get_input_caps(i32, i32, i32*) #1

declare dso_local i32* @obs_properties_get(i32*, i8*) #1

declare dso_local i32 @obs_property_set_visible(i32*, i32) #1

declare dso_local i32 @v4l2_resolution_list(i32, i64, i32*) #1

declare dso_local i32 @v4l2_standard_list(i32, i32*) #1

declare dso_local i32 @v4l2_dv_timing_list(i32, i32*) #1

declare dso_local i32 @v4l2_close(i32) #1

declare dso_local i32 @obs_property_modified(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
