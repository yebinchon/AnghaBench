; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_write_bits.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_write_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8366_smi*, i32, i32)* @rtl8366_smi_write_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8366_smi_write_bits(%struct.rtl8366_smi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %10 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %13 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %40, %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %20 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = shl i32 1, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @gpio_set_value(i32 %21, i32 %30)
  %32 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %33 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @gpio_set_value(i32 %34, i32 1)
  %36 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %37 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @gpio_set_value(i32 %38, i32 0)
  br label %40

40:                                               ; preds = %18
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  br label %15

43:                                               ; preds = %15
  ret void
}

declare dso_local i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
