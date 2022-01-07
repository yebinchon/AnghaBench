; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_format_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_format_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fmtdesc = type { i32, i64, i32, i64, i32 }
%struct.dstr = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VIDIOC_ENUM_FMT = common dso_local global i32 0, align 4
@V4L2_FMT_FLAG_EMULATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c" (Emulated)\00", align 1
@VIDEO_FORMAT_NONE = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Pixelformat: %s (available)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Pixelformat: %s (unavailable)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @v4l2_format_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_format_list(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_fmtdesc, align 8
  %6 = alloca %struct.dstr, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %8 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %5, i32 0, i32 4
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %5, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = call i32 @dstr_init(%struct.dstr* %6)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @obs_property_list_clear(i32* %11)
  br label %13

13:                                               ; preds = %52, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @VIDIOC_ENUM_FMT, align 4
  %16 = call i64 @v4l2_ioctl(i32 %14, i32 %15, %struct.v4l2_fmtdesc* %5)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %5, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @dstr_copy(%struct.dstr* %6, i8* %21)
  %23 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @V4L2_FMT_FLAG_EMULATED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @dstr_cat(%struct.dstr* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %18
  %31 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %5, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @v4l2_to_obs_video_format(i32 %32)
  %34 = load i64, i64* @VIDEO_FORMAT_NONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %5, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @obs_property_list_add_int(i32* %37, i32 %39, i32 %41)
  %43 = load i32, i32* @LOG_INFO, align 4
  %44 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @blog(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %52

47:                                               ; preds = %30
  %48 = load i32, i32* @LOG_INFO, align 4
  %49 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @blog(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %36
  %53 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %5, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %13

56:                                               ; preds = %13
  %57 = call i32 @dstr_free(%struct.dstr* %6)
  ret void
}

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @obs_property_list_clear(i32*) #1

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_fmtdesc*) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i64 @v4l2_to_obs_video_format(i32) #1

declare dso_local i32 @obs_property_list_add_int(i32*, i32, i32) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
