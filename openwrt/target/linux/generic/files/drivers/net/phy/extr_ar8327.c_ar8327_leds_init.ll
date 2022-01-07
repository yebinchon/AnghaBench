; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_leds_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_leds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.ar8327_data* }
%struct.ar8327_data = type { i32, %struct.ar8327_led** }
%struct.ar8327_led = type { i32, i32, i64 }

@CONFIG_AR8216_PHY_LEDS = common dso_local global i32 0, align 4
@AR8327_LED_PATTERN_RULE = common dso_local global i32 0, align 4
@AR8327_LED_PATTERN_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*)* @ar8327_leds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_leds_init(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  %3 = alloca %struct.ar8327_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar8327_led*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %6 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %6, i32 0, i32 0
  %8 = load %struct.ar8327_data*, %struct.ar8327_data** %7, align 8
  store %struct.ar8327_data* %8, %struct.ar8327_data** %3, align 8
  %9 = load i32, i32* @CONFIG_AR8216_PHY_LEDS, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %52

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ar8327_data*, %struct.ar8327_data** %3, align 8
  %17 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  %21 = load %struct.ar8327_data*, %struct.ar8327_data** %3, align 8
  %22 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %21, i32 0, i32 1
  %23 = load %struct.ar8327_led**, %struct.ar8327_led*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ar8327_led*, %struct.ar8327_led** %23, i64 %25
  %27 = load %struct.ar8327_led*, %struct.ar8327_led** %26, align 8
  store %struct.ar8327_led* %27, %struct.ar8327_led** %5, align 8
  %28 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %29 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i32, i32* @AR8327_LED_PATTERN_RULE, align 4
  %34 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %35 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %40

36:                                               ; preds = %20
  %37 = load i32, i32* @AR8327_LED_PATTERN_OFF, align 4
  %38 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %39 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %42 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %43 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %46 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ar8327_set_led_pattern(%struct.ar8xxx_priv* %41, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %14

52:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @ar8327_set_led_pattern(%struct.ar8xxx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
