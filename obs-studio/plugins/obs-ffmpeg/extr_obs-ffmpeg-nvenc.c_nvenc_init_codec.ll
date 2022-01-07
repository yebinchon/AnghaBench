; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-nvenc.c_nvenc_init_codec.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-nvenc.c_nvenc_init_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvenc_encoder = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to open NVENC codec: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate video frame\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to allocate vframe: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvenc_encoder*)* @nvenc_init_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvenc_init_codec(%struct.nvenc_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvenc_encoder*, align 8
  %4 = alloca i32, align 4
  store %struct.nvenc_encoder* %0, %struct.nvenc_encoder** %3, align 8
  %5 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %6 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @avcodec_open2(%struct.TYPE_4__* %7, i32 %10, i32* null)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @av_err2str(i32 %15)
  %17 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %2, align 4
  br label %88

18:                                               ; preds = %1
  %19 = call %struct.TYPE_5__* (...) @av_frame_alloc()
  %20 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %21 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %20, i32 0, i32 1
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %23 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %88

28:                                               ; preds = %18
  %29 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %30 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %35 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 4
  %38 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %39 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %44 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i32 %42, i32* %46, align 4
  %47 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %48 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %53 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %51, i32* %55, align 4
  %56 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %57 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %62 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %66 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %71 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %75 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 (...) @base_get_alignment()
  %78 = call i32 @av_frame_get_buffer(%struct.TYPE_5__* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %28
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @av_err2str(i32 %82)
  %84 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store i32 0, i32* %2, align 4
  br label %88

85:                                               ; preds = %28
  %86 = load %struct.nvenc_encoder*, %struct.nvenc_encoder** %3, align 8
  %87 = getelementptr inbounds %struct.nvenc_encoder, %struct.nvenc_encoder* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %81, %26, %14
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @avcodec_open2(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local %struct.TYPE_5__* @av_frame_alloc(...) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @base_get_alignment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
