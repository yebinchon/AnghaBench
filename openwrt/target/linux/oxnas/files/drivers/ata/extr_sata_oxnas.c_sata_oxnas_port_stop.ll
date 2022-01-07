; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_port_stop.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_port_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.sata_oxnas_port_priv*, %struct.TYPE_2__* }
%struct.sata_oxnas_port_priv = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.sata_oxnas_host_priv*, %struct.device* }
%struct.sata_oxnas_host_priv = type { i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@SATA_OXNAS_DMA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @sata_oxnas_port_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_port_stop(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sata_oxnas_port_priv*, align 8
  %5 = alloca %struct.sata_oxnas_host_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %12, align 8
  store %struct.sata_oxnas_port_priv* %13, %struct.sata_oxnas_port_priv** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %17, align 8
  store %struct.sata_oxnas_host_priv* %18, %struct.sata_oxnas_host_priv** %5, align 8
  %19 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  store %struct.sata_oxnas_port_priv* null, %struct.sata_oxnas_port_priv** %21, align 8
  %22 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %5, align 8
  %23 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %4, align 8
  %28 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iounmap(i32 %29)
  br label %41

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load i32, i32* @SATA_OXNAS_DMA_SIZE, align 4
  %34 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %4, align 8
  %35 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %4, align 8
  %38 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dma_free_coherent(%struct.device* %32, i32 %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %31, %26
  %42 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %4, align 8
  %43 = call i32 @kfree(%struct.sata_oxnas_port_priv* %42)
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sata_oxnas_port_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
