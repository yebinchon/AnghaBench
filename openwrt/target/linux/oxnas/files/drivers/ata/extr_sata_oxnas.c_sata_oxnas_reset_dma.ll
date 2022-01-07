; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_reset_dma.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_reset_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.sata_oxnas_port_priv* }
%struct.sata_oxnas_port_priv = type { i64 }

@DMA_CONTROL = common dso_local global i64 0, align 8
@DMA_CONTROL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, i32)* @sata_oxnas_reset_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_reset_dma(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sata_oxnas_port_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 0
  %9 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %8, align 8
  store %struct.sata_oxnas_port_priv* %9, %struct.sata_oxnas_port_priv** %5, align 8
  %10 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %5, align 8
  %11 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DMA_CONTROL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @DMA_CONTROL_RESET, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @DMA_CONTROL_RESET, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %5, align 8
  %30 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMA_CONTROL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @iowrite32(i32 %28, i64 %33)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
