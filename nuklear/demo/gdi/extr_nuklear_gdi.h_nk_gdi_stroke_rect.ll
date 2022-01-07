; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_rect.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@NULL_BRUSH = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i16, i16, i16, i16, i16, i32)* @nk_gdi_stroke_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_stroke_rect(i32 %0, i16 signext %1, i16 signext %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i16 zeroext %6, i32 %7) #0 {
  %9 = alloca %struct.nk_color, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  store i32 %7, i32* %20, align 4
  store i32 %0, i32* %10, align 4
  store i16 %1, i16* %11, align 2
  store i16 %2, i16* %12, align 2
  store i16 %3, i16* %13, align 2
  store i16 %4, i16* %14, align 2
  store i16 %5, i16* %15, align 2
  store i16 %6, i16* %16, align 2
  %21 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @convert_color(i32 %22)
  store i32 %23, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %24 = load i16, i16* %16, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %17, align 4
  %30 = call i32 @SetDCPenColor(i32 %28, i32 %29)
  br label %39

31:                                               ; preds = %8
  %32 = load i32, i32* @PS_SOLID, align 4
  %33 = load i16, i16* %16, align 2
  %34 = load i32, i32* %17, align 4
  %35 = call i32* @CreatePen(i32 %32, i16 zeroext %33, i32 %34)
  store i32* %35, i32** %18, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %18, align 8
  %38 = call i32* @SelectObject(i32 %36, i32* %37)
  br label %39

39:                                               ; preds = %31, %27
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @NULL_BRUSH, align 4
  %42 = call i32* @GetStockObject(i32 %41)
  %43 = call i32* @SelectObject(i32 %40, i32* %42)
  store i32* %43, i32** %19, align 8
  %44 = load i16, i16* %15, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i16, i16* %11, align 2
  %50 = load i16, i16* %12, align 2
  %51 = load i16, i16* %11, align 2
  %52 = sext i16 %51 to i32
  %53 = load i16, i16* %13, align 2
  %54 = zext i16 %53 to i32
  %55 = add nsw i32 %52, %54
  %56 = trunc i32 %55 to i16
  %57 = load i16, i16* %12, align 2
  %58 = sext i16 %57 to i32
  %59 = load i16, i16* %14, align 2
  %60 = zext i16 %59 to i32
  %61 = add nsw i32 %58, %60
  %62 = trunc i32 %61 to i16
  %63 = call i32 @Rectangle(i32 %48, i16 signext %49, i16 signext %50, i16 signext %56, i16 signext %62)
  br label %83

64:                                               ; preds = %39
  %65 = load i32, i32* %10, align 4
  %66 = load i16, i16* %11, align 2
  %67 = load i16, i16* %12, align 2
  %68 = load i16, i16* %11, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16, i16* %13, align 2
  %71 = zext i16 %70 to i32
  %72 = add nsw i32 %69, %71
  %73 = trunc i32 %72 to i16
  %74 = load i16, i16* %12, align 2
  %75 = sext i16 %74 to i32
  %76 = load i16, i16* %14, align 2
  %77 = zext i16 %76 to i32
  %78 = add nsw i32 %75, %77
  %79 = trunc i32 %78 to i16
  %80 = load i16, i16* %15, align 2
  %81 = load i16, i16* %15, align 2
  %82 = call i32 @RoundRect(i32 %65, i16 signext %66, i16 signext %67, i16 signext %73, i16 signext %79, i16 zeroext %80, i16 zeroext %81)
  br label %83

83:                                               ; preds = %64, %47
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %19, align 8
  %86 = call i32* @SelectObject(i32 %84, i32* %85)
  %87 = load i32*, i32** %18, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @DC_PEN, align 4
  %92 = call i32* @GetStockObject(i32 %91)
  %93 = call i32* @SelectObject(i32 %90, i32* %92)
  %94 = load i32*, i32** %18, align 8
  %95 = call i32 @DeleteObject(i32* %94)
  br label %96

96:                                               ; preds = %89, %83
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32* @CreatePen(i32, i16 zeroext, i32) #1

declare dso_local i32* @SelectObject(i32, i32*) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @Rectangle(i32, i16 signext, i16 signext, i16 signext, i16 signext) #1

declare dso_local i32 @RoundRect(i32, i16 signext, i16 signext, i16 signext, i16 signext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
