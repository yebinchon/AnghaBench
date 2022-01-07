; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_read_bits.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_read_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8366_smi*, i64, i64*)* @rtl8366_smi_read_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8366_smi_read_bits(%struct.rtl8366_smi* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %11 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %14 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @gpio_direction_input(i32 %16)
  %18 = load i64*, i64** %6, align 8
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %45, %3
  %20 = load i64, i64* %5, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %24 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @gpio_set_value(i32 %25, i32 1)
  %27 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %28 = call i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi* %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @gpio_get_value(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @gpio_set_value(i32 %36, i32 0)
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 %39, 1
  %41 = shl i64 %38, %40
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %41
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %22
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %5, align 8
  br label %19

48:                                               ; preds = %19
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @gpio_direction_output(i32 %49, i32 0)
  ret void
}

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @rtl8366_smi_clk_delay(%struct.rtl8366_smi*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
