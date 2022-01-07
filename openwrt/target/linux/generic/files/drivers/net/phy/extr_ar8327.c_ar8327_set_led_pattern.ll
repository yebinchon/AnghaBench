; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_set_led_pattern.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_set_led_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8327_led_entry = type { i32, i32 }
%struct.ar8xxx_priv = type { i32 }

@ar8327_led_map = common dso_local global %struct.ar8327_led_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, i32)* @ar8327_set_led_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_set_led_pattern(%struct.ar8xxx_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar8327_led_entry*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ar8327_led_entry*, %struct.ar8327_led_entry** @ar8327_led_map, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ar8327_led_entry, %struct.ar8327_led_entry* %8, i64 %10
  store %struct.ar8327_led_entry* %11, %struct.ar8327_led_entry** %7, align 8
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %13 = load %struct.ar8327_led_entry*, %struct.ar8327_led_entry** %7, align 8
  %14 = getelementptr inbounds %struct.ar8327_led_entry, %struct.ar8327_led_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AR8327_REG_LED_CTRL(i32 %15)
  %17 = load %struct.ar8327_led_entry*, %struct.ar8327_led_entry** %7, align 8
  %18 = getelementptr inbounds %struct.ar8327_led_entry, %struct.ar8327_led_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 3, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ar8327_led_entry*, %struct.ar8327_led_entry** %7, align 8
  %23 = getelementptr inbounds %struct.ar8327_led_entry, %struct.ar8327_led_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %21, %24
  %26 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %12, i32 %16, i32 %20, i32 %25)
  ret void
}

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @AR8327_REG_LED_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
