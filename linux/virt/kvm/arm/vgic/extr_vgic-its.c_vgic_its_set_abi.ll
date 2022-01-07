; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_set_abi.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_set_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { i32 }
%struct.vgic_its_abi = type { i32 (%struct.vgic_its.0*)* }
%struct.vgic_its.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, i32)* @vgic_its_set_abi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_set_abi(%struct.vgic_its* %0, i32 %1) #0 {
  %3 = alloca %struct.vgic_its*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vgic_its_abi*, align 8
  store %struct.vgic_its* %0, %struct.vgic_its** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %8 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %10 = call %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its* %9)
  store %struct.vgic_its_abi* %10, %struct.vgic_its_abi** %5, align 8
  %11 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %5, align 8
  %12 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %11, i32 0, i32 0
  %13 = load i32 (%struct.vgic_its.0*)*, i32 (%struct.vgic_its.0*)** %12, align 8
  %14 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %15 = bitcast %struct.vgic_its* %14 to %struct.vgic_its.0*
  %16 = call i32 %13(%struct.vgic_its.0* %15)
  ret i32 %16
}

declare dso_local %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
