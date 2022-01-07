; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_get_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_get_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.gl_video = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @gl_video_get_image(%struct.gl_video* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.gl_video*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.mp_image*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @gl_video_check_format(%struct.gl_video* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.mp_image* null, %struct.mp_image** %6, align 8
  br label %57

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @mp_image_get_alloc_size(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store %struct.mp_image* null, %struct.mp_image** %6, align 8
  br label %57

30:                                               ; preds = %21
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i8* @gl_video_dr_alloc_buffer(%struct.gl_video* %34, i32 %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store %struct.mp_image* null, %struct.mp_image** %6, align 8
  br label %57

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %48 = call %struct.mp_image* @mp_image_from_buffer(i32 %41, i32 %42, i32 %43, i32 %44, i8* %45, i32 %46, %struct.gl_video* %47, i32 (%struct.gl_video*, i8*)* @gl_video_dr_free_buffer)
  store %struct.mp_image* %48, %struct.mp_image** %15, align 8
  %49 = load %struct.mp_image*, %struct.mp_image** %15, align 8
  %50 = icmp ne %struct.mp_image* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %40
  %52 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @gl_video_dr_free_buffer(%struct.gl_video* %52, i8* %53)
  br label %55

55:                                               ; preds = %51, %40
  %56 = load %struct.mp_image*, %struct.mp_image** %15, align 8
  store %struct.mp_image* %56, %struct.mp_image** %6, align 8
  br label %57

57:                                               ; preds = %55, %39, %29, %20
  %58 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  ret %struct.mp_image* %58
}

declare dso_local i32 @gl_video_check_format(%struct.gl_video*, i32) #1

declare dso_local i32 @mp_image_get_alloc_size(i32, i32, i32, i32) #1

declare dso_local i8* @gl_video_dr_alloc_buffer(%struct.gl_video*, i32) #1

declare dso_local %struct.mp_image* @mp_image_from_buffer(i32, i32, i32, i32, i8*, i32, %struct.gl_video*, i32 (%struct.gl_video*, i8*)*) #1

declare dso_local i32 @gl_video_dr_free_buffer(%struct.gl_video*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
