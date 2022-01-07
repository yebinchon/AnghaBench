; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_initialize.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"rtl8366s_initialize: start setup\0A\00", align 1
@RTL8366S_CHIP_ID_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Realtek 8366SR switch ID %#04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"rtl8366s_initialize: found unsupported switch\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"rtl8366s_initialize: init chip failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"rtl8366s_initialize: set green ethernet failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"rtl8366s_initialize: set CPU port failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366s_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @smi_init()
  %5 = load i32, i32* @RTL8366S_CHIP_ID_REG, align 4
  %6 = call i32 @rtl8366_readRegister(i32 %5, i32* %2)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 33638
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %29

13:                                               ; preds = %0
  %14 = call i64 (...) @rtl8366s_initChip()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %29

18:                                               ; preds = %13
  %19 = call i64 @rtl8366s_setGreenEthernet(i32 1, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %29

23:                                               ; preds = %18
  %24 = call i64 @rtl8366s_setCPUPort(i32 5, i32 1, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %29

28:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %26, %21, %16, %11
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @smi_init(...) #1

declare dso_local i32 @rtl8366_readRegister(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @rtl8366s_initChip(...) #1

declare dso_local i64 @rtl8366s_setGreenEthernet(i32, i32) #1

declare dso_local i64 @rtl8366s_setCPUPort(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
