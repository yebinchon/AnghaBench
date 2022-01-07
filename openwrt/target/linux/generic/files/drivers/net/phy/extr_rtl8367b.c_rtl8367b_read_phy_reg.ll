; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_read_phy_reg.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_read_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8367B_PHY_ADDR_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8367B_PHY_REG_MAX = common dso_local global i64 0, align 8
@RTL8367B_IA_STATUS_REG = common dso_local global i32 0, align 4
@RTL8367B_IA_STATUS_PHY_BUSY = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@RTL8367B_IA_ADDRESS_REG = common dso_local global i32 0, align 4
@RTL8367B_IA_CTRL_REG = common dso_local global i32 0, align 4
@RTL8367B_IA_CTRL_CMD_MASK = common dso_local global i32 0, align 4
@RTL8367B_IA_CTRL_RW_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"phy read timed out\0A\00", align 1
@RTL8367B_IA_READ_DATA_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"phy_read: addr:%02x, reg:%02x, val:%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i64, i64, i64*)* @rtl8367b_read_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_read_phy_reg(%struct.rtl8366_smi* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl8366_smi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @RTL8367B_PHY_ADDR_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %86

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @RTL8367B_PHY_REG_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %86

26:                                               ; preds = %19
  %27 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %28 = load i32, i32* @RTL8367B_IA_STATUS_REG, align 4
  %29 = call i32 @REG_RD(%struct.rtl8366_smi* %27, i32 %28, i64* %11)
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @RTL8367B_IA_STATUS_PHY_BUSY, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %86

37:                                               ; preds = %26
  %38 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %39 = load i32, i32* @RTL8367B_IA_ADDRESS_REG, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @RTL8367B_INTERNAL_PHY_REG(i64 %40, i64 %41)
  %43 = call i32 @REG_WR(%struct.rtl8366_smi* %38, i32 %39, i32 %42)
  %44 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %45 = load i32, i32* @RTL8367B_IA_CTRL_REG, align 4
  %46 = load i32, i32* @RTL8367B_IA_CTRL_CMD_MASK, align 4
  %47 = load i32, i32* @RTL8367B_IA_CTRL_RW_READ, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @REG_WR(%struct.rtl8366_smi* %44, i32 %45, i32 %48)
  store i32 5, i32* %10, align 4
  br label %50

50:                                               ; preds = %72, %37
  %51 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %52 = load i32, i32* @RTL8367B_IA_STATUS_REG, align 4
  %53 = call i32 @REG_RD(%struct.rtl8366_smi* %51, i32 %52, i64* %11)
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @RTL8367B_IA_STATUS_PHY_BUSY, align 8
  %56 = and i64 %54, %55
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %73

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %10, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %65 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %86

70:                                               ; preds = %59
  %71 = call i32 @udelay(i32 1)
  br label %72

72:                                               ; preds = %70
  br i1 true, label %50, label %73

73:                                               ; preds = %72, %58
  %74 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %75 = load i32, i32* @RTL8367B_IA_READ_DATA_REG, align 4
  %76 = load i64*, i64** %9, align 8
  %77 = call i32 @REG_RD(%struct.rtl8366_smi* %74, i32 %75, i64* %76)
  %78 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %79 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %81, i64 %82, i64 %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %73, %63, %34, %23, %16
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @REG_RD(%struct.rtl8366_smi*, i32, i64*) #1

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @RTL8367B_INTERNAL_PHY_REG(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
