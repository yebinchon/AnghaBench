; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_gpio.c_cns3xxx_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_gpio.c_cns3xxx_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.cns3xxx_gpio_chip = type { i32, i64 }
%struct.irq_chip = type { i32 }

@GPIO_INTERRUPT_RAW_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @cns3xxx_gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cns3xxx_gpio_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.cns3xxx_gpio_chip*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.cns3xxx_gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc* %7)
  store %struct.cns3xxx_gpio_chip* %8, %struct.cns3xxx_gpio_chip** %3, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %4, align 8
  %11 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call i32 @chained_irq_enter(%struct.irq_chip* %11, %struct.irq_desc* %12)
  %14 = load %struct.cns3xxx_gpio_chip*, %struct.cns3xxx_gpio_chip** %3, align 8
  %15 = getelementptr inbounds %struct.cns3xxx_gpio_chip, %struct.cns3xxx_gpio_chip* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GPIO_INTERRUPT_RAW_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @__raw_readl(i64 %18)
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %37, %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.cns3xxx_gpio_chip*, %struct.cns3xxx_gpio_chip** %3, align 8
  %31 = getelementptr inbounds %struct.cns3xxx_gpio_chip, %struct.cns3xxx_gpio_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @irq_find_mapping(i32 %32, i32 %33)
  %35 = call i32 @generic_handle_irq(i32 %34)
  br label %36

36:                                               ; preds = %29, %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %42 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %43 = call i32 @chained_irq_exit(%struct.irq_chip* %41, %struct.irq_desc* %42)
  ret void
}

declare dso_local %struct.cns3xxx_gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
