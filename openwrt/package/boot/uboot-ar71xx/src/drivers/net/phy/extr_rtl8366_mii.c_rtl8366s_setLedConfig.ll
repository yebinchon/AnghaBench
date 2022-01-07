; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_setLedConfig.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_setLedConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTL8366S_LED_GROUP_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rtl8366s_setLedConfig: invalid led group\0A\00", align 1
@RTL8366S_LEDCONF_LEDFORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"rtl8366s_setLedConfig: invalid led config\0A\00", align 1
@RTL8366S_LED_INDICATED_CONF_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"rtl8366s_setLedConfig: failed to get led register!\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"rtl8366s_setLedConfig: failed to set led register!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366s_setLedConfig(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RTL8366S_LED_GROUP_MAX, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RTL8366S_LEDCONF_LEDFORCE, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

18:                                               ; preds = %12
  %19 = load i32, i32* @RTL8366S_LED_INDICATED_CONF_REG, align 4
  %20 = call i64 @rtl8366_readRegister(i32 %19, i32* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 4
  %27 = shl i32 15, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 4
  %34 = shl i32 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @RTL8366S_LED_INDICATED_CONF_REG, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @rtl8366_writeRegister(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

43:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %22, %16, %10
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i64 @rtl8366_readRegister(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @rtl8366_writeRegister(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
