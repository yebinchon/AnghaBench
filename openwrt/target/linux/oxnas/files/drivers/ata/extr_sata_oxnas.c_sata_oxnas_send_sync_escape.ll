; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_send_sync_escape.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_send_sync_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.sata_oxnas_port_priv* }
%struct.sata_oxnas_port_priv = type { i64 }

@SATA_COMMAND = common dso_local global i64 0, align 8
@SATA_OPCODE_MASK = common dso_local global i32 0, align 4
@CMD_SYNC_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @sata_oxnas_send_sync_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_send_sync_escape(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.sata_oxnas_port_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %6 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %5, i32 0, i32 0
  %7 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  store %struct.sata_oxnas_port_priv* %7, %struct.sata_oxnas_port_priv** %3, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %9 = call i32 @sata_oxnas_link_read(%struct.ata_port* %8, i32 32)
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %14 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SATA_COMMAND, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @ioread32(i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @SATA_OPCODE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @CMD_SYNC_ESCAPE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %28 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SATA_COMMAND, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite32(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @sata_oxnas_link_read(%struct.ata_port*, i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
