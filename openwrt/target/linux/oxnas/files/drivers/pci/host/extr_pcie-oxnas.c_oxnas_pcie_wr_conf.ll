; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_wr_conf.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_wr_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32 }
%struct.oxnas_pcie = type { i32, i64, i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @oxnas_pcie_wr_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pcie_wr_conf(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.oxnas_pcie*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.oxnas_pcie* @sys_to_pcie(i32 %19)
  store %struct.oxnas_pcie* %20, %struct.oxnas_pcie** %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @PCI_SLOT(i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %25, i32* %6, align 4
  br label %76

26:                                               ; preds = %5
  %27 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %13, align 8
  %28 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %32, i32* %6, align 4
  br label %76

33:                                               ; preds = %26
  %34 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %35 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %38 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @oxnas_pcie_cfg_to_offset(i32 %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 3
  %46 = mul nsw i32 8, %45
  %47 = shl i32 %43, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 4, %48
  %50 = ashr i32 15, %49
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 3
  %53 = shl i32 %50, %52
  store i32 %53, i32* %16, align 4
  %54 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %13, align 8
  %55 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %54, i32 0, i32 0
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %13, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @set_out_lanes(%struct.oxnas_pcie* %58, i32 %59)
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %13, align 8
  %63 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call i32 @writel_relaxed(i32 %61, i64 %67)
  %69 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %13, align 8
  %70 = call i32 @set_out_lanes(%struct.oxnas_pcie* %69, i32 15)
  %71 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %13, align 8
  %72 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %71, i32 0, i32 0
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %33, %31, %24
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.oxnas_pcie* @sys_to_pcie(i32) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i32 @oxnas_pcie_cfg_to_offset(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_out_lanes(%struct.oxnas_pcie*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
