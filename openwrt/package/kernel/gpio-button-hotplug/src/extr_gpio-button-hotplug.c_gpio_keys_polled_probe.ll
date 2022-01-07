; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_polled_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_polled_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_keys_platform_data = type { i32 (i32)* }
%struct.gpio_keys_button_dev = type { i32, %struct.gpio_keys_platform_data*, i32 }

@gpio_keys_polled_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_keys_polled_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_keys_polled_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_keys_platform_data*, align 8
  %5 = alloca %struct.gpio_keys_button_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call i32 @gpio_keys_button_probe(%struct.platform_device* %7, %struct.gpio_keys_button_dev** %5, i32 1)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %15 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %14, i32 0, i32 2
  %16 = load i32, i32* @gpio_keys_polled_poll, align 4
  %17 = call i32 @INIT_DELAYED_WORK(i32* %15, i32 %16)
  %18 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %19 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %18, i32 0, i32 1
  %20 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %19, align 8
  store %struct.gpio_keys_platform_data* %20, %struct.gpio_keys_platform_data** %4, align 8
  %21 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = icmp ne i32 (i32)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %27 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %30 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %28(i32 %31)
  br label %33

33:                                               ; preds = %25, %13
  %34 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %35 = call i32 @gpio_keys_polled_queue_work(%struct.gpio_keys_button_dev* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @gpio_keys_button_probe(%struct.platform_device*, %struct.gpio_keys_button_dev**, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @gpio_keys_polled_queue_work(%struct.gpio_keys_button_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
