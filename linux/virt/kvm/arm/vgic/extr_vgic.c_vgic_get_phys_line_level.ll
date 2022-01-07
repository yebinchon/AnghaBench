; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_get_phys_line_level.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_get_phys_line_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_irq = type { i32 (i32)*, i32, i32, i32 }

@IRQCHIP_STATE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_get_phys_line_level(%struct.vgic_irq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vgic_irq*, align 8
  %4 = alloca i32, align 4
  store %struct.vgic_irq* %0, %struct.vgic_irq** %3, align 8
  %5 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %6 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %13 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %12, i32 0, i32 0
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = icmp ne i32 (i32)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %18 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %21 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %19(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %26 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IRQCHIP_STATE_PENDING, align 4
  %29 = call i32 @irq_get_irqchip_state(i32 %27, i32 %28, i32* %4)
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irq_get_irqchip_state(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
