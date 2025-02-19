; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_pin.c_pin_set.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_pin.c_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pin_mode = common dso_local global i32* null, align 8
@PAD_XPD_DCDC_CONF = common dso_local global i32 0, align 4
@RTC_GPIO_CONF = common dso_local global i32 0, align 4
@RTC_GPIO_ENABLE = common dso_local global i32 0, align 4
@RTC_GPIO_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pin_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 16
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load i32*, i32** @pin_mode, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 128
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @PAD_XPD_DCDC_CONF, align 4
  %19 = load i32, i32* @PAD_XPD_DCDC_CONF, align 4
  %20 = call i32 @READ_PERI_REG(i32 %19)
  %21 = and i32 %20, -68
  %22 = or i32 %21, 1
  %23 = call i32 @WRITE_PERI_REG(i32 %18, i32 %22)
  %24 = load i32, i32* @RTC_GPIO_CONF, align 4
  %25 = load i32, i32* @RTC_GPIO_CONF, align 4
  %26 = call i32 @READ_PERI_REG(i32 %25)
  %27 = and i32 %26, -2
  %28 = call i32 @WRITE_PERI_REG(i32 %24, i32 %27)
  %29 = load i32, i32* @RTC_GPIO_ENABLE, align 4
  %30 = load i32, i32* @RTC_GPIO_ENABLE, align 4
  %31 = call i32 @READ_PERI_REG(i32 %30)
  %32 = and i32 %31, -2
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @WRITE_PERI_REG(i32 %29, i32 %34)
  %36 = load i32, i32* @RTC_GPIO_OUT, align 4
  %37 = load i32, i32* @RTC_GPIO_OUT, align 4
  %38 = call i32 @READ_PERI_REG(i32 %37)
  %39 = and i32 %38, -2
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @WRITE_PERI_REG(i32 %36, i32 %41)
  br label %86

43:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %44 = load i32*, i32** @pin_mode, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %62 [
    i32 130, label %49
    i32 128, label %50
    i32 129, label %51
  ]

49:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  br label %62

50:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %62

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %86

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %60

59:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %43, %61, %50, %49
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @gpio_output_set(i32 0, i32 0, i32 %72, i32 %73)
  br label %86

75:                                               ; preds = %62
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %3, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 1, %79
  %81 = load i32, i32* %3, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @gpio_output_set(i32 %78, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %10, %54, %75, %71
  ret void
}

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @gpio_output_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
