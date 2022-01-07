; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdLayerMultiply.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdLayerMultiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdAlphaMax = common dso_local global i32 0, align 4
@gdRedMax = common dso_local global i32 0, align 4
@gdGreenMax = common dso_local global i32 0, align 4
@gdBlueMax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdLayerMultiply(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @gdAlphaMax, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @gdTrueColorGetAlpha(i32 %14)
  %16 = sub nsw i32 %13, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @gdAlphaMax, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @gdTrueColorGetAlpha(i32 %18)
  %20 = sub nsw i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @gdRedMax, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @gdRedMax, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @gdTrueColorGetRed(i32 %24)
  %26 = sub nsw i32 %23, %25
  %27 = mul nsw i32 %22, %26
  %28 = load i32, i32* @gdAlphaMax, align 4
  %29 = sdiv i32 %27, %28
  %30 = sub nsw i32 %21, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @gdRedMax, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @gdRedMax, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @gdTrueColorGetRed(i32 %34)
  %36 = sub nsw i32 %33, %35
  %37 = mul nsw i32 %32, %36
  %38 = load i32, i32* @gdAlphaMax, align 4
  %39 = sdiv i32 %37, %38
  %40 = sub nsw i32 %31, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @gdGreenMax, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @gdGreenMax, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @gdTrueColorGetGreen(i32 %44)
  %46 = sub nsw i32 %43, %45
  %47 = mul nsw i32 %42, %46
  %48 = load i32, i32* @gdAlphaMax, align 4
  %49 = sdiv i32 %47, %48
  %50 = sub nsw i32 %41, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @gdGreenMax, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @gdGreenMax, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @gdTrueColorGetGreen(i32 %54)
  %56 = sub nsw i32 %53, %55
  %57 = mul nsw i32 %52, %56
  %58 = load i32, i32* @gdAlphaMax, align 4
  %59 = sdiv i32 %57, %58
  %60 = sub nsw i32 %51, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @gdBlueMax, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @gdBlueMax, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @gdTrueColorGetBlue(i32 %64)
  %66 = sub nsw i32 %63, %65
  %67 = mul nsw i32 %62, %66
  %68 = load i32, i32* @gdAlphaMax, align 4
  %69 = sdiv i32 %67, %68
  %70 = sub nsw i32 %61, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* @gdBlueMax, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @gdBlueMax, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @gdTrueColorGetBlue(i32 %74)
  %76 = sub nsw i32 %73, %75
  %77 = mul nsw i32 %72, %76
  %78 = load i32, i32* @gdAlphaMax, align 4
  %79 = sdiv i32 %77, %78
  %80 = sub nsw i32 %71, %79
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* @gdAlphaMax, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @gdAlphaMax, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* @gdAlphaMax, align 4
  %91 = sdiv i32 %89, %90
  %92 = shl i32 %91, 24
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* @gdRedMax, align 4
  %97 = sdiv i32 %95, %96
  %98 = shl i32 %97, 16
  %99 = add nsw i32 %92, %98
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* @gdGreenMax, align 4
  %104 = sdiv i32 %102, %103
  %105 = shl i32 %104, 8
  %106 = add nsw i32 %99, %105
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* @gdBlueMax, align 4
  %111 = sdiv i32 %109, %110
  %112 = add nsw i32 %106, %111
  ret i32 %112
}

declare dso_local i32 @gdTrueColorGetAlpha(i32) #1

declare dso_local i32 @gdTrueColorGetRed(i32) #1

declare dso_local i32 @gdTrueColorGetGreen(i32) #1

declare dso_local i32 @gdTrueColorGetBlue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
