; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_timer.c___udelay.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_timer.c___udelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_SYS_HZ = common dso_local global i32 0, align 4
@TIMER_CLOCK = common dso_local global i32 0, align 4
@READ_TIMER_HW = common dso_local global i32 0, align 4
@TIMER_LOAD_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__udelay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ugt i64 %5, 100000
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = udiv i64 %8, 1000
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @CONFIG_SYS_HZ, align 4
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %3, align 4
  %16 = call i32 @get_timer(i32 0)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %22, %7
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @get_timer(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %17

23:                                               ; preds = %17
  br label %43

24:                                               ; preds = %1
  %25 = load i64, i64* %2, align 8
  %26 = load i32, i32* @TIMER_CLOCK, align 4
  %27 = sdiv i32 %26, 1000
  %28 = sext i32 %27 to i64
  %29 = mul i64 %25, %28
  %30 = udiv i64 %29, 1000
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @READ_TIMER_HW, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %41, %24
  %34 = load i32, i32* @READ_TIMER_HW, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @TIMER_LOAD_VAL, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %33

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %23
  ret void
}

declare dso_local i32 @get_timer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
