; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_irq_on.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_irq_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.sata_oxnas_port_priv* }
%struct.sata_oxnas_port_priv = type { i64, i64 }

@COREINT_END = common dso_local global i32 0, align 4
@INT_CLEAR = common dso_local global i64 0, align 8
@CORE_INT_STATUS = common dso_local global i64 0, align 8
@INT_WANT = common dso_local global i32 0, align 4
@INT_ENABLE = common dso_local global i64 0, align 8
@CORE_INT_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @sata_oxnas_irq_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_irq_on(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.sata_oxnas_port_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %6 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %5, i32 0, i32 1
  %7 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  store %struct.sata_oxnas_port_priv* %7, %struct.sata_oxnas_port_priv** %3, align 8
  %8 = load i32, i32* @COREINT_END, align 4
  %9 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %14 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INT_CLEAR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @iowrite32(i32 -1, i64 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %21 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CORE_INT_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i32 %19, i64 %24)
  %26 = call i32 (...) @wmb()
  %27 = load i32, i32* @INT_WANT, align 4
  %28 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %29 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INT_ENABLE, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite32(i32 %27, i64 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %36 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CORE_INT_ENABLE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @iowrite32(i32 %34, i64 %39)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
