; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_check_dumb_mode.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_check_dumb_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i64, %struct.gl_video_opts }
%struct.gl_video_opts = type { i64, i64*, %struct.TYPE_4__*, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@SCALER_COUNT = common dso_local global i32 0, align 4
@SCALER_TSCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bilinear\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_video*)* @check_dumb_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dumb_mode(%struct.gl_video* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gl_video*, align 8
  %4 = alloca %struct.gl_video_opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %3, align 8
  %7 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %8 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %7, i32 0, i32 1
  store %struct.gl_video_opts* %8, %struct.gl_video_opts** %4, align 8
  %9 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %10 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %112

14:                                               ; preds = %1
  %15 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %16 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %112

20:                                               ; preds = %14
  %21 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %22 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %112

26:                                               ; preds = %20
  %27 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %28 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %26
  %32 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %33 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %31
  %37 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %38 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %36
  %42 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %43 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %41
  %47 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %48 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %46
  %52 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %53 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %58 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %63 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %56, %51, %46, %41, %36, %31, %26
  store i32 0, i32* %2, align 4
  br label %112

67:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %95, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SCALER_COUNT, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SCALER_TSCALE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %78 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %112

93:                                               ; preds = %88, %76
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %68

98:                                               ; preds = %68
  %99 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %100 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.gl_video_opts*, %struct.gl_video_opts** %4, align 8
  %105 = getelementptr inbounds %struct.gl_video_opts, %struct.gl_video_opts* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %112

111:                                              ; preds = %103, %98
  store i32 1, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %110, %92, %66, %25, %19, %13
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
