; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_curve.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_vec2i = type { i32, i32 }
%struct.nk_color = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@OPAQUE = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i16, i32)* @nk_gdi_stroke_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_stroke_curve(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i16 zeroext %5, i32 %6) #0 {
  %8 = alloca %struct.nk_vec2i, align 4
  %9 = alloca %struct.nk_vec2i, align 4
  %10 = alloca %struct.nk_vec2i, align 4
  %11 = alloca %struct.nk_vec2i, align 4
  %12 = alloca %struct.nk_color, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca [4 x %struct.TYPE_3__], align 16
  %17 = alloca i32*, align 8
  %18 = bitcast %struct.nk_vec2i* %8 to i64*
  store i64 %1, i64* %18, align 4
  %19 = bitcast %struct.nk_vec2i* %9 to i64*
  store i64 %2, i64* %19, align 4
  %20 = bitcast %struct.nk_vec2i* %10 to i64*
  store i64 %3, i64* %20, align 4
  %21 = bitcast %struct.nk_vec2i* %11 to i64*
  store i64 %4, i64* %21, align 4
  %22 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %12, i32 0, i32 0
  store i32 %6, i32* %22, align 4
  store i32 %0, i32* %13, align 4
  store i16 %5, i16* %14, align 2
  %23 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %12, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @convert_color(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %16, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %34, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %38 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %10, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %41, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %45 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %48, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %52 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %51, align 4
  store i32* null, i32** %17, align 8
  %54 = load i16, i16* %14, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %7
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @SetDCPenColor(i32 %58, i32 %59)
  br label %69

61:                                               ; preds = %7
  %62 = load i32, i32* @PS_SOLID, align 4
  %63 = load i16, i16* %14, align 2
  %64 = load i32, i32* %15, align 4
  %65 = call i32* @CreatePen(i32 %62, i16 zeroext %63, i32 %64)
  store i32* %65, i32** %17, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @SelectObject(i32 %66, i32* %67)
  br label %69

69:                                               ; preds = %61, %57
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @OPAQUE, align 4
  %72 = call i32 @SetDCBrushColor(i32 %70, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %16, i64 0, i64 0
  %75 = call i32 @PolyBezier(i32 %73, %struct.TYPE_3__* %74, i32 4)
  %76 = load i32*, i32** %17, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @DC_PEN, align 4
  %81 = call i32* @GetStockObject(i32 %80)
  %82 = call i32 @SelectObject(i32 %79, i32* %81)
  %83 = load i32*, i32** %17, align 8
  %84 = call i32 @DeleteObject(i32* %83)
  br label %85

85:                                               ; preds = %78, %69
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32* @CreatePen(i32, i16 zeroext, i32) #1

declare dso_local i32 @SelectObject(i32, i32*) #1

declare dso_local i32 @SetDCBrushColor(i32, i32) #1

declare dso_local i32 @PolyBezier(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
