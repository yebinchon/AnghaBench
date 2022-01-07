; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_register.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8327_led = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AR8327_LED_MODE_HW = common dso_local global i64 0, align 8
@dev_attr_enable_hw_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8327_led*)* @ar8327_led_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_led_register(%struct.ar8327_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8327_led*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8327_led* %0, %struct.ar8327_led** %3, align 8
  %5 = load %struct.ar8327_led*, %struct.ar8327_led** %3, align 8
  %6 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %5, i32 0, i32 1
  %7 = call i32 @led_classdev_register(i32* null, %struct.TYPE_3__* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.ar8327_led*, %struct.ar8327_led** %3, align 8
  %14 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AR8327_LED_MODE_HW, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.ar8327_led*, %struct.ar8327_led** %3, align 8
  %20 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_create_file(i32 %22, i32* @dev_attr_enable_hw_mode)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %29

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %12
  store i32 0, i32* %2, align 4
  br label %34

29:                                               ; preds = %26
  %30 = load %struct.ar8327_led*, %struct.ar8327_led** %3, align 8
  %31 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %30, i32 0, i32 1
  %32 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %28, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
