; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_hsl_to_x.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_hsl_to_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @hsl_to_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsl_to_x(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @min(i32 120, i32 %9)
  %11 = mul nsw i32 256, %10
  %12 = sdiv i32 %11, 120
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 80
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 120
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 80
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, 40
  store i32 %25, i32* %7, align 4
  br label %39

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 200
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  br label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 240, %32
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %36, 40
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %29
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39, %15
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sdiv i32 %42, 2
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sdiv i32 %45, 2
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sdiv i32 %49, 240
  %51 = add nsw i32 %46, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 120
  br i1 %53, label %54, label %66

54:                                               ; preds = %40
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 120
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 256, %60
  %62 = mul nsw i32 %59, %61
  %63 = sdiv i32 %62, 120
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %57, %54, %40
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @min(i32 %67, i32 255)
  ret i32 %68
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
