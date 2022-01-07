; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-ffmpeg.c_ffmpeg_image_reformat_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-ffmpeg.c_ffmpeg_image_reformat_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_image = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i64* }
%struct.SwsContext = type { i32 }

@AV_PIX_FMT_RGBA = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGRA = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGR0 = common dso_local global i64 0, align 8
@SWS_POINT = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create scale context for '%s'\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"sws_scale failed for '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_image*, %struct.TYPE_3__*, i32*, i32)* @ffmpeg_image_reformat_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_image_reformat_frame(%struct.ffmpeg_image* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ffmpeg_image*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.SwsContext*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ffmpeg_image* %0, %struct.ffmpeg_image** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.SwsContext* null, %struct.SwsContext** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %15 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AV_PIX_FMT_RGBA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %4
  %20 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %21 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AV_PIX_FMT_BGRA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %27 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AV_PIX_FMT_BGR0, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %104

31:                                               ; preds = %25, %19, %4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %32, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  br label %55

49:                                               ; preds = %39
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %49, %47
  %56 = phi i32 [ %48, %47 ], [ %54, %49 ]
  store i32 %56, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %86, %55
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %60 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %75, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %74, %82
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @memcpy(i32* %69, i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %63
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %57

89:                                               ; preds = %57
  br label %103

90:                                               ; preds = %31
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %99 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  %102 = call i32 @memcpy(i32* %91, i64 %96, i32 %101)
  br label %103

103:                                              ; preds = %90, %89
  br label %160

104:                                              ; preds = %25
  %105 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %106 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %109 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %112 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %115 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %118 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* @AV_PIX_FMT_BGRA, align 8
  %121 = load i32, i32* @SWS_POINT, align 4
  %122 = call %struct.SwsContext* @sws_getContext(i32 %107, i32 %110, i64 %113, i32 %116, i32 %119, i64 %120, i32 %121, i32* null, i32* null, i32* null)
  store %struct.SwsContext* %122, %struct.SwsContext** %10, align 8
  %123 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %124 = icmp ne %struct.SwsContext* %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %104
  %126 = load i32, i32* @LOG_WARNING, align 4
  %127 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %128 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, i32, ...) @blog(i32 %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %129)
  store i32 0, i32* %5, align 4
  br label %161

131:                                              ; preds = %104
  %132 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = bitcast i64* %135 to i32**
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %141 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @sws_scale(%struct.SwsContext* %132, i32** %136, i32* %139, i32 0, i32 %142, i32** %8, i32* %9)
  store i32 %143, i32* %11, align 4
  %144 = load %struct.SwsContext*, %struct.SwsContext** %10, align 8
  %145 = call i32 @sws_freeContext(%struct.SwsContext* %144)
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %131
  %149 = load i32, i32* @LOG_WARNING, align 4
  %150 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %151 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @av_err2str(i32 %153)
  %155 = call i32 (i32, i8*, i32, ...) @blog(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %154)
  store i32 0, i32* %5, align 4
  br label %161

156:                                              ; preds = %131
  %157 = load i64, i64* @AV_PIX_FMT_BGRA, align 8
  %158 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %6, align 8
  %159 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %103
  store i32 1, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %148, %125
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local %struct.SwsContext* @sws_getContext(i32, i32, i64, i32, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @blog(i32, i8*, i32, ...) #1

declare dso_local i32 @sws_scale(%struct.SwsContext*, i32**, i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @sws_freeContext(%struct.SwsContext*) #1

declare dso_local i32 @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
