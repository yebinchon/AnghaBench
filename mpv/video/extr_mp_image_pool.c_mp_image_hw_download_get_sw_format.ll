; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_hw_download_get_sw_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_hw_download_get_sw_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }

@AV_HWFRAME_TRANSFER_DIRECTION_FROM = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_image_hw_download_get_sw_format(%struct.mp_image* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  %7 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %8 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %13 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %14 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AV_HWFRAME_TRANSFER_DIRECTION_FROM, align 4
  %17 = call i64 @av_hwframe_transfer_get_formats(i32 %15, i32 %16, i32** %5, i32 0)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %47

20:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pixfmt2imgfmt(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %43

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %21

43:                                               ; preds = %38, %21
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @av_free(i32* %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %19, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @av_hwframe_transfer_get_formats(i32, i32, i32**, i32) #1

declare dso_local i32 @pixfmt2imgfmt(i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
