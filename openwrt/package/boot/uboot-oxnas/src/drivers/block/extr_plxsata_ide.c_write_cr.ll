; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_write_cr.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_write_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SATA_PHY_ASIC_STAT = common dso_local global i32 0, align 4
@CR_CAP_DATA = common dso_local global i16 0, align 2
@SATA_PHY_ASIC_DATA = common dso_local global i32 0, align 4
@CR_WRITE_ENABLE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16)* @write_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_cr(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = load i32, i32* @SATA_PHY_ASIC_STAT, align 4
  %7 = call i32 @writel(i16 zeroext %5, i32 %6)
  %8 = call i32 (...) @wait_cr_ack()
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @CR_CAP_DATA, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i16
  %15 = load i32, i32* @SATA_PHY_ASIC_DATA, align 4
  %16 = call i32 @writel(i16 zeroext %14, i32 %15)
  %17 = call i32 (...) @wait_cr_ack()
  %18 = load i16, i16* @CR_WRITE_ENABLE, align 2
  %19 = load i32, i32* @SATA_PHY_ASIC_DATA, align 4
  %20 = call i32 @writel(i16 zeroext %18, i32 %19)
  %21 = call i32 (...) @wait_cr_ack()
  ret void
}

declare dso_local i32 @writel(i16 zeroext, i32) #1

declare dso_local i32 @wait_cr_ack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
