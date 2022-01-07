; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_start.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8366_smi*)* @rtl8366_smi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8366_smi_start(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca %struct.rtl8366_smi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %2, align 8
  %5 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %9 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @gpio_direction_output(i32 %11, i32 0)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @gpio_direction_output(i32 %13, i32 1)
  %15 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %16 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @gpio_set_value(i32 %17, i32 1)
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %20 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @gpio_set_value(i32 %21, i32 0)
  %23 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %24 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @gpio_set_value(i32 %25, i32 1)
  %27 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %28 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @gpio_set_value(i32 %29, i32 0)
  %31 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %32 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @gpio_set_value(i32 %33, i32 0)
  %35 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %36 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @gpio_set_value(i32 %37, i32 1)
  ret void
}

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
