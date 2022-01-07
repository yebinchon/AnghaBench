; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_enable_hw_mode_store.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_enable_hw_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.ar8327_led = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@AR8327_LED_PATTERN_RULE = common dso_local global i32 0, align 4
@AR8327_LED_PATTERN_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ar8327_led_enable_hw_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ar8327_led_enable_hw_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.ar8327_led*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %15)
  store %struct.led_classdev* %16, %struct.led_classdev** %10, align 8
  %17 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %18 = call %struct.ar8327_led* @led_cdev_to_ar8327_led(%struct.led_classdev* %17)
  store %struct.ar8327_led* %18, %struct.ar8327_led** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtou8(i8* %19, i32 10, i32* %13)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %53

26:                                               ; preds = %4
  %27 = load %struct.ar8327_led*, %struct.ar8327_led** %11, align 8
  %28 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %27, i32 0, i32 1
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.ar8327_led*, %struct.ar8327_led** %11, align 8
  %36 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ar8327_led*, %struct.ar8327_led** %11, align 8
  %38 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i32, i32* @AR8327_LED_PATTERN_RULE, align 4
  store i32 %42, i32* %12, align 4
  br label %45

43:                                               ; preds = %26
  %44 = load i32, i32* @AR8327_LED_PATTERN_OFF, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.ar8327_led*, %struct.ar8327_led** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ar8327_led_schedule_change(%struct.ar8327_led* %46, i32 %47)
  %49 = load %struct.ar8327_led*, %struct.ar8327_led** %11, align 8
  %50 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %45, %23
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ar8327_led* @led_cdev_to_ar8327_led(%struct.led_classdev*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ar8327_led_schedule_change(%struct.ar8327_led*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
