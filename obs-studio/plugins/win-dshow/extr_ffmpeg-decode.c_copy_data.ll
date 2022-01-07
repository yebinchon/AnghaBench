; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-dshow/extr_ffmpeg-decode.c_copy_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-dshow/extr_ffmpeg-decode.c_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_decode = type { i64, i32 }

@INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_decode*, i32*, i64)* @copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_data(%struct.ffmpeg_decode* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ffmpeg_decode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ffmpeg_decode* %0, %struct.ffmpeg_decode** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @INPUT_BUFFER_PADDING_SIZE, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %7, align 8
  %11 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %4, align 8
  %12 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %4, align 8
  %18 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @brealloc(i32 %19, i64 %20)
  %22 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %4, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %4, align 8
  %26 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %4, align 8
  %29 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @INPUT_BUFFER_PADDING_SIZE, align 8
  %36 = call i32 @memset(i32 %34, i32 0, i64 %35)
  %37 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %4, align 8
  %38 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @memcpy(i32 %39, i32* %40, i64 %41)
  ret void
}

declare dso_local i32 @brealloc(i32, i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
