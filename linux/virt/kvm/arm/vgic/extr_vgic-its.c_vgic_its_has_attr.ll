; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_has_attr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_has_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { i32 }
%struct.kvm_device_attr = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, %struct.kvm_device_attr*)* @vgic_its_has_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_has_attr(%struct.kvm_device* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca %struct.kvm_device_attr*, align 8
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %5, align 8
  %6 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %28 [
    i32 131, label %9
    i32 130, label %15
    i32 129, label %24
  ]

9:                                                ; preds = %2
  %10 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %14 [
    i32 128, label %13
  ]

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %31

14:                                               ; preds = %9
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %23 [
    i32 132, label %19
    i32 135, label %20
    i32 133, label %21
    i32 134, label %22
  ]

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %31

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %31

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %31

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %31

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %26 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %27 = call i32 @vgic_its_has_attr_regs(%struct.kvm_device* %25, %struct.kvm_device_attr* %26)
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %2, %23, %14
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %24, %22, %21, %20, %19, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @vgic_its_has_attr_regs(%struct.kvm_device*, %struct.kvm_device_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
