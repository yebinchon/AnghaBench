; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_blend_colors.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_blend_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, float)* @blend_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blend_colors(i32 %0, i32 %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  %12 = load float, float* %7, align 4
  %13 = fmul float %12, 2.550000e+02
  %14 = fadd float %13, 5.000000e-01
  %15 = fptosi float %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 24
  %18 = and i32 %17, 255
  %19 = load i32, i32* %11, align 4
  %20 = xor i32 %19, 255
  %21 = mul nsw i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 24
  %24 = and i32 %23, 255
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = sdiv i32 %34, 255
  %36 = shl i32 %35, 24
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %41, %46
  %48 = load i32, i32* %10, align 4
  %49 = sdiv i32 %47, %48
  %50 = shl i32 %49, 16
  %51 = or i32 %36, %50
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %56, %61
  %63 = load i32, i32* %10, align 4
  %64 = sdiv i32 %62, %63
  %65 = shl i32 %64, 8
  %66 = or i32 %51, %65
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 255
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 255
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %70, %74
  %76 = load i32, i32* %10, align 4
  %77 = sdiv i32 %75, %76
  %78 = or i32 %66, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %33, %32
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
