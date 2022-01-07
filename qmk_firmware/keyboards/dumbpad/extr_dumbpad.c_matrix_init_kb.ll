; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dumbpad/extr_dumbpad.c_matrix_init_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dumbpad/extr_dumbpad.c_matrix_init_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAYER_INDICATOR_LED_0 = common dso_local global i32 0, align 4
@LAYER_INDICATOR_LED_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_kb() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %26, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %29

5:                                                ; preds = %2
  %6 = load i32, i32* @LAYER_INDICATOR_LED_0, align 4
  %7 = call i32 @writePin(i32 %6, i32 1)
  %8 = load i32, i32* @LAYER_INDICATOR_LED_1, align 4
  %9 = call i32 @writePin(i32 %8, i32 0)
  %10 = call i32 @wait_ms(i32 100)
  %11 = load i32, i32* @LAYER_INDICATOR_LED_0, align 4
  %12 = call i32 @writePin(i32 %11, i32 1)
  %13 = load i32, i32* @LAYER_INDICATOR_LED_1, align 4
  %14 = call i32 @writePin(i32 %13, i32 1)
  %15 = call i32 @wait_ms(i32 100)
  %16 = load i32, i32* @LAYER_INDICATOR_LED_0, align 4
  %17 = call i32 @writePin(i32 %16, i32 0)
  %18 = load i32, i32* @LAYER_INDICATOR_LED_1, align 4
  %19 = call i32 @writePin(i32 %18, i32 1)
  %20 = call i32 @wait_ms(i32 100)
  %21 = load i32, i32* @LAYER_INDICATOR_LED_0, align 4
  %22 = call i32 @writePin(i32 %21, i32 0)
  %23 = load i32, i32* @LAYER_INDICATOR_LED_1, align 4
  %24 = call i32 @writePin(i32 %23, i32 0)
  %25 = call i32 @wait_ms(i32 100)
  br label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %2

29:                                               ; preds = %2
  %30 = call i32 (...) @matrix_init_user()
  ret void
}

declare dso_local i32 @writePin(i32, i32) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @matrix_init_user(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
