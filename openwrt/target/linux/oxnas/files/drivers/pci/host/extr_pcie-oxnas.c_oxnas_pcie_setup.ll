; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_setup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_sys_data = type { i32, i32, i32, i32 }
%struct.oxnas_pcie = type { i32, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pci_sys_data*)* @oxnas_pcie_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pcie_setup(i32 %0, %struct.pci_sys_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_sys_data*, align 8
  %6 = alloca %struct.oxnas_pcie*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pci_sys_data* %1, %struct.pci_sys_data** %5, align 8
  %7 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %8 = call %struct.oxnas_pcie* @sys_to_pcie(%struct.pci_sys_data* %7)
  store %struct.oxnas_pcie* %8, %struct.oxnas_pcie** %6, align 8
  %9 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %10 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %9, i32 0, i32 1
  %11 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %12 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %11, i32 0, i32 6
  %13 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %14 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_add_resource_offset(i32* %10, i32* %12, i32 %15)
  %17 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %18 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %17, i32 0, i32 1
  %19 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %20 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %19, i32 0, i32 5
  %21 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %22 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_add_resource_offset(i32* %18, i32* %20, i32 %23)
  %25 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %26 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %25, i32 0, i32 1
  %27 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %28 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %27, i32 0, i32 4
  %29 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %30 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_add_resource_offset(i32* %26, i32* %28, i32 %31)
  %33 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %34 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %33, i32 0, i32 1
  %35 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %36 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %35, i32 0, i32 3
  %37 = call i32 @pci_add_resource(i32* %34, %struct.TYPE_6__* %36)
  %38 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %39 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %44 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pci_sys_data*, %struct.pci_sys_data** %5, align 8
  %48 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %2
  %50 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %51 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %55 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %59 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %58, i32 0, i32 1
  %60 = call i32 @resource_size(%struct.TYPE_5__* %59)
  %61 = call i32 @devm_ioremap(i32* %53, i32 %57, i32 %60)
  %62 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %63 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %65 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %49
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %49
  %72 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %6, align 8
  %73 = call i32 @oxnas_pcie_setup_hw(%struct.oxnas_pcie* %72)
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.oxnas_pcie* @sys_to_pcie(%struct.pci_sys_data*) #1

declare dso_local i32 @pci_add_resource_offset(i32*, i32*, i32) #1

declare dso_local i32 @pci_add_resource(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_5__*) #1

declare dso_local i32 @oxnas_pcie_setup_hw(%struct.oxnas_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
