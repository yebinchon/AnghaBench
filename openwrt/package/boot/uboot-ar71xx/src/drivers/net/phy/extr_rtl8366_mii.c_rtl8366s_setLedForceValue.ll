; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_setLedForceValue.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_setLedForceValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTL8366S_LED_0_1_FORCE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"rtl8366s_setLedForceValue: failed to set led register!\0A\00", align 1
@RTL8366S_LED_2_3_FORCE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366s_setLedForceValue(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 63
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 63
  %15 = shl i32 %14, 6
  %16 = or i32 %12, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @RTL8366S_LED_0_1_FORCE_REG, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @rtl8366_writeRegister(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %37

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 63
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 63
  %28 = shl i32 %27, 6
  %29 = or i32 %25, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @RTL8366S_LED_2_3_FORCE_REG, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @rtl8366_writeRegister(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %37

36:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %34, %21
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @rtl8366_writeRegister(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
