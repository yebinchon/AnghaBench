; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_get_gif_frame_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_get_gif_frame_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_gif_frame_rect.leftW = internal constant [5 x i8] c"Left\00", align 1
@get_gif_frame_rect.topW = internal constant [4 x i8] c"Top\00", align 1
@GUID_MetadataFormatIMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @get_gif_frame_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gif_frame_rect(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @get_gif_frame_property(i32* %11, i32* @GUID_MetadataFormatIMD, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_gif_frame_rect.leftW, i64 0, i64 0))
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @get_gif_frame_property(i32* %14, i32* @GUID_MetadataFormatIMD, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_gif_frame_rect.topW, i64 0, i64 0))
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @IWICBitmapFrameDecode_GetSize(i32* %17, i32* %18, i32* %19)
  ret i32 %20
}

declare dso_local i32 @get_gif_frame_property(i32*, i32*, i8*) #1

declare dso_local i32 @IWICBitmapFrameDecode_GetSize(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
