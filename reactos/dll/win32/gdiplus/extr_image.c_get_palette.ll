; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_get_palette.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_get_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@WINCODEC_SDK_VERSION = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@WINCODEC_ERR_PALETTEUNAVAILABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"using predefined palette %#x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PaletteFlagsGrayScale = common dso_local global i32 0, align 4
@PaletteFlagsHalftone = common dso_local global i32 0, align 4
@PaletteFlagsHasAlpha = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32)* @get_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @get_palette(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %13 = load i32, i32* @WINCODEC_SDK_VERSION, align 4
  %14 = call i64 @WICCreateImagingFactory_Proxy(i32 %13, i32** %7)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %98

19:                                               ; preds = %2
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @IWICImagingFactory_CreatePalette(i32* %20, i32** %8)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %19
  %26 = load i64, i64* @WINCODEC_ERR_PALETTEUNAVAILABLE, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @IWICBitmapFrameDecode_CopyPalette(i32* %30, i32* %31)
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i64 @IWICPalette_InitializePredefined(i32* %40, i32 %41, i32 %42)
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %37, %33
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @IWICPalette_GetColorCount(i32* %49, i32* %12)
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 8, %53
  %55 = trunc i64 %54 to i32
  %56 = call %struct.TYPE_4__* @heap_alloc(i32 %55)
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %9, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = call i32 @IWICPalette_GetColors(i32* %57, i32 %58, i32 %61, i32* %63)
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @IWICPalette_GetType(i32* %65, i32* %10)
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %76 [
    i32 135, label %68
    i32 137, label %68
    i32 136, label %68
    i32 128, label %72
    i32 130, label %72
    i32 129, label %72
    i32 134, label %72
    i32 133, label %72
    i32 132, label %72
    i32 131, label %72
  ]

68:                                               ; preds = %48, %48, %48
  %69 = load i32, i32* @PaletteFlagsGrayScale, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %79

72:                                               ; preds = %48, %48, %48, %48, %48, %48, %48
  %73 = load i32, i32* @PaletteFlagsHalftone, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %79

76:                                               ; preds = %48
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %72, %68
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @IWICPalette_HasAlpha(i32* %80, i64* %11)
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @PaletteFlagsHasAlpha, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90, %44
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @IWICPalette_Release(i32* %92)
  br label %94

94:                                               ; preds = %91, %19
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @IWICImagingFactory_Release(i32* %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %97, %struct.TYPE_4__** %3, align 8
  br label %98

98:                                               ; preds = %94, %18
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %99
}

declare dso_local i64 @WICCreateImagingFactory_Proxy(i32, i32**) #1

declare dso_local i64 @IWICImagingFactory_CreatePalette(i32*, i32**) #1

declare dso_local i64 @IWICBitmapFrameDecode_CopyPalette(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @IWICPalette_InitializePredefined(i32*, i32, i32) #1

declare dso_local i32 @IWICPalette_GetColorCount(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @heap_alloc(i32) #1

declare dso_local i32 @IWICPalette_GetColors(i32*, i32, i32, i32*) #1

declare dso_local i32 @IWICPalette_GetType(i32*, i32*) #1

declare dso_local i32 @IWICPalette_HasAlpha(i32*, i64*) #1

declare dso_local i32 @IWICPalette_Release(i32*) #1

declare dso_local i32 @IWICImagingFactory_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
