; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/board/ox820/extr_ox820.c_board_nand_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/board/ox820/extr_ox820.c_board_nand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SYS_CTRL_RST_STATIC = common dso_local global i32 0, align 4
@SYS_CTRL_CLK_STATIC = common dso_local global i32 0, align 4
@PINMUX_BANK_MFA = common dso_local global i32 0, align 4
@PINMUX_STATIC_DATA0 = common dso_local global i32 0, align 4
@PINMUX_STATIC_DATA1 = common dso_local global i32 0, align 4
@PINMUX_STATIC_DATA2 = common dso_local global i32 0, align 4
@PINMUX_STATIC_DATA3 = common dso_local global i32 0, align 4
@PINMUX_STATIC_DATA4 = common dso_local global i32 0, align 4
@PINMUX_STATIC_DATA5 = common dso_local global i32 0, align 4
@PINMUX_STATIC_DATA6 = common dso_local global i32 0, align 4
@PINMUX_STATIC_DATA7 = common dso_local global i32 0, align 4
@PINMUX_STATIC_NWE = common dso_local global i32 0, align 4
@PINMUX_STATIC_NOE = common dso_local global i32 0, align 4
@PINMUX_STATIC_NCS = common dso_local global i32 0, align 4
@PINMUX_STATIC_ADDR18 = common dso_local global i32 0, align 4
@PINMUX_STATIC_ADDR19 = common dso_local global i32 0, align 4
@STATIC_READ_CYCLE_SHIFT = common dso_local global i32 0, align 4
@STATIC_WRITE_CYCLE_SHIFT = common dso_local global i32 0, align 4
@STATIC_WRITE_PULSE_SHIFT = common dso_local global i32 0, align 4
@STATIC_TURN_AROUND_SHIFT = common dso_local global i32 0, align 4
@STATIC_BUS_WIDTH16 = common dso_local global i32 0, align 4
@STATIC_CTL_BANK0 = common dso_local global i32 0, align 4
@nand_hwcontrol = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@nand_dev_ready = common dso_local global i32 0, align 4
@nand_read_buf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @board_nand_init(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %3 = load i32, i32* @SYS_CTRL_RST_STATIC, align 4
  %4 = call i32 @reset_block(i32 %3, i32 1)
  %5 = load i32, i32* @SYS_CTRL_RST_STATIC, align 4
  %6 = call i32 @reset_block(i32 %5, i32 0)
  %7 = load i32, i32* @SYS_CTRL_CLK_STATIC, align 4
  %8 = call i32 @enable_clock(i32 %7)
  %9 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %10 = load i32, i32* @PINMUX_STATIC_DATA0, align 4
  %11 = call i32 @pinmux_set(i32 %9, i32 12, i32 %10)
  %12 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %13 = load i32, i32* @PINMUX_STATIC_DATA1, align 4
  %14 = call i32 @pinmux_set(i32 %12, i32 13, i32 %13)
  %15 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %16 = load i32, i32* @PINMUX_STATIC_DATA2, align 4
  %17 = call i32 @pinmux_set(i32 %15, i32 14, i32 %16)
  %18 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %19 = load i32, i32* @PINMUX_STATIC_DATA3, align 4
  %20 = call i32 @pinmux_set(i32 %18, i32 15, i32 %19)
  %21 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %22 = load i32, i32* @PINMUX_STATIC_DATA4, align 4
  %23 = call i32 @pinmux_set(i32 %21, i32 16, i32 %22)
  %24 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %25 = load i32, i32* @PINMUX_STATIC_DATA5, align 4
  %26 = call i32 @pinmux_set(i32 %24, i32 17, i32 %25)
  %27 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %28 = load i32, i32* @PINMUX_STATIC_DATA6, align 4
  %29 = call i32 @pinmux_set(i32 %27, i32 18, i32 %28)
  %30 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %31 = load i32, i32* @PINMUX_STATIC_DATA7, align 4
  %32 = call i32 @pinmux_set(i32 %30, i32 19, i32 %31)
  %33 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %34 = load i32, i32* @PINMUX_STATIC_NWE, align 4
  %35 = call i32 @pinmux_set(i32 %33, i32 20, i32 %34)
  %36 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %37 = load i32, i32* @PINMUX_STATIC_NOE, align 4
  %38 = call i32 @pinmux_set(i32 %36, i32 21, i32 %37)
  %39 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %40 = load i32, i32* @PINMUX_STATIC_NCS, align 4
  %41 = call i32 @pinmux_set(i32 %39, i32 22, i32 %40)
  %42 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %43 = load i32, i32* @PINMUX_STATIC_ADDR18, align 4
  %44 = call i32 @pinmux_set(i32 %42, i32 23, i32 %43)
  %45 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %46 = load i32, i32* @PINMUX_STATIC_ADDR19, align 4
  %47 = call i32 @pinmux_set(i32 %45, i32 24, i32 %46)
  %48 = load i32, i32* @STATIC_READ_CYCLE_SHIFT, align 4
  %49 = shl i32 63, %48
  %50 = load i32, i32* @STATIC_WRITE_CYCLE_SHIFT, align 4
  %51 = shl i32 63, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @STATIC_WRITE_PULSE_SHIFT, align 4
  %54 = shl i32 31, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @STATIC_TURN_AROUND_SHIFT, align 4
  %57 = shl i32 3, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @STATIC_BUS_WIDTH16, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @STATIC_CTL_BANK0, align 4
  %62 = call i32 @writel(i32 %60, i32 %61)
  %63 = load i32, i32* @nand_hwcontrol, align 4
  %64 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @NAND_ECC_SOFT, align 4
  %67 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 0
  store i32 30, i32* %71, align 4
  %72 = load i32, i32* @nand_dev_ready, align 4
  %73 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @nand_read_buf, align 4
  %76 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %77 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %79 = call i32 @nand_dev_reset(%struct.nand_chip* %78)
  ret i32 0
}

declare dso_local i32 @reset_block(i32, i32) #1

declare dso_local i32 @enable_clock(i32) #1

declare dso_local i32 @pinmux_set(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @nand_dev_reset(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
