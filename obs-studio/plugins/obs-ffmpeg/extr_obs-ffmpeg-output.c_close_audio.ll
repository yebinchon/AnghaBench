; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_close_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_close_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_data = type { i32, i64*, %struct.TYPE_2__**, i64**, i32** }
%struct.TYPE_2__ = type { i32 }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_data*)* @close_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_audio(%struct.ffmpeg_data* %0) #0 {
  %2 = alloca %struct.ffmpeg_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ffmpeg_data* %0, %struct.ffmpeg_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %89, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %8 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %92

11:                                               ; preds = %5
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @MAX_AV_PLANES, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %18 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %17, i32 0, i32 4
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @circlebuf_free(i32* %25)
  br label %27

27:                                               ; preds = %16
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %32 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %31, i32 0, i32 3
  %33 = load i64**, i64*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64*, i64** %33, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %43 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %42, i32 0, i32 3
  %44 = load i64**, i64*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %44, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = call i32 @av_freep(i64* %49)
  br label %51

51:                                               ; preds = %41, %30
  %52 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %53 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = icmp ne %struct.TYPE_2__* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %62 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @avcodec_close(i32 %69)
  br label %71

71:                                               ; preds = %60, %51
  %72 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %73 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %82 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = call i32 @av_frame_free(i64* %86)
  br label %88

88:                                               ; preds = %80, %71
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %5

92:                                               ; preds = %5
  ret void
}

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @av_freep(i64*) #1

declare dso_local i32 @avcodec_close(i32) #1

declare dso_local i32 @av_frame_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
