; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_setup_hw.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxnas_pcie = type { i64, i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IB_ADDR_XLATE_ENABLE = common dso_local global i64 0, align 8
@ENABLE_IN_ADDR_TRANS = common dso_local global i32 0, align 4
@PCIE_IN0_MEM_ADDR = common dso_local global i64 0, align 8
@PCIE_IN0_MEM_LIMIT = common dso_local global i64 0, align 8
@PCIE_POM0_MEM_ADDR = common dso_local global i64 0, align 8
@PCIE_IN1_MEM_ADDR = common dso_local global i64 0, align 8
@PCIE_IN1_MEM_LIMIT = common dso_local global i64 0, align 8
@PCIE_POM1_MEM_ADDR = common dso_local global i64 0, align 8
@PCIE_IN_IO_ADDR = common dso_local global i64 0, align 8
@PCIE_IN_IO_LIMIT = common dso_local global i64 0, align 8
@PCIE_IN_CFG0_ADDR = common dso_local global i64 0, align 8
@PCIE_IN_CFG0_LIMIT = common dso_local global i64 0, align 8
@PCIE_OBTRANS = common dso_local global i32 0, align 4
@PCI_CONFIG_COMMAND_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxnas_pcie*)* @oxnas_pcie_setup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxnas_pcie_setup_hw(%struct.oxnas_pcie* %0) #0 {
  %2 = alloca %struct.oxnas_pcie*, align 8
  store %struct.oxnas_pcie* %0, %struct.oxnas_pcie** %2, align 8
  %3 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %4 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %3, i32 0, i32 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IB_ADDR_XLATE_ENABLE, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i32, i32* @ENABLE_IN_ADDR_TRANS, align 4
  %9 = call i32 @oxnas_register_clear_mask(i64 %7, i32 %8)
  %10 = call i32 (...) @wmb()
  %11 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %12 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %15 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCIE_IN0_MEM_ADDR, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %20 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @regmap_write(i32 %13, i64 %18, i32 %22)
  %24 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %25 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %28 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCIE_IN0_MEM_LIMIT, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %33 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regmap_write(i32 %26, i64 %31, i32 %35)
  %37 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %38 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %41 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCIE_POM0_MEM_ADDR, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %46 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @regmap_write(i32 %39, i64 %44, i32 %48)
  %50 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %51 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %54 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCIE_IN1_MEM_ADDR, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %59 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @regmap_write(i32 %52, i64 %57, i32 %61)
  %63 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %64 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %67 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCIE_IN1_MEM_LIMIT, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %72 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @regmap_write(i32 %65, i64 %70, i32 %74)
  %76 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %77 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %80 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PCIE_POM1_MEM_ADDR, align 8
  %83 = add nsw i64 %81, %82
  %84 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %85 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @regmap_write(i32 %78, i64 %83, i32 %87)
  %89 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %90 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %93 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCIE_IN_IO_ADDR, align 8
  %96 = add nsw i64 %94, %95
  %97 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %98 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @regmap_write(i32 %91, i64 %96, i32 %100)
  %102 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %103 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %106 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PCIE_IN_IO_LIMIT, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %111 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @regmap_write(i32 %104, i64 %109, i32 %113)
  %115 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %116 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %119 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PCIE_IN_CFG0_ADDR, align 8
  %122 = add nsw i64 %120, %121
  %123 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %124 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @regmap_write(i32 %117, i64 %122, i32 %126)
  %128 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %129 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %132 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @PCIE_IN_CFG0_LIMIT, align 8
  %135 = add nsw i64 %133, %134
  %136 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %137 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @regmap_write(i32 %130, i64 %135, i32 %139)
  %141 = call i32 (...) @wmb()
  %142 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %143 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %146 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PCIE_OBTRANS, align 4
  %149 = load i32, i32* @PCIE_OBTRANS, align 4
  %150 = call i32 @regmap_write_bits(i32 %144, i32 %147, i32 %148, i32 %149)
  %151 = call i32 (...) @wmb()
  %152 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %2, align 8
  %153 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @PCI_CONFIG_COMMAND_STATUS, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel_relaxed(i32 7, i64 %156)
  %158 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @oxnas_register_clear_mask(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
