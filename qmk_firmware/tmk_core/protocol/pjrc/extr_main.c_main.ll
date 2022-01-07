; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sendchar = common dso_local global i32 0, align 4
@suspend = common dso_local global i64 0, align 8
@remote_wakeup = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @CPU_PRESCALE(i32 0)
  %3 = call i32 (...) @keyboard_setup()
  %4 = call i32 (...) @usb_init()
  br label %5

5:                                                ; preds = %9, %0
  %6 = call i32 (...) @usb_configured()
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %5

10:                                               ; preds = %5
  %11 = load i32, i32* @sendchar, align 4
  %12 = call i32 @print_set_sendchar(i32 %11)
  %13 = call i32 (...) @keyboard_init()
  %14 = call i32 (...) @pjrc_driver()
  %15 = call i32 @host_set_driver(i32 %14)
  br label %16

16:                                               ; preds = %10, %30
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i64, i64* @suspend, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = call i32 (...) @suspend_power_down()
  %22 = load i64, i64* @remote_wakeup, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = call i64 (...) @suspend_wakeup_condition()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @usb_remote_wakeup()
  br label %29

29:                                               ; preds = %27, %24, %20
  br label %17

30:                                               ; preds = %17
  %31 = call i32 (...) @keyboard_task()
  br label %16
}

declare dso_local i32 @CPU_PRESCALE(i32) #1

declare dso_local i32 @keyboard_setup(...) #1

declare dso_local i32 @usb_init(...) #1

declare dso_local i32 @usb_configured(...) #1

declare dso_local i32 @print_set_sendchar(i32) #1

declare dso_local i32 @keyboard_init(...) #1

declare dso_local i32 @host_set_driver(i32) #1

declare dso_local i32 @pjrc_driver(...) #1

declare dso_local i32 @suspend_power_down(...) #1

declare dso_local i64 @suspend_wakeup_condition(...) #1

declare dso_local i32 @usb_remote_wakeup(...) #1

declare dso_local i32 @keyboard_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
