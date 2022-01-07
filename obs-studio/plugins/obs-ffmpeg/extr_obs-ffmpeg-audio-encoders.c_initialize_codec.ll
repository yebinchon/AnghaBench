; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-audio-encoders.c_initialize_codec.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-audio-encoders.c_initialize_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_encoder = type { i32, i32, %struct.TYPE_3__*, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate audio frame\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to open AAC codec: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to create audio buffer: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enc_encoder*)* @initialize_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_codec(%struct.enc_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enc_encoder*, align 8
  %4 = alloca i32, align 4
  store %struct.enc_encoder* %0, %struct.enc_encoder** %3, align 8
  %5 = call %struct.TYPE_4__* (...) @av_frame_alloc()
  %6 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %6, i32 0, i32 5
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %7, align 8
  %8 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %8, i32 0, i32 5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

14:                                               ; preds = %1
  %15 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @avcodec_open2(%struct.TYPE_3__* %17, i32 %20, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @av_err2str(i32 %25)
  %27 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 0, i32* %2, align 4
  br label %114

28:                                               ; preds = %14
  %29 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %30 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %35 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %34, i32 0, i32 5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 %33, i32* %37, align 4
  %38 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %39 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %44 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %42, i32* %46, align 4
  %47 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %48 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %53 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %52, i32 0, i32 5
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %57 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %62 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %61, i32 0, i32 5
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %66 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %71 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %73 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %28
  %77 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %78 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %77, i32 0, i32 0
  store i32 1024, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %28
  %80 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %81 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %84 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = mul nsw i32 %82, %86
  %88 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %89 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %91 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %94 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %99 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %102 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @av_samples_alloc(i32 %92, i32* null, i32 %97, i32 %100, i32 %105, i32 0)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %79
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @av_err2str(i32 %110)
  %112 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  store i32 0, i32* %2, align 4
  br label %114

113:                                              ; preds = %79
  store i32 1, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %109, %24, %12
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_4__* @av_frame_alloc(...) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @av_samples_alloc(i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
