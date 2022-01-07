; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_inv.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }
%struct.its_ite = type { i32 }

@E_ITS_INV_UNMAPPED_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32*)* @vgic_its_cmd_handle_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_cmd_handle_inv(%struct.kvm* %0, %struct.vgic_its* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.its_ite*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @its_cmd_get_deviceid(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @its_cmd_get_id(i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.its_ite* @find_ite(%struct.vgic_its* %15, i32 %16, i32 %17)
  store %struct.its_ite* %18, %struct.its_ite** %10, align 8
  %19 = load %struct.its_ite*, %struct.its_ite** %10, align 8
  %20 = icmp ne %struct.its_ite* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @E_ITS_INV_UNMAPPED_INTERRUPT, align 4
  store i32 %22, i32* %4, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.kvm*, %struct.kvm** %5, align 8
  %25 = load %struct.its_ite*, %struct.its_ite** %10, align 8
  %26 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @update_lpi_config(%struct.kvm* %24, i32 %27, i32* null, i32 1)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @its_cmd_get_deviceid(i32*) #1

declare dso_local i32 @its_cmd_get_id(i32*) #1

declare dso_local %struct.its_ite* @find_ite(%struct.vgic_its*, i32, i32) #1

declare dso_local i32 @update_lpi_config(%struct.kvm*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
