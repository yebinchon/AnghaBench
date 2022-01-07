; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DC_LED_MATRIX_INIT_BEGIN = common dso_local global i32 0, align 4
@gcr_min_counter = common dso_local global i64 0, align 8
@v_5v_cat_hit = common dso_local global i64 0, align 8
@DC_LED_MATRIX_INIT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init() #0 {
  %1 = load i32, i32* @DC_LED_MATRIX_INIT_BEGIN, align 4
  %2 = call i32 @DBGC(i32 %1)
  %3 = call i32 (...) @issi3733_prepare_arrays()
  %4 = call i32 (...) @led_matrix_prepare()
  store i64 0, i64* @gcr_min_counter, align 8
  store i64 0, i64* @v_5v_cat_hit, align 8
  %5 = load i32, i32* @DC_LED_MATRIX_INIT_COMPLETE, align 4
  %6 = call i32 @DBGC(i32 %5)
  ret void
}

declare dso_local i32 @DBGC(i32) #1

declare dso_local i32 @issi3733_prepare_arrays(...) #1

declare dso_local i32 @led_matrix_prepare(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
