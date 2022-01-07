; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_blend_colors_premult.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_blend_colors_premult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, float)* @blend_colors_premult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blend_colors_premult(i32 %0, i32 %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %8 = load float, float* %6, align 4
  %9 = fmul float %8, 2.550000e+02
  %10 = fadd float %9, 5.000000e-01
  %11 = fptosi float %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 24
  %14 = shl i32 %13, 8
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 24
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 24
  %19 = sub nsw i32 %16, %18
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %14, %21
  %23 = ashr i32 %22, 8
  %24 = shl i32 %23, 24
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = shl i32 %27, 8
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = sub nsw i32 %31, %34
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %28, %37
  %39 = ashr i32 %38, 8
  %40 = shl i32 %39, 16
  %41 = or i32 %24, %40
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = shl i32 %44, 8
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = sub nsw i32 %48, %51
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %45, %54
  %56 = ashr i32 %55, 8
  %57 = shl i32 %56, 8
  %58 = or i32 %41, %57
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 255
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 255
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 255
  %66 = sub nsw i32 %63, %65
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %61, %68
  %70 = ashr i32 %69, 8
  %71 = or i32 %58, %70
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
