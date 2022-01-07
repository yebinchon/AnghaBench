; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-ffmpeg.c_gs_create_texture_file_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-ffmpeg.c_gs_create_texture_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_image = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gs_create_texture_file_data(i8* %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ffmpeg_image, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32* null, i32** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @ffmpeg_image_init(%struct.ffmpeg_image* %9, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %9, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %9, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %16, %18
  %20 = mul nsw i32 %19, 4
  %21 = call i32* @bmalloc(i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 4
  %26 = call i64 @ffmpeg_image_decode(%struct.ffmpeg_image* %9, i32* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %9, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @convert_format(i32 %30)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %8, align 8
  store i64 %39, i64* %40, align 8
  br label %44

41:                                               ; preds = %14
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @bfree(i32* %42)
  store i32* null, i32** %10, align 8
  br label %44

44:                                               ; preds = %41, %28
  %45 = call i32 @ffmpeg_image_free(%struct.ffmpeg_image* %9)
  br label %46

46:                                               ; preds = %44, %4
  %47 = load i32*, i32** %10, align 8
  ret i32* %47
}

declare dso_local i64 @ffmpeg_image_init(%struct.ffmpeg_image*, i8*) #1

declare dso_local i32* @bmalloc(i32) #1

declare dso_local i64 @ffmpeg_image_decode(%struct.ffmpeg_image*, i32*, i32) #1

declare dso_local i32 @convert_format(i32) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i32 @ffmpeg_image_free(%struct.ffmpeg_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
