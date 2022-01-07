; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_uaccess.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_uaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_io_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_uaccess(%struct.kvm_vcpu* %0, %struct.vgic_io_device* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.vgic_io_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.vgic_io_device* %1, %struct.vgic_io_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %16 = load %struct.vgic_io_device*, %struct.vgic_io_device** %8, align 8
  %17 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %16, i32 0, i32 0
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @vgic_uaccess_write(%struct.kvm_vcpu* %15, i32* %17, i32 %18, i32* %19)
  store i32 %20, i32* %6, align 4
  br label %28

21:                                               ; preds = %5
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %23 = load %struct.vgic_io_device*, %struct.vgic_io_device** %8, align 8
  %24 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %23, i32 0, i32 0
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @vgic_uaccess_read(%struct.kvm_vcpu* %22, i32* %24, i32 %25, i32* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %21, %14
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @vgic_uaccess_write(%struct.kvm_vcpu*, i32*, i32, i32*) #1

declare dso_local i32 @vgic_uaccess_read(%struct.kvm_vcpu*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
