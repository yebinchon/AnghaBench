; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/palm_usb/extr_matrix.c_handspring_reset.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/palm_usb/extr_matrix.c_handspring_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VCC_PIN = common dso_local global i32 0, align 4
@PinLevelLow = common dso_local global i32 0, align 4
@PinLevelHigh = common dso_local global i32 0, align 4
@last_activity = common dso_local global i32 0, align 4
@disconnect_counter = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"-HSreset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handspring_reset() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @VCC_PIN, align 4
  %3 = load i32, i32* @PinLevelLow, align 4
  %4 = call i32 @digitalWrite(i32 %2, i32 %3)
  %5 = call i32 @_delay_ms(i32 5)
  %6 = load i32, i32* @VCC_PIN, align 4
  %7 = load i32, i32* @PinLevelHigh, align 4
  %8 = call i32 @digitalWrite(i32 %6, i32 %7)
  %9 = call i64 (...) @handspring_handshake()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (...) @timer_read()
  store i32 %12, i32* @last_activity, align 4
  store i64 0, i64* @disconnect_counter, align 8
  store i32 1, i32* %1, align 4
  br label %15

13:                                               ; preds = %0
  %14 = call i32 @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @digitalWrite(i32, i32) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i64 @handspring_handshake(...) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
