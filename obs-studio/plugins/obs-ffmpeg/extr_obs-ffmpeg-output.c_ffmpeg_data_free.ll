; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_data_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_data = type { i64, %struct.TYPE_5__*, i32*, i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AVFMT_NOFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_data*)* @ffmpeg_data_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_data_free(%struct.ffmpeg_data* %0) #0 {
  %2 = alloca %struct.ffmpeg_data*, align 8
  store %struct.ffmpeg_data* %0, %struct.ffmpeg_data** %2, align 8
  %3 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %4 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %9 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i32 @av_write_trailer(%struct.TYPE_5__* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %14 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %19 = call i32 @close_video(%struct.ffmpeg_data* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %22 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %27 = call i32 @close_audio(%struct.ffmpeg_data* %26)
  %28 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %29 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @free(i32* %30)
  %32 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %33 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %25, %20
  %35 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %36 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %41 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AVFMT_NOFILE, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %52 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @avio_close(i32 %55)
  br label %57

57:                                               ; preds = %50, %39
  %58 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %59 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @avformat_free_context(%struct.TYPE_5__* %60)
  br label %62

62:                                               ; preds = %57, %34
  %63 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %64 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %69 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @bfree(i64 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %74 = call i32 @memset(%struct.ffmpeg_data* %73, i32 0, i32 40)
  ret void
}

declare dso_local i32 @av_write_trailer(%struct.TYPE_5__*) #1

declare dso_local i32 @close_video(%struct.ffmpeg_data*) #1

declare dso_local i32 @close_audio(%struct.ffmpeg_data*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @avio_close(i32) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_5__*) #1

declare dso_local i32 @bfree(i64) #1

declare dso_local i32 @memset(%struct.ffmpeg_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
