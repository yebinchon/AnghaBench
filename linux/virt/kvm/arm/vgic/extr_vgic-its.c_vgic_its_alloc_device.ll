; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_device = type { i32, i32, i32, i32, i32 }
%struct.vgic_its = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_device* (%struct.vgic_its*, i32, i32, i32)* @vgic_its_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_device* @vgic_its_alloc_device(%struct.vgic_its* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.its_device*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.its_device*, align 8
  store %struct.vgic_its* %0, %struct.vgic_its** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.its_device* @kzalloc(i32 20, i32 %11)
  store %struct.its_device* %12, %struct.its_device** %10, align 8
  %13 = load %struct.its_device*, %struct.its_device** %10, align 8
  %14 = icmp ne %struct.its_device* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.its_device* @ERR_PTR(i32 %17)
  store %struct.its_device* %18, %struct.its_device** %5, align 8
  br label %38

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.its_device*, %struct.its_device** %10, align 8
  %22 = getelementptr inbounds %struct.its_device, %struct.its_device* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.its_device*, %struct.its_device** %10, align 8
  %25 = getelementptr inbounds %struct.its_device, %struct.its_device* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.its_device*, %struct.its_device** %10, align 8
  %28 = getelementptr inbounds %struct.its_device, %struct.its_device* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.its_device*, %struct.its_device** %10, align 8
  %30 = getelementptr inbounds %struct.its_device, %struct.its_device* %29, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.its_device*, %struct.its_device** %10, align 8
  %33 = getelementptr inbounds %struct.its_device, %struct.its_device* %32, i32 0, i32 0
  %34 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %35 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %34, i32 0, i32 0
  %36 = call i32 @list_add_tail(i32* %33, i32* %35)
  %37 = load %struct.its_device*, %struct.its_device** %10, align 8
  store %struct.its_device* %37, %struct.its_device** %5, align 8
  br label %38

38:                                               ; preds = %19, %15
  %39 = load %struct.its_device*, %struct.its_device** %5, align 8
  ret %struct.its_device* %39
}

declare dso_local %struct.its_device* @kzalloc(i32, i32) #1

declare dso_local %struct.its_device* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
