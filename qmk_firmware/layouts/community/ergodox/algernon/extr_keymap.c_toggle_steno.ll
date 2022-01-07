; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_toggle_steno.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_toggle_steno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@PLVR = common dso_local global i64 0, align 8
@PV_LP = common dso_local global i32 0, align 4
@PV_LH = common dso_local global i32 0, align 4
@PV_LR = common dso_local global i32 0, align 4
@PV_O = common dso_local global i32 0, align 4
@PV_RL = common dso_local global i32 0, align 4
@PV_RG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @toggle_steno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_steno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @layer_state, align 4
  %5 = call i64 @biton32(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @PLVR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i64, i64* @PLVR, align 8
  %14 = call i32 @layer_on(i64 %13)
  br label %18

15:                                               ; preds = %8
  %16 = load i64, i64* @PLVR, align 8
  %17 = call i32 @layer_off(i64 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @PV_LP, align 4
  %20 = call i32 @register_code(i32 %19)
  %21 = load i32, i32* @PV_LH, align 4
  %22 = call i32 @register_code(i32 %21)
  %23 = load i32, i32* @PV_LR, align 4
  %24 = call i32 @register_code(i32 %23)
  %25 = load i32, i32* @PV_O, align 4
  %26 = call i32 @register_code(i32 %25)
  %27 = load i32, i32* @PV_RL, align 4
  %28 = call i32 @register_code(i32 %27)
  %29 = load i32, i32* @PV_RG, align 4
  %30 = call i32 @register_code(i32 %29)
  br label %44

31:                                               ; preds = %1
  %32 = load i32, i32* @PV_LP, align 4
  %33 = call i32 @unregister_code(i32 %32)
  %34 = load i32, i32* @PV_LH, align 4
  %35 = call i32 @unregister_code(i32 %34)
  %36 = load i32, i32* @PV_LR, align 4
  %37 = call i32 @unregister_code(i32 %36)
  %38 = load i32, i32* @PV_O, align 4
  %39 = call i32 @unregister_code(i32 %38)
  %40 = load i32, i32* @PV_RL, align 4
  %41 = call i32 @unregister_code(i32 %40)
  %42 = load i32, i32* @PV_RG, align 4
  %43 = call i32 @unregister_code(i32 %42)
  br label %44

44:                                               ; preds = %31, %18
  ret void
}

declare dso_local i64 @biton32(i32) #1

declare dso_local i32 @layer_on(i64) #1

declare dso_local i32 @layer_off(i64) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
