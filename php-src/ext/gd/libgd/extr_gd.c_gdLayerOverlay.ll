; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdLayerOverlay.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdLayerOverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdAlphaMax = common dso_local global i32 0, align 4
@gdRedMax = common dso_local global i32 0, align 4
@gdGreenMax = common dso_local global i32 0, align 4
@gdBlueMax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdLayerOverlay(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @gdAlphaMax, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @gdTrueColorGetAlpha(i32 %8)
  %10 = sub nsw i32 %7, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @gdAlphaMax, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @gdTrueColorGetAlpha(i32 %12)
  %14 = sub nsw i32 %11, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @gdAlphaMax, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* @gdAlphaMax, align 4
  %20 = sdiv i32 %18, %19
  %21 = sub nsw i32 %15, %20
  %22 = shl i32 %21, 24
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @gdTrueColorGetRed(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @gdTrueColorGetRed(i32 %25)
  %27 = load i32, i32* @gdRedMax, align 4
  %28 = call i32 @gdAlphaOverlayColor(i32 %24, i32 %26, i32 %27)
  %29 = shl i32 %28, 16
  %30 = add nsw i32 %22, %29
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @gdTrueColorGetGreen(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @gdTrueColorGetGreen(i32 %33)
  %35 = load i32, i32* @gdGreenMax, align 4
  %36 = call i32 @gdAlphaOverlayColor(i32 %32, i32 %34, i32 %35)
  %37 = shl i32 %36, 8
  %38 = add nsw i32 %30, %37
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @gdTrueColorGetBlue(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @gdTrueColorGetBlue(i32 %41)
  %43 = load i32, i32* @gdBlueMax, align 4
  %44 = call i32 @gdAlphaOverlayColor(i32 %40, i32 %42, i32 %43)
  %45 = add nsw i32 %38, %44
  ret i32 %45
}

declare dso_local i32 @gdTrueColorGetAlpha(i32) #1

declare dso_local i32 @gdAlphaOverlayColor(i32, i32, i32) #1

declare dso_local i32 @gdTrueColorGetRed(i32) #1

declare dso_local i32 @gdTrueColorGetGreen(i32) #1

declare dso_local i32 @gdTrueColorGetBlue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
