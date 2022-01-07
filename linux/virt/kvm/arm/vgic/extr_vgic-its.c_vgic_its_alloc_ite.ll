; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_alloc_ite.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_alloc_ite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_ite = type { i32, %struct.its_collection*, i32 }
%struct.its_device = type { i32 }
%struct.its_collection = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_ite* (%struct.its_device*, %struct.its_collection*, i32)* @vgic_its_alloc_ite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_ite* @vgic_its_alloc_ite(%struct.its_device* %0, %struct.its_collection* %1, i32 %2) #0 {
  %4 = alloca %struct.its_ite*, align 8
  %5 = alloca %struct.its_device*, align 8
  %6 = alloca %struct.its_collection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.its_ite*, align 8
  store %struct.its_device* %0, %struct.its_device** %5, align 8
  store %struct.its_collection* %1, %struct.its_collection** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.its_ite* @kzalloc(i32 24, i32 %9)
  store %struct.its_ite* %10, %struct.its_ite** %8, align 8
  %11 = load %struct.its_ite*, %struct.its_ite** %8, align 8
  %12 = icmp ne %struct.its_ite* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.its_ite* @ERR_PTR(i32 %15)
  store %struct.its_ite* %16, %struct.its_ite** %4, align 8
  br label %30

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.its_ite*, %struct.its_ite** %8, align 8
  %20 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.its_collection*, %struct.its_collection** %6, align 8
  %22 = load %struct.its_ite*, %struct.its_ite** %8, align 8
  %23 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %22, i32 0, i32 1
  store %struct.its_collection* %21, %struct.its_collection** %23, align 8
  %24 = load %struct.its_ite*, %struct.its_ite** %8, align 8
  %25 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %24, i32 0, i32 0
  %26 = load %struct.its_device*, %struct.its_device** %5, align 8
  %27 = getelementptr inbounds %struct.its_device, %struct.its_device* %26, i32 0, i32 0
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  %29 = load %struct.its_ite*, %struct.its_ite** %8, align 8
  store %struct.its_ite* %29, %struct.its_ite** %4, align 8
  br label %30

30:                                               ; preds = %17, %13
  %31 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  ret %struct.its_ite* %31
}

declare dso_local %struct.its_ite* @kzalloc(i32, i32) #1

declare dso_local %struct.its_ite* @ERR_PTR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
