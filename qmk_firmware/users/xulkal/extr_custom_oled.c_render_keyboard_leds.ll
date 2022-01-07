; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/xulkal/extr_custom_oled.c_render_keyboard_leds.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/xulkal/extr_custom_oled.c_render_keyboard_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"NUM  \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"CAPS \00", align 1
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"SCRL\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @render_keyboard_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_keyboard_leds() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @host_keyboard_leds()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %5 = call i64 @IS_LED_ON(i32 %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %11

9:                                                ; preds = %0
  %10 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = call i32 @oled_write_P(i32 %12, i32 0)
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %16 = call i64 @IS_LED_ON(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %22

20:                                               ; preds = %11
  %21 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @oled_write_P(i32 %23, i32 0)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %27 = call i64 @IS_LED_ON(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @PSTR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %33

31:                                               ; preds = %22
  %32 = call i32 @PSTR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @oled_write_P(i32 %34, i32 0)
  ret void
}

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @oled_write_P(i32, i32) #1

declare dso_local i64 @IS_LED_ON(i32, i32) #1

declare dso_local i32 @PSTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
