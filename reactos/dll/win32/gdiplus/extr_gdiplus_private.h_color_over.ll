; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_gdiplus_private.h_color_over.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_gdiplus_private.h_color_over.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @color_over to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_over(i32 %0, i32 %1) #0 {
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
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %3, align 4
  br label %87

19:                                               ; preds = %2
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %3, align 4
  br label %87

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 255, %28
  %30 = mul nsw i32 %27, %29
  %31 = sdiv i32 %30, 255
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 255
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %43, %47
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %55, %60
  %62 = load i32, i32* %9, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %68, %73
  %75 = load i32, i32* %9, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 24
  %79 = load i32, i32* %8, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %78, %80
  %82 = load i32, i32* %7, align 4
  %83 = shl i32 %82, 8
  %84 = or i32 %81, %83
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %36, %34, %22, %17
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
