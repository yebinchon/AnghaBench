; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/sun_usb/extr_led.c_led_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/sun_usb/extr_led.c_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@USB_LED_COMPOSE = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"LED: %02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %6 = shl i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @USB_LED_COMPOSE, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, 2
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, 8
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @xprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 @serial_send(i32 14)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @serial_send(i32 %43)
  ret void
}

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @serial_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
