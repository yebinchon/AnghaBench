; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/arm/extr_ws2812.c_sendByte.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/arm/extr_ws2812.c_sendByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGB_DI_PIN = common dso_local global i32 0, align 4
@T1H = common dso_local global i32 0, align 4
@T1L = common dso_local global i32 0, align 4
@T0H = common dso_local global i32 0, align 4
@T0L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sendByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 0, i8* %3, align 1
  br label %5

5:                                                ; preds = %37, %1
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 7, %12
  %14 = shl i32 1, %13
  %15 = and i32 %10, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = load i32, i32* @RGB_DI_PIN, align 4
  %20 = call i32 @writePinHigh(i32 %19)
  %21 = load i32, i32* @T1H, align 4
  %22 = call i32 @wait_ns(i32 %21)
  %23 = load i32, i32* @RGB_DI_PIN, align 4
  %24 = call i32 @writePinLow(i32 %23)
  %25 = load i32, i32* @T1L, align 4
  %26 = call i32 @wait_ns(i32 %25)
  br label %36

27:                                               ; preds = %9
  %28 = load i32, i32* @RGB_DI_PIN, align 4
  %29 = call i32 @writePinHigh(i32 %28)
  %30 = load i32, i32* @T0H, align 4
  %31 = call i32 @wait_ns(i32 %30)
  %32 = load i32, i32* @RGB_DI_PIN, align 4
  %33 = call i32 @writePinLow(i32 %32)
  %34 = load i32, i32* @T0L, align 4
  %35 = call i32 @wait_ns(i32 %34)
  br label %36

36:                                               ; preds = %27, %18
  br label %37

37:                                               ; preds = %36
  %38 = load i8, i8* %3, align 1
  %39 = add i8 %38, 1
  store i8 %39, i8* %3, align 1
  br label %5

40:                                               ; preds = %5
  ret void
}

declare dso_local i32 @writePinHigh(i32) #1

declare dso_local i32 @wait_ns(i32) #1

declare dso_local i32 @writePinLow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
