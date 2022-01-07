; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_core_has_scsi_waiters.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_core_has_scsi_waiters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { %struct.sata_oxnas_host_priv* }
%struct.sata_oxnas_host_priv = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_core_has_scsi_waiters(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.sata_oxnas_host_priv*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  %6 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %7 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %6, i32 0, i32 0
  %8 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %7, align 8
  store %struct.sata_oxnas_host_priv* %8, %struct.sata_oxnas_host_priv** %5, align 8
  %9 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %5, align 8
  %10 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %5, align 8
  %14 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %5, align 8
  %19 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %17, %1
  %25 = phi i1 [ true, %1 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %5, align 8
  %28 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
