; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_gdiplus_private.h_color_over_fgpremult.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_gdiplus_private.h_color_over_fgpremult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @color_over_fgpremult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_over_fgpremult(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 24
  %14 = and i32 %13, 255
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 24
  %22 = and i32 %21, 255
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 255, %23
  %25 = mul nsw i32 %22, %24
  %26 = sdiv i32 %25, 255
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 255
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 255
  %36 = mul nsw i32 %35, 255
  %37 = add nsw i32 %33, %36
  %38 = load i32, i32* %9, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = mul nsw i32 %47, 255
  %49 = add nsw i32 %44, %48
  %50 = load i32, i32* %9, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = mul nsw i32 %59, 255
  %61 = add nsw i32 %56, %60
  %62 = load i32, i32* %9, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = shl i32 %64, 24
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %65, %67
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %68, %70
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %19, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
