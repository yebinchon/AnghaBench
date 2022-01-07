; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_load_hwdecs.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_load_hwdecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_driver = type { i8* }
%struct.gl_video = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.mp_hwdec_devices = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@ra_hwdec_drivers = common dso_local global %struct.ra_hwdec_driver** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_video_load_hwdecs(%struct.gl_video* %0, %struct.mp_hwdec_devices* %1, i32 %2) #0 {
  %4 = alloca %struct.gl_video*, align 8
  %5 = alloca %struct.mp_hwdec_devices*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ra_hwdec_driver*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %4, align 8
  store %struct.mp_hwdec_devices* %1, %struct.mp_hwdec_devices** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %11 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %16, %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %77

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %74

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %41 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %5, align 8
  %42 = call i32 @gl_video_load_hwdecs_all(%struct.gl_video* %40, %struct.mp_hwdec_devices* %41)
  br label %73

43:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %69, %43
  %45 = load %struct.ra_hwdec_driver**, %struct.ra_hwdec_driver*** @ra_hwdec_drivers, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %45, i64 %47
  %49 = load %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %48, align 8
  %50 = icmp ne %struct.ra_hwdec_driver* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  %52 = load %struct.ra_hwdec_driver**, %struct.ra_hwdec_driver*** @ra_hwdec_drivers, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %52, i64 %54
  %56 = load %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %55, align 8
  store %struct.ra_hwdec_driver* %56, %struct.ra_hwdec_driver** %9, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %9, align 8
  %59 = getelementptr inbounds %struct.ra_hwdec_driver, %struct.ra_hwdec_driver* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* %57, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %65 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %5, align 8
  %66 = load %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %9, align 8
  %67 = call i32 @load_add_hwdec(%struct.gl_video* %64, %struct.mp_hwdec_devices* %65, %struct.ra_hwdec_driver* %66, i32 0)
  br label %72

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %44

72:                                               ; preds = %63, %44
  br label %73

73:                                               ; preds = %72, %39
  br label %74

74:                                               ; preds = %73, %34
  %75 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %76 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %28
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @gl_video_load_hwdecs_all(%struct.gl_video*, %struct.mp_hwdec_devices*) #1

declare dso_local i32 @load_add_hwdec(%struct.gl_video*, %struct.mp_hwdec_devices*, %struct.ra_hwdec_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
