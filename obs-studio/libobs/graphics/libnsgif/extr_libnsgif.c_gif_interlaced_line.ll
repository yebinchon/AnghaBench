; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/libnsgif/extr_libnsgif.c_gif_interlaced_line.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/libnsgif/extr_libnsgif.c_gif_interlaced_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gif_interlaced_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_interlaced_line(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 3
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 3
  store i32 %12, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 7
  %16 = ashr i32 %15, 3
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 3
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 3
  %27 = add nsw i32 %26, 4
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 3
  %31 = ashr i32 %30, 3
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, 2
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 2
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 2
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %3, align 4
  br label %52

43:                                               ; preds = %28
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  %46 = ashr i32 %45, 2
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 %49, 1
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %43, %39, %24, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
