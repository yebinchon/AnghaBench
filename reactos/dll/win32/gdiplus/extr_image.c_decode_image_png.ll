; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_decode_image_png.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_decode_image_png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@GUID_ContainerFormatPng = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@GUID_WICPixelFormat8bppGray = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GUID_WICPixelFormat8bppIndexed = common dso_local global i32 0, align 4
@GUID_WICPixelFormat4bppIndexed = common dso_local global i32 0, align 4
@GUID_WICPixelFormat2bppIndexed = common dso_local global i32 0, align 4
@GUID_WICPixelFormat1bppIndexed = common dso_local global i32 0, align 4
@GUID_WICPixelFormat24bppBGR = common dso_local global i32 0, align 4
@png_metadata_reader = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**)* @decode_image_png to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_image_png(i32* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @initialize_decoder_wic(i32* %13, i32* @GUID_ContainerFormatPng, i32** %6)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @Ok, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %3, align 8
  br label %78

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @IWICBitmapDecoder_GetFrame(i32* %21, i32 0, i32** %7)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @IWICBitmapFrameDecode_GetPixelFormat(i32* %27, i32* %10)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = call i64 @IsEqualGUID(i32* %10, i32* @GUID_WICPixelFormat8bppGray)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %11, align 4
  br label %59

37:                                               ; preds = %32
  %38 = call i64 @IsEqualGUID(i32* %10, i32* @GUID_WICPixelFormat8bppIndexed)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = call i64 @IsEqualGUID(i32* %10, i32* @GUID_WICPixelFormat4bppIndexed)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = call i64 @IsEqualGUID(i32* %10, i32* @GUID_WICPixelFormat2bppIndexed)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = call i64 @IsEqualGUID(i32* %10, i32* @GUID_WICPixelFormat1bppIndexed)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = call i64 @IsEqualGUID(i32* %10, i32* @GUID_WICPixelFormat24bppBGR)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49, %46, %43, %40, %37
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @has_png_transparency_chunk(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %52, %49
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @png_metadata_reader, align 4
  %63 = load i32**, i32*** %5, align 8
  %64 = call i64 @decode_frame_wic(i32* %60, i32 %61, i32 0, i32 %62, i32** %63)
  store i64 %64, i64* %8, align 8
  br label %68

65:                                               ; preds = %26
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @hresult_to_status(i64 %66)
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @IWICBitmapFrameDecode_Release(i32* %69)
  br label %74

71:                                               ; preds = %20
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @hresult_to_status(i64 %72)
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @IWICBitmapDecoder_Release(i32* %75)
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %74, %18
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i64 @initialize_decoder_wic(i32*, i32*, i32**) #1

declare dso_local i64 @IWICBitmapDecoder_GetFrame(i32*, i32, i32**) #1

declare dso_local i64 @IWICBitmapFrameDecode_GetPixelFormat(i32*, i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @has_png_transparency_chunk(i32*) #1

declare dso_local i64 @decode_frame_wic(i32*, i32, i32, i32, i32**) #1

declare dso_local i64 @hresult_to_status(i64) #1

declare dso_local i32 @IWICBitmapFrameDecode_Release(i32*) #1

declare dso_local i32 @IWICBitmapDecoder_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
