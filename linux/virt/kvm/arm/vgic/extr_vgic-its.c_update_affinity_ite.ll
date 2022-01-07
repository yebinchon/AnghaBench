; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_update_affinity_ite.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_update_affinity_ite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.its_ite = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.its_ite*)* @update_affinity_ite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_affinity_ite(%struct.kvm* %0, %struct.its_ite* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.its_ite*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.its_ite* %1, %struct.its_ite** %4, align 8
  %6 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  %7 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @its_is_collection_mapped(%struct.TYPE_2__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  %15 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %13, i32 %18)
  store %struct.kvm_vcpu* %19, %struct.kvm_vcpu** %5, align 8
  %20 = load %struct.its_ite*, %struct.its_ite** %4, align 8
  %21 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = call i32 @update_affinity(i32 %22, %struct.kvm_vcpu* %23)
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @its_is_collection_mapped(%struct.TYPE_2__*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i32) #1

declare dso_local i32 @update_affinity(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
