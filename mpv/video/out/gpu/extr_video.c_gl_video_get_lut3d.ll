; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_get_lut3d.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_get_lut3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, i32*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.AVBufferRef* }
%struct.AVBufferRef = type { i32 }
%struct.ra_format = type { i32 }
%struct.lut3d = type { i32*, i32 }
%struct.ra_tex_params = type { i32, i32, i32, i32, %struct.ra_format*, i32, i32, i32 }

@RA_CAP_TEX_3D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Disabling color management (no RGBA16 3D textures).\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"after 3d lut creation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_video*, i32, i32)* @gl_video_get_lut3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_video_get_lut3d(%struct.gl_video* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gl_video*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.AVBufferRef*, align 8
  %9 = alloca %struct.ra_format*, align 8
  %10 = alloca %struct.lut3d*, align 8
  %11 = alloca %struct.ra_tex_params, align 8
  %12 = alloca i32, align 4
  store %struct.gl_video* %0, %struct.gl_video** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %14 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %150

18:                                               ; preds = %3
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %8, align 8
  %19 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %20 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %26 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.AVBufferRef*, %struct.AVBufferRef** %29, align 8
  store %struct.AVBufferRef* %30, %struct.AVBufferRef** %8, align 8
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %33 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %38 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.AVBufferRef*, %struct.AVBufferRef** %8, align 8
  %43 = call i32 @gl_lcms_has_changed(i32 %39, i32 %40, i32 %41, %struct.AVBufferRef* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %150

46:                                               ; preds = %36, %31
  %47 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %48 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call %struct.ra_format* @ra_find_unorm_format(%struct.TYPE_8__* %49, i32 2, i32 4)
  store %struct.ra_format* %50, %struct.ra_format** %9, align 8
  %51 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  %52 = icmp ne %struct.ra_format* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %55 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RA_CAP_TEX_3D, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %53, %46
  %63 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %64 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %66 = call i32 @MP_WARN(%struct.gl_video* %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %150

67:                                               ; preds = %53
  store %struct.lut3d* null, %struct.lut3d** %10, align 8
  %68 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  %69 = icmp ne %struct.ra_format* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %72 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.AVBufferRef*, %struct.AVBufferRef** %8, align 8
  %77 = call i32 @gl_lcms_get_lut3d(i32 %73, %struct.lut3d** %10, i32 %74, i32 %75, %struct.AVBufferRef* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.lut3d*, %struct.lut3d** %10, align 8
  %81 = icmp ne %struct.lut3d* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79, %70, %67
  %83 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %84 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  store i32 0, i32* %4, align 4
  br label %150

85:                                               ; preds = %79
  %86 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %87 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %90 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %89, i32 0, i32 3
  %91 = call i32 @ra_tex_free(%struct.TYPE_8__* %88, i32* %90)
  %92 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 0
  store i32 3, i32* %92, align 8
  %93 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 3
  %96 = load %struct.lut3d*, %struct.lut3d** %10, align 8
  %97 = getelementptr inbounds %struct.lut3d, %struct.lut3d* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %95, align 4
  %99 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 4
  %100 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  store %struct.ra_format* %100, %struct.ra_format** %99, align 8
  %101 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 5
  %102 = load %struct.lut3d*, %struct.lut3d** %10, align 8
  %103 = getelementptr inbounds %struct.lut3d, %struct.lut3d* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %101, align 8
  %107 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 6
  %108 = load %struct.lut3d*, %struct.lut3d** %10, align 8
  %109 = getelementptr inbounds %struct.lut3d, %struct.lut3d* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %107, align 4
  %113 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 7
  %114 = load %struct.lut3d*, %struct.lut3d** %10, align 8
  %115 = getelementptr inbounds %struct.lut3d, %struct.lut3d* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %113, align 8
  %119 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %120 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = call i32 @ra_tex_create(%struct.TYPE_8__* %121, %struct.ra_tex_params* %11)
  %123 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %124 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 8
  %125 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %126 = call i32 @debug_check_gl(%struct.gl_video* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %144, %85
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 3
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load %struct.lut3d*, %struct.lut3d** %10, align 8
  %132 = getelementptr inbounds %struct.lut3d, %struct.lut3d* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %139 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  br label %144

144:                                              ; preds = %130
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %127

147:                                              ; preds = %127
  %148 = load %struct.lut3d*, %struct.lut3d** %10, align 8
  %149 = call i32 @talloc_free(%struct.lut3d* %148)
  store i32 1, i32* %4, align 4
  br label %150

150:                                              ; preds = %147, %82, %62, %45, %17
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @gl_lcms_has_changed(i32, i32, i32, %struct.AVBufferRef*) #1

declare dso_local %struct.ra_format* @ra_find_unorm_format(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @MP_WARN(%struct.gl_video*, i8*) #1

declare dso_local i32 @gl_lcms_get_lut3d(i32, %struct.lut3d**, i32, i32, %struct.AVBufferRef*) #1

declare dso_local i32 @ra_tex_free(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ra_tex_create(%struct.TYPE_8__*, %struct.ra_tex_params*) #1

declare dso_local i32 @debug_check_gl(%struct.gl_video*, i8*) #1

declare dso_local i32 @talloc_free(%struct.lut3d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
