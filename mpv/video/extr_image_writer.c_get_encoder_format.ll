; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_image_writer.c_get_encoder_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_image_writer.c_get_encoder_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVCodec = type { i32* }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVCodec*, i32, i32)* @get_encoder_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_encoder_format(%struct.AVCodec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.AVCodec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.AVCodec* %0, %struct.AVCodec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.AVCodec*, %struct.AVCodec** %4, align 8
  %12 = getelementptr inbounds %struct.AVCodec, %struct.AVCodec* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %57, %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %17, %14
  %26 = phi i1 [ false, %14 ], [ %24, %17 ]
  br i1 %26, label %27, label %60

27:                                               ; preds = %25
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pixfmt2imgfmt(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %57

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @IMGFMT_RGB_DEPTH(i32 %41)
  %43 = icmp sgt i32 %42, 32
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %57

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @mp_imgfmt_select_best(i32 %49, i32 %50, i32 %51)
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = phi i32 [ %52, %48 ], [ %54, %53 ]
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %44, %36
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %14

60:                                               ; preds = %25
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @pixfmt2imgfmt(i32) #1

declare dso_local i32 @IMGFMT_RGB_DEPTH(i32) #1

declare dso_local i32 @mp_imgfmt_select_best(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
