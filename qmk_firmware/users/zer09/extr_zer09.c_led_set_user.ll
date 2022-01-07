; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_zer09.c_led_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_zer09.c_led_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@ENABLED = common dso_local global i8* null, align 8
@rbw_led_keys = common dso_local global %struct.TYPE_2__* null, align 8
@RBW_LCAP = common dso_local global i64 0, align 8
@RBW_RCAP = common dso_local global i64 0, align 8
@DISABLED = common dso_local global i8* null, align 8
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@RBW_SCRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i8*, i8** @ENABLED, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %11 = load i64, i64* @RBW_LCAP, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* %9, i8** %13, align 8
  %14 = load i8*, i8** @ENABLED, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %16 = load i64, i64* @RBW_RCAP, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %14, i8** %18, align 8
  br label %30

19:                                               ; preds = %1
  %20 = load i8*, i8** @DISABLED, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %22 = load i64, i64* @RBW_LCAP, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %20, i8** %24, align 8
  %25 = load i8*, i8** @DISABLED, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %27 = load i64, i64* @RBW_RCAP, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %25, i8** %29, align 8
  br label %30

30:                                               ; preds = %19, %8
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** @ENABLED, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %39 = load i64, i64* @RBW_SCRL, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  br label %48

42:                                               ; preds = %30
  %43 = load i8*, i8** @DISABLED, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbw_led_keys, align 8
  %45 = load i64, i64* @RBW_SCRL, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @led_set_keymap(i32 %49)
  ret void
}

declare dso_local i32 @led_set_keymap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
