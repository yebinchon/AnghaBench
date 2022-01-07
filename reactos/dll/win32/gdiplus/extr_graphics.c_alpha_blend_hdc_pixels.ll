; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_alpha_blend_hdc_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_alpha_blend_hdc_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@TECHNOLOGY = common dso_local global i32 0, align 4
@DT_RASPRINTER = common dso_local global i64 0, align 8
@SHADEBLENDCAPS = common dso_local global i32 0, align 4
@SB_NONE = common dso_local global i64 0, align 8
@PixelFormatPAlpha = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32*, i32, i32, i32, i32)* @alpha_blend_hdc_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_blend_hdc_pixels(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %21, i32* %17, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 72, i32* %22, align 8
  %23 = load i32, i32* %13, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %14, align 4
  %26 = sub nsw i32 0, %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store i32 32, i32* %29, align 8
  %30 = load i32, i32* @BI_RGB, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 10
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 8
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %17, align 4
  %38 = bitcast %struct.TYPE_6__* %19 to i32*
  %39 = load i32, i32* @DIB_RGB_COLORS, align 4
  %40 = bitcast i32** %20 to i8**
  %41 = call i32 @CreateDIBSection(i32 %37, i32* %38, i32 %39, i8** %40, i32* null, i32 0)
  store i32 %41, i32* %18, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TECHNOLOGY, align 4
  %46 = call i64 @GetDeviceCaps(i32 %44, i32 %45)
  %47 = load i64, i64* @DT_RASPRINTER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SHADEBLENDCAPS, align 4
  %54 = call i64 @GetDeviceCaps(i32 %52, i32 %53)
  %55 = load i64, i64* @SB_NONE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %49, %8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @PixelFormatPAlpha, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57, %49
  %63 = load i32*, i32** %20, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 4
  %69 = call i32 @memcpy(i32* %63, i32* %64, i32 %68)
  br label %79

70:                                               ; preds = %57
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* %13, align 4
  %75 = mul nsw i32 4, %74
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @convert_32bppARGB_to_32bppPARGB(i32 %71, i32 %72, i32* %73, i32 %75, i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %62
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @SelectObject(i32 %80, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @gdi_alpha_blend(%struct.TYPE_5__* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 0, i32 0, i32 %89, i32 %90)
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @DeleteDC(i32 %92)
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @DeleteObject(i32 %94)
  %96 = load i32, i32* @Ok, align 4
  ret i32 %96
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @CreateDIBSection(i32, i32*, i32, i8**, i32*, i32) #1

declare dso_local i64 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @convert_32bppARGB_to_32bppPARGB(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @gdi_alpha_blend(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
