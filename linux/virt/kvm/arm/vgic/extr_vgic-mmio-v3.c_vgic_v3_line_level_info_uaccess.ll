; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_v3_line_level_info_uaccess.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_v3_line_level_info_uaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v3_line_level_info_uaccess(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = srem i32 %10, 32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %31

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vgic_write_irq_line_level_info(%struct.kvm_vcpu* %20, i32 %21, i32 %23)
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @vgic_read_irq_line_level_info(%struct.kvm_vcpu* %26, i32 %27)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %19
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @vgic_write_irq_line_level_info(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @vgic_read_irq_line_level_info(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
