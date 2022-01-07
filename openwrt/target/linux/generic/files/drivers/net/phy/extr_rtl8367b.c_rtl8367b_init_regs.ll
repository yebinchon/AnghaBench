; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_init_regs.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8367b_initval = type { i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8367B_RTL_MAGIC_ID_REG = common dso_local global i32 0, align 4
@RTL8367B_RTL_MAGIC_ID_VAL = common dso_local global i32 0, align 4
@RTL8367B_CHIP_VER_REG = common dso_local global i32 0, align 4
@RTL8367B_CHIP_VER_RLVID_SHIFT = common dso_local global i32 0, align 4
@RTL8367B_CHIP_VER_RLVID_MASK = common dso_local global i32 0, align 4
@rtl8367r_vb_initvals_0 = common dso_local global %struct.rtl8367b_initval* null, align 8
@rtl8367r_vb_initvals_1 = common dso_local global %struct.rtl8367b_initval* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"unknow rlvid %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8367b_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_init_regs(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca %struct.rtl8367b_initval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  %9 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %10 = load i32, i32* @RTL8367B_RTL_MAGIC_ID_REG, align 4
  %11 = load i32, i32* @RTL8367B_RTL_MAGIC_ID_VAL, align 4
  %12 = call i32 @REG_WR(%struct.rtl8366_smi* %9, i32 %10, i32 %11)
  %13 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %14 = load i32, i32* @RTL8367B_CHIP_VER_REG, align 4
  %15 = call i32 @REG_RD(%struct.rtl8366_smi* %13, i32 %14, i32* %5)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RTL8367B_CHIP_VER_RLVID_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32, i32* @RTL8367B_CHIP_VER_RLVID_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %30 [
    i32 0, label %22
    i32 1, label %26
  ]

22:                                               ; preds = %1
  %23 = load %struct.rtl8367b_initval*, %struct.rtl8367b_initval** @rtl8367r_vb_initvals_0, align 8
  store %struct.rtl8367b_initval* %23, %struct.rtl8367b_initval** %4, align 8
  %24 = load %struct.rtl8367b_initval*, %struct.rtl8367b_initval** @rtl8367r_vb_initvals_0, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.rtl8367b_initval* %24)
  store i32 %25, i32* %7, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load %struct.rtl8367b_initval*, %struct.rtl8367b_initval** @rtl8367r_vb_initvals_1, align 8
  store %struct.rtl8367b_initval* %27, %struct.rtl8367b_initval** %4, align 8
  %28 = load %struct.rtl8367b_initval*, %struct.rtl8367b_initval** @rtl8367r_vb_initvals_1, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.rtl8367b_initval* %28)
  store i32 %29, i32* %7, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %32 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %26, %22
  %39 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %40 = load %struct.rtl8367b_initval*, %struct.rtl8367b_initval** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @rtl8367b_write_initvals(%struct.rtl8366_smi* %39, %struct.rtl8367b_initval* %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %30
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rtl8367b_initval*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rtl8367b_write_initvals(%struct.rtl8366_smi*, %struct.rtl8367b_initval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
