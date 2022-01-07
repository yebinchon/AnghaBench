; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_link_up.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxnas_pcie = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@LINK_UP_TIMEOUT_SECONDS = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@PCIE_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxnas_pcie*)* @oxnas_pcie_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pcie_link_up(%struct.oxnas_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxnas_pcie*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.oxnas_pcie* %0, %struct.oxnas_pcie** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @LINK_UP_TIMEOUT_SECONDS, align 8
  %8 = load i64, i64* @HZ, align 8
  %9 = mul i64 %7, %8
  %10 = add i64 %6, %9
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @time_after(i64 %12, i64 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %3, align 8
  %22 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regmap_read(i32 %20, i32 %23, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PCIE_LINK_UP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %32

30:                                               ; preds = %17
  br label %11

31:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
