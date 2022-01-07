; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/orion/v3/extr_v3.c_backlight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/orion/v3/extr_v3.c_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BACKLIGHT_ALPHAS = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@BACKLIGHT_MODNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %36 [
    i32 0, label %4
    i32 1, label %11
    i32 2, label %19
    i32 3, label %27
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @BACKLIGHT_ALPHAS, align 4
  %6 = load i32, i32* @PORTB, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* @PORTB, align 4
  %8 = load i32, i32* @BACKLIGHT_MODNUM, align 4
  %9 = load i32, i32* @PORTB, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @PORTB, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* @BACKLIGHT_ALPHAS, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @PORTB, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @PORTB, align 4
  %16 = load i32, i32* @BACKLIGHT_MODNUM, align 4
  %17 = load i32, i32* @PORTB, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* @PORTB, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* @BACKLIGHT_ALPHAS, align 4
  %21 = load i32, i32* @PORTB, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @PORTB, align 4
  %23 = load i32, i32* @BACKLIGHT_MODNUM, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @PORTB, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @PORTB, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @BACKLIGHT_ALPHAS, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @PORTB, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* @PORTB, align 4
  %32 = load i32, i32* @BACKLIGHT_MODNUM, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @PORTB, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* @PORTB, align 4
  br label %36

36:                                               ; preds = %1, %27, %19, %11, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
