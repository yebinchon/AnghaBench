; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_remove.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ata_host = type { %struct.sata_oxnas_host_priv* }
%struct.sata_oxnas_host_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sata_oxnas_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_oxnas_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.sata_oxnas_host_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.ata_host* @dev_get_drvdata(i32* %6)
  store %struct.ata_host* %7, %struct.ata_host** %3, align 8
  %8 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %9 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %8, i32 0, i32 0
  %10 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %9, align 8
  store %struct.sata_oxnas_host_priv* %10, %struct.sata_oxnas_host_priv** %4, align 8
  %11 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %12 = call i32 @ata_host_detach(%struct.ata_host* %11)
  %13 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %14 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @irq_dispose_mapping(i32 %15)
  %17 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %18 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iounmap(i32 %19)
  %21 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %22 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iounmap(i32 %23)
  %25 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %26 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iounmap(i32 %27)
  %29 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %30 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @reset_control_assert(i32 %31)
  %33 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %34 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @reset_control_assert(i32 %35)
  %37 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %38 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @reset_control_assert(i32 %39)
  %41 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %42 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  %45 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %46 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_put(i32 %47)
  ret i32 0
}

declare dso_local %struct.ata_host* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ata_host_detach(%struct.ata_host*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
