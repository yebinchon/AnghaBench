; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_rd_conf.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_rd_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32 }
%struct.oxnas_pcie = type { i64, i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @oxnas_pcie_rd_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pcie_rd_conf(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.oxnas_pcie*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.oxnas_pcie* @sys_to_pcie(i32 %19)
  store %struct.oxnas_pcie* %20, %struct.oxnas_pcie** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @PCI_SLOT(i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  store i32 -1, i32* %25, align 4
  %26 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %26, i32* %6, align 4
  br label %71

27:                                               ; preds = %5
  %28 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %12, align 8
  %29 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %11, align 8
  store i32 -1, i32* %33, align 4
  %34 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %34, i32* %6, align 4
  br label %71

35:                                               ; preds = %27
  %36 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %37 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %40 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @oxnas_pcie_cfg_to_offset(i32 %38, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %12, align 8
  %46 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @readl_relaxed(i64 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 3
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = sub nsw i32 4, %54
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = mul nsw i32 %58, 8
  %60 = load i32, i32* %14, align 4
  %61 = shl i32 %60, %59
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %62, %63
  %65 = mul nsw i32 %64, 8
  %66 = load i32, i32* %14, align 4
  %67 = ashr i32 %66, %65
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %35, %32, %24
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.oxnas_pcie* @sys_to_pcie(i32) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i32 @oxnas_pcie_cfg_to_offset(i32, i32, i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
