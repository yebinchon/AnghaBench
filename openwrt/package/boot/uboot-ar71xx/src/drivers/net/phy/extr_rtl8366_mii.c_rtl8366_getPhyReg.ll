; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366_getPhyReg.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366_getPhyReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTL8366S_PHY_NO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rtl8366s: invalid phy number!\0A\00", align 1
@RTL8366S_PHY_ADDR_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"rtl8366s: invalid phy register number!\0A\00", align 1
@RTL8366S_PHY_ACCESS_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366S_PHY_CTRL_READ = common dso_local global i32 0, align 4
@RTL8366S_PHY_NO_OFFSET = common dso_local global i32 0, align 4
@RTL8366S_PHY_REG_MASK = common dso_local global i32 0, align 4
@RTL8366S_PHY_ACCESS_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @rtl8366_getPhyReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366_getPhyReg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RTL8366S_PHY_NO_MAX, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %53

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RTL8366S_PHY_ADDR_MAX, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %53

21:                                               ; preds = %15
  %22 = load i32, i32* @RTL8366S_PHY_ACCESS_CTRL_REG, align 4
  %23 = load i32, i32* @RTL8366S_PHY_CTRL_READ, align 4
  %24 = call i64 @rtl8366_writeRegister(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %53

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @RTL8366S_PHY_NO_OFFSET, align 4
  %30 = add nsw i32 %28, %29
  %31 = shl i32 1, %30
  %32 = or i32 32768, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @RTL8366S_PHY_REG_MASK, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @rtl8366_writeRegister(i32 %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %53

41:                                               ; preds = %27
  %42 = load i32, i32* @RTL8366S_PHY_ACCESS_DATA_REG, align 4
  %43 = call i64 @rtl8366_readRegister(i32 %42, i32* %9)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %53

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %45, %40, %26, %19, %13
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @rtl8366_writeRegister(i32, i32) #1

declare dso_local i64 @rtl8366_readRegister(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
