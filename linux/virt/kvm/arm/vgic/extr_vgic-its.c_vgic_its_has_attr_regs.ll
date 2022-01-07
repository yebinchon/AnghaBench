; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_has_attr_regs.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_has_attr_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { i32 }
%struct.kvm_device_attr = type { i32 }
%struct.vgic_register_region = type { i32 }

@GITS_TYPER = common dso_local global i32 0, align 4
@GITS_PIDR4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@its_registers = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, %struct.kvm_device_attr*)* @vgic_its_has_attr_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_has_attr_regs(%struct.kvm_device* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca %struct.kvm_device_attr*, align 8
  %6 = alloca %struct.vgic_register_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %5, align 8
  %9 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GITS_TYPER, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @GITS_PIDR4, align 4
  %18 = icmp sge i32 %16, %17
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ true, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 3, i32 7
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %19
  %31 = load i32, i32* @its_registers, align 4
  %32 = load i32, i32* @its_registers, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.vgic_register_region* @vgic_find_mmio_region(i32 %31, i32 %33, i32 %34)
  store %struct.vgic_register_region* %35, %struct.vgic_register_region** %6, align 8
  %36 = load %struct.vgic_register_region*, %struct.vgic_register_region** %6, align 8
  %37 = icmp ne %struct.vgic_register_region* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38, %27
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.vgic_register_region* @vgic_find_mmio_region(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
