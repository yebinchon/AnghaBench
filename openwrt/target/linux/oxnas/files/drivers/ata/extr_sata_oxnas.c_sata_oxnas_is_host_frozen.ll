; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_is_host_frozen.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_is_host_frozen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { %struct.sata_oxnas_host_priv* }
%struct.sata_oxnas_host_priv = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_host*)* @sata_oxnas_is_host_frozen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_oxnas_is_host_frozen(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca %struct.sata_oxnas_host_priv*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  %4 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %5 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %4, i32 0, i32 0
  %6 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %5, align 8
  store %struct.sata_oxnas_host_priv* %6, %struct.sata_oxnas_host_priv** %3, align 8
  %7 = call i32 (...) @smp_rmb()
  %8 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %3, align 8
  %14 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
