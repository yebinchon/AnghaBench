; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_apa102.c_apa102_send_byte.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_apa102.c_apa102_send_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLATFORM_GPIO_HIGH = common dso_local global i32 0, align 4
@PLATFORM_GPIO_LOW = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @apa102_send_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apa102_send_byte(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %36, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PLATFORM_GPIO_HIGH, align 4
  %18 = call i32 @GPIO_OUTPUT_SET(i32 %16, i32 %17)
  br label %23

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PLATFORM_GPIO_LOW, align 4
  %22 = call i32 @GPIO_OUTPUT_SET(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PLATFORM_GPIO_HIGH, align 4
  %26 = call i32 @GPIO_OUTPUT_SET(i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @NOP, align 4
  %30 = load i32, i32* @NOP, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PLATFORM_GPIO_LOW, align 4
  %33 = call i32 @GPIO_OUTPUT_SET(i32 %31, i32 %32)
  %34 = load i32, i32* @NOP, align 4
  %35 = load i32, i32* @NOP, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %8

39:                                               ; preds = %8
  ret void
}

declare dso_local i32 @GPIO_OUTPUT_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
