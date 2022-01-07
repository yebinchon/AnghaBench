; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/gpio/extr_gpio-latch.c_gpio_latch_direction_output.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/gpio/extr_gpio-latch.c_gpio_latch_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_latch_chip = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @gpio_latch_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_latch_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_latch_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.gpio_latch_chip* @to_gpio_latch_chip(%struct.gpio_chip* %12)
  store %struct.gpio_latch_chip* %13, %struct.gpio_latch_chip** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %15 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %23 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %29 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %26, %3
  %37 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @gpio_latch_lock(%struct.gpio_latch_chip* %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @gpio_direction_output(i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @gpio_latch_unlock(%struct.gpio_latch_chip* %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

declare dso_local %struct.gpio_latch_chip* @to_gpio_latch_chip(%struct.gpio_chip*) #1

declare dso_local i32 @gpio_latch_lock(%struct.gpio_latch_chip*, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_latch_unlock(%struct.gpio_latch_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
