; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__color_blend.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__color_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdAlphaOpaque = common dso_local global i32 0, align 4
@gdAlphaTransparent = common dso_local global i32 0, align 4
@gdAlphaMax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @_color_blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_color_blend(i32 %0, i32 %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @gdTrueColorGetAlpha(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @gdAlphaOpaque, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %98

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @gdTrueColorGetAlpha(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @gdAlphaTransparent, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %3, align 4
  br label %98

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @gdAlphaTransparent, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %3, align 4
  br label %98

36:                                               ; preds = %30
  %37 = load i32, i32* @gdAlphaTransparent, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @gdAlphaTransparent, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* @gdAlphaMax, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* @gdAlphaMax, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @gdTrueColorGetRed(i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @gdTrueColorGetRed(i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %60, %61
  %63 = add nsw i32 %58, %62
  %64 = load i32, i32* %14, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @gdTrueColorGetGreen(i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @gdTrueColorGetGreen(i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %69, %73
  %75 = load i32, i32* %14, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @gdTrueColorGetBlue(i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @gdTrueColorGetBlue(i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %80, %84
  %86 = load i32, i32* %14, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %8, align 4
  %89 = shl i32 %88, 24
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 %90, 16
  %92 = add nsw i32 %89, %91
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 %93, 8
  %95 = add nsw i32 %92, %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %36, %34, %28, %20
  %99 = load i32, i32* %3, align 4
  ret i32 %99
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
