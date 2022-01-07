; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/nano/keymaps/drashna/extr_keymap.c_axisCoordinate.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/nano/keymaps/drashna/extr_keymap.c_axisCoordinate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@minAxisValue = common dso_local global i64 0, align 8
@maxAxisValue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @axisCoordinate(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @analogRead(i32 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %61

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @minAxisValue, align 8
  %28 = sub nsw i64 %26, %27
  store i64 %28, i64* %8, align 8
  store i32 -1, i32* %6, align 4
  br label %36

29:                                               ; preds = %18
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = sub nsw i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* @maxAxisValue, align 8
  %34 = load i64, i64* %5, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %8, align 8
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = sitofp i64 %38 to float
  %40 = load i64, i64* %8, align 8
  %41 = sitofp i64 %40 to float
  %42 = fdiv float %39, %41
  store float %42, float* %10, align 4
  %43 = load float, float* %10, align 4
  %44 = fmul float %43, 1.000000e+02
  %45 = fptosi float %44 to i64
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i64 0, i64* %3, align 8
  br label %61

49:                                               ; preds = %37
  %50 = load i64, i64* %11, align 8
  %51 = icmp sgt i64 %50, 100
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 100, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %3, align 8
  br label %61

56:                                               ; preds = %49
  %57 = load i64, i64* %11, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %57, %59
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %56, %52, %48, %17
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local i64 @analogRead(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
