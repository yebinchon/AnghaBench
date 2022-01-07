; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_init_regs.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8367_RTL_MAGIC_ID_REG = common dso_local global i32 0, align 4
@RTL8367_RTL_MAGIC_ID_VAL = common dso_local global i32 0, align 4
@RTL8367_CHIP_VER_REG = common dso_local global i32 0, align 4
@RTL8367_CHIP_VER_RLVID_SHIFT = common dso_local global i32 0, align 4
@RTL8367_CHIP_VER_RLVID_MASK = common dso_local global i32 0, align 4
@RTL8367_CHIP_MODE_REG = common dso_local global i32 0, align 4
@RTL8367_CHIP_MODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknow phy data %04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"unknow rlvid %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8367_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_init_regs(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  %8 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %9 = load i32, i32* @RTL8367_RTL_MAGIC_ID_REG, align 4
  %10 = load i32, i32* @RTL8367_RTL_MAGIC_ID_VAL, align 4
  %11 = call i32 @REG_WR(%struct.rtl8366_smi* %8, i32 %9, i32 %10)
  %12 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %13 = load i32, i32* @RTL8367_CHIP_VER_REG, align 4
  %14 = call i32 @REG_RD(%struct.rtl8366_smi* %12, i32 %13, i32* %4)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RTL8367_CHIP_VER_RLVID_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @RTL8367_CHIP_VER_RLVID_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %21 = load i32, i32* @RTL8367_CHIP_MODE_REG, align 4
  %22 = call i32 @REG_RD(%struct.rtl8366_smi* %20, i32 %21, i32* %4)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RTL8367_CHIP_MODE_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %73 [
    i32 0, label %27
    i32 1, label %31
  ]

27:                                               ; preds = %1
  %28 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @rtl8367_init_regs0(%struct.rtl8366_smi* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %81

31:                                               ; preds = %1
  %32 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %33 = call i32 @rtl8367_write_phy_reg(%struct.rtl8366_smi* %32, i32 0, i32 31, i32 5)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %81

37:                                               ; preds = %31
  %38 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %39 = call i32 @rtl8367_write_phy_reg(%struct.rtl8366_smi* %38, i32 0, i32 5, i32 16382)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %81

43:                                               ; preds = %37
  %44 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %45 = call i32 @rtl8367_read_phy_reg(%struct.rtl8366_smi* %44, i32 0, i32 6, i32* %4)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %81

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 38123
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @rtl8367_init_regs1(%struct.rtl8366_smi* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %72

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 8452
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @rtl8367_init_regs2(%struct.rtl8366_smi* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %71

63:                                               ; preds = %56
  %64 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %65 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %83

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %52
  br label %81

73:                                               ; preds = %1
  %74 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %75 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %73, %72, %48, %42, %36, %27
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %63
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @rtl8367_init_regs0(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @rtl8367_write_phy_reg(%struct.rtl8366_smi*, i32, i32, i32) #1

declare dso_local i32 @rtl8367_read_phy_reg(%struct.rtl8366_smi*, i32, i32, i32*) #1

declare dso_local i32 @rtl8367_init_regs1(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @rtl8367_init_regs2(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
