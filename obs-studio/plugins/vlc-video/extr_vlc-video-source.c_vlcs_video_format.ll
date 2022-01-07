; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_video_format.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_video_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_source = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64*, i64*, i32, i32, i32 }

@VIDEO_RANGE_FULL = common dso_local global i32 0, align 4
@VIDEO_RANGE_PARTIAL = common dso_local global i32 0, align 4
@VIDEO_CS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*, i32*, i32*, i32*)* @vlcs_video_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlcs_video_format(i8** %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vlc_source*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.vlc_source*
  store %struct.vlc_source* %22, %struct.vlc_source** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @convert_vlc_video_format(i8* %23, i32* %16)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %26 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @libvlc_video_get_size_(i32 %27, i32 0, i32* %17, i32* %18)
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %6
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %17, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %31, %6
  %40 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %41 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %62, label %46

46:                                               ; preds = %39
  %47 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %48 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %46
  %55 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %56 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %108

62:                                               ; preds = %54, %46, %39
  %63 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %64 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %63, i32 0, i32 0
  %65 = call i32 @obs_source_frame_free(%struct.TYPE_3__* %64)
  %66 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %67 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %66, i32 0, i32 0
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @obs_source_frame_init(%struct.TYPE_3__* %67, i32 %68, i32 %70, i32 %72)
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %76 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %80 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 4
  %82 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %83 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %62
  %88 = load i32, i32* @VIDEO_RANGE_FULL, align 4
  br label %91

89:                                               ; preds = %62
  %90 = load i32, i32* @VIDEO_RANGE_PARTIAL, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* @VIDEO_CS_DEFAULT, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %96 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %100 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %104 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @video_format_get_parameters(i32 %93, i32 %94, i32 %98, i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %91, %54
  br label %109

109:                                              ; preds = %118, %108
  %110 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %111 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 5
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %19, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %109
  %119 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %120 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %19, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i32*, i32** %11, align 8
  %128 = load i64, i64* %19, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 %126, i32* %129, align 4
  %130 = load %struct.vlc_source*, %struct.vlc_source** %13, align 8
  %131 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %19, align 8
  %137 = call i32 @get_format_lines(i32 %133, i32 %135, i64 %136)
  %138 = load i32*, i32** %12, align 8
  %139 = load i64, i64* %19, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 %137, i32* %140, align 4
  %141 = load i64, i64* %19, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %19, align 8
  br label %109

143:                                              ; preds = %109
  ret i32 1
}

declare dso_local i32 @convert_vlc_video_format(i8*, i32*) #1

declare dso_local i32 @libvlc_video_get_size_(i32, i32, i32*, i32*) #1

declare dso_local i32 @obs_source_frame_free(%struct.TYPE_3__*) #1

declare dso_local i32 @obs_source_frame_init(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @video_format_get_parameters(i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_format_lines(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
