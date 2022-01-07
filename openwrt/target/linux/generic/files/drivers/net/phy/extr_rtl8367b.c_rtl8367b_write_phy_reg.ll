; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_write_phy_reg.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_write_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"phy_write: addr:%02x, reg:%02x, val:%04x\0A\00", align 1
@RTL8367B_PHY_ADDR_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8367B_PHY_REG_MAX = common dso_local global i64 0, align 8
@RTL8367B_IA_STATUS_REG = common dso_local global i32 0, align 4
@RTL8367B_IA_STATUS_PHY_BUSY = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@RTL8367B_IA_WRITE_DATA_REG = common dso_local global i32 0, align 4
@RTL8367B_IA_ADDRESS_REG = common dso_local global i32 0, align 4
@RTL8367B_IA_CTRL_REG = common dso_local global i32 0, align 4
@RTL8367B_IA_CTRL_CMD_MASK = common dso_local global i64 0, align 8
@RTL8367B_IA_CTRL_RW_WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"phy write timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i64, i64, i64)* @rtl8367b_write_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_write_phy_reg(%struct.rtl8366_smi* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl8366_smi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %14 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @RTL8367B_PHY_ADDR_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %85

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @RTL8367B_PHY_REG_MAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %85

33:                                               ; preds = %26
  %34 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %35 = load i32, i32* @RTL8367B_IA_STATUS_REG, align 4
  %36 = call i32 @REG_RD(%struct.rtl8366_smi* %34, i32 %35, i64* %11)
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @RTL8367B_IA_STATUS_PHY_BUSY, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %85

44:                                               ; preds = %33
  %45 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %46 = load i32, i32* @RTL8367B_IA_WRITE_DATA_REG, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @REG_WR(%struct.rtl8366_smi* %45, i32 %46, i64 %47)
  %49 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %50 = load i32, i32* @RTL8367B_IA_ADDRESS_REG, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @RTL8367B_INTERNAL_PHY_REG(i64 %51, i64 %52)
  %54 = call i32 @REG_WR(%struct.rtl8366_smi* %49, i32 %50, i64 %53)
  %55 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %56 = load i32, i32* @RTL8367B_IA_CTRL_REG, align 4
  %57 = load i64, i64* @RTL8367B_IA_CTRL_CMD_MASK, align 8
  %58 = load i64, i64* @RTL8367B_IA_CTRL_RW_WRITE, align 8
  %59 = or i64 %57, %58
  %60 = call i32 @REG_WR(%struct.rtl8366_smi* %55, i32 %56, i64 %59)
  store i32 5, i32* %10, align 4
  br label %61

61:                                               ; preds = %83, %44
  %62 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %63 = load i32, i32* @RTL8367B_IA_STATUS_REG, align 4
  %64 = call i32 @REG_RD(%struct.rtl8366_smi* %62, i32 %63, i64* %11)
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @RTL8367B_IA_STATUS_PHY_BUSY, align 8
  %67 = and i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %84

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %10, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %76 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ETIMEDOUT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %70
  %82 = call i32 @udelay(i32 1)
  br label %83

83:                                               ; preds = %81
  br i1 true, label %61, label %84

84:                                               ; preds = %83, %69
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %74, %41, %30, %23
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @REG_RD(%struct.rtl8366_smi*, i32, i64*) #1

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i64) #1

declare dso_local i64 @RTL8367B_INTERNAL_PHY_REG(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
