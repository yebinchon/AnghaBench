; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_pinmux.c_pinmux_set.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_pinmux.c_pinmux_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PINMUX_BANK_MFA = common dso_local global i32 0, align 4
@SYS_CONTROL_BASE = common dso_local global i64 0, align 8
@SEC_CONTROL_BASE = common dso_local global i64 0, align 8
@PINMUX_SECONDARY_SEL = common dso_local global i64 0, align 8
@PINMUX_TERTIARY_SEL = common dso_local global i64 0, align 8
@PINMUX_QUATERNARY_SEL = common dso_local global i64 0, align 8
@PINMUX_DEBUG_SEL = common dso_local global i64 0, align 8
@PINMUX_ALTERNATIVE_SEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pinmux_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @SYS_CONTROL_BASE, align 8
  store i64 %13, i64* %8, align 8
  br label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @SEC_CONTROL_BASE, align 8
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @PINMUX_SECONDARY_SEL, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = call i32 @clrbits_le32(i64 %19, i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @PINMUX_TERTIARY_SEL, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = call i32 @clrbits_le32(i64 %25, i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @PINMUX_QUATERNARY_SEL, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = call i32 @clrbits_le32(i64 %31, i32 %33)
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @PINMUX_DEBUG_SEL, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = call i32 @clrbits_le32(i64 %37, i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @PINMUX_ALTERNATIVE_SEL, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = call i32 @clrbits_le32(i64 %43, i32 %45)
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %49 [
    i32 128, label %48
    i32 133, label %50
    i32 132, label %54
    i32 131, label %58
    i32 129, label %62
    i32 130, label %66
  ]

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %16, %48
  br label %75

50:                                               ; preds = %16
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @PINMUX_SECONDARY_SEL, align 8
  %53 = add nsw i64 %51, %52
  store i64 %53, i64* %7, align 8
  br label %70

54:                                               ; preds = %16
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @PINMUX_TERTIARY_SEL, align 8
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %7, align 8
  br label %70

58:                                               ; preds = %16
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @PINMUX_QUATERNARY_SEL, align 8
  %61 = add nsw i64 %59, %60
  store i64 %61, i64* %7, align 8
  br label %70

62:                                               ; preds = %16
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @PINMUX_DEBUG_SEL, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, i64* %7, align 8
  br label %70

66:                                               ; preds = %16
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @PINMUX_ALTERNATIVE_SEL, align 8
  %69 = add nsw i64 %67, %68
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %66, %62, %58, %54, %50
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = call i32 @setbits_le32(i64 %71, i32 %73)
  br label %75

75:                                               ; preds = %70, %49
  ret void
}

declare dso_local i32 @clrbits_le32(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @setbits_le32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
