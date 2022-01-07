; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hs60/v1/extr_v1.c_bootmagic_lite.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hs60/v1/extr_v1.c_bootmagic_lite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBOUNCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootmagic_lite() #0 {
  %1 = call i32 (...) @matrix_scan()
  %2 = load i32, i32* @DEBOUNCE, align 4
  %3 = call i32 @wait_ms(i32 %2)
  %4 = call i32 (...) @matrix_scan()
  %5 = call i32 @matrix_get_row(i32 0)
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = call i32 @matrix_get_row(i32 4)
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = call i32 (...) @eeconfig_disable()
  %14 = call i32 (...) @bootloader_jump()
  br label %15

15:                                               ; preds = %12, %8, %0
  ret void
}

declare dso_local i32 @matrix_scan(...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @matrix_get_row(i32) #1

declare dso_local i32 @eeconfig_disable(...) #1

declare dso_local i32 @bootloader_jump(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
