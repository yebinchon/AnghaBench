; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_post_reset_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_post_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SCR_ERROR = common dso_local global i32 0, align 4
@SERROR_IRQ_MASK = common dso_local global i32 0, align 4
@SCR_ACTIVE = common dso_local global i32 0, align 4
@ATA_MAX_DEVICES = common dso_local global i64 0, align 8
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @sata_oxnas_post_reset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_post_reset_init(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @sata_oxnas_reset_ucode(i32 %6, i32 %12, i32 0)
  %14 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %15 = call i32 @sata_oxnas_link_write(%struct.ata_port* %14, i32 12, i32 196611)
  %16 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %17 = load i32, i32* @SCR_ERROR, align 4
  %18 = call i32 @sata_oxnas_scr_write_port(%struct.ata_port* %16, i32 %17, i32 -1)
  %19 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %20 = load i32, i32* @SERROR_IRQ_MASK, align 4
  %21 = call i32 @sata_oxnas_scr_write_port(%struct.ata_port* %19, i32 %20, i32 67043327)
  %22 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %23 = load i32, i32* @SCR_ACTIVE, align 4
  %24 = call i32 @sata_oxnas_scr_write_port(%struct.ata_port* %22, i32 %23, i32 -67174401)
  %25 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %26 = call i32 @sata_oxnas_irq_on(%struct.ata_port* %25)
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %57, %1
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @ATA_MAX_DEVICES, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ATA_DEV_ATA, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %31
  %43 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* @HZ, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @sata_std_hardreset(%struct.TYPE_3__* %44, i32* null, i64 %47)
  %49 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %50 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = call i32 @sata_oxnas_dev_config(%struct.TYPE_4__* %54)
  br label %56

56:                                               ; preds = %42, %31
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %27

60:                                               ; preds = %27
  %61 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %62 = load i32, i32* @SCR_ERROR, align 4
  %63 = call i32 @sata_oxnas_scr_write_port(%struct.ata_port* %61, i32 %62, i32 -1)
  %64 = call i32 @VPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sata_oxnas_reset_ucode(i32, i32, i32) #1

declare dso_local i32 @sata_oxnas_link_write(%struct.ata_port*, i32, i32) #1

declare dso_local i32 @sata_oxnas_scr_write_port(%struct.ata_port*, i32, i32) #1

declare dso_local i32 @sata_oxnas_irq_on(%struct.ata_port*) #1

declare dso_local i32 @sata_std_hardreset(%struct.TYPE_3__*, i32*, i64) #1

declare dso_local i32 @sata_oxnas_dev_config(%struct.TYPE_4__*) #1

declare dso_local i32 @VPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
