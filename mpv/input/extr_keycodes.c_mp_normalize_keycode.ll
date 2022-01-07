; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_keycodes.c_mp_normalize_keycode.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_keycodes.c_mp_normalize_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_KEY_MODIFIER_MASK = common dso_local global i32 0, align 4
@MP_KEY_BASE = common dso_local global i32 0, align 4
@MP_KEY_MODIFIER_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_normalize_keycode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MP_KEY_MODIFIER_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MP_KEY_MODIFIER_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 32
  br i1 %19, label %20, label %43

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MP_KEY_BASE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 97
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 122
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MP_KEY_MODIFIER_SHIFT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 95
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %30, %27, %24
  %39 = load i32, i32* @MP_KEY_MODIFIER_SHIFT, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %20, %10
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %8
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
