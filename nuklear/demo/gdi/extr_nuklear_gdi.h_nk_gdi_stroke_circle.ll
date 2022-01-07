; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_circle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@OPAQUE = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i16, i16, i16, i16, i32)* @nk_gdi_stroke_circle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_stroke_circle(i32 %0, i16 signext %1, i16 signext %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i32 %6) #0 {
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %6, i32* %17, align 4
  store i32 %0, i32* %9, align 4
  store i16 %1, i16* %10, align 2
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i16 %5, i16* %14, align 2
  %18 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @convert_color(i32 %19)
  store i32 %20, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %21 = load i16, i16* %14, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %7
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @SetDCPenColor(i32 %25, i32 %26)
  br label %36

28:                                               ; preds = %7
  %29 = load i32, i32* @PS_SOLID, align 4
  %30 = load i16, i16* %14, align 2
  %31 = load i32, i32* %15, align 4
  %32 = call i32* @CreatePen(i32 %29, i16 zeroext %30, i32 %31)
  store i32* %32, i32** %16, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %16, align 8
  %35 = call i32 @SelectObject(i32 %33, i32* %34)
  br label %36

36:                                               ; preds = %28, %24
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @OPAQUE, align 4
  %39 = call i32 @SetDCBrushColor(i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i16, i16* %10, align 2
  %42 = load i16, i16* %11, align 2
  %43 = load i16, i16* %10, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* %12, align 2
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %44, %46
  %48 = trunc i32 %47 to i16
  %49 = load i16, i16* %11, align 2
  %50 = sext i16 %49 to i32
  %51 = load i16, i16* %13, align 2
  %52 = zext i16 %51 to i32
  %53 = add nsw i32 %50, %52
  %54 = trunc i32 %53 to i16
  %55 = call i32 @Ellipse(i32 %40, i16 signext %41, i16 signext %42, i16 signext %48, i16 signext %54)
  %56 = load i32*, i32** %16, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %36
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @DC_PEN, align 4
  %61 = call i32* @GetStockObject(i32 %60)
  %62 = call i32 @SelectObject(i32 %59, i32* %61)
  %63 = load i32*, i32** %16, align 8
  %64 = call i32 @DeleteObject(i32* %63)
  br label %65

65:                                               ; preds = %58, %36
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32* @CreatePen(i32, i16 zeroext, i32) #1

declare dso_local i32 @SelectObject(i32, i32*) #1

declare dso_local i32 @SetDCBrushColor(i32, i32) #1

declare dso_local i32 @Ellipse(i32, i16 signext, i16 signext, i16 signext, i16 signext) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
