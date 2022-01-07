; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_unregister.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8327_led = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR8327_LED_MODE_HW = common dso_local global i64 0, align 8
@dev_attr_enable_hw_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8327_led*)* @ar8327_led_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_led_unregister(%struct.ar8327_led* %0) #0 {
  %2 = alloca %struct.ar8327_led*, align 8
  store %struct.ar8327_led* %0, %struct.ar8327_led** %2, align 8
  %3 = load %struct.ar8327_led*, %struct.ar8327_led** %2, align 8
  %4 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @AR8327_LED_MODE_HW, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.ar8327_led*, %struct.ar8327_led** %2, align 8
  %10 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @device_remove_file(i32 %12, i32* @dev_attr_enable_hw_mode)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.ar8327_led*, %struct.ar8327_led** %2, align 8
  %16 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %15, i32 0, i32 2
  %17 = call i32 @led_classdev_unregister(%struct.TYPE_2__* %16)
  %18 = load %struct.ar8327_led*, %struct.ar8327_led** %2, align 8
  %19 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %18, i32 0, i32 1
  %20 = call i32 @cancel_work_sync(i32* %19)
  ret void
}

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
