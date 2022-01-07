; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_movall.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_movall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i32 }

@E_ITS_MOVALL_PROCNUM_OOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32*)* @vgic_its_cmd_handle_movall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_cmd_handle_movall(%struct.kvm* %0, %struct.vgic_its* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca %struct.kvm_vcpu*, align 8
  %12 = alloca %struct.vgic_irq*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @its_cmd_get_target_addr(i32* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @its_cmd_mask_field(i32* %18, i32 3, i32 16, i32 32)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.kvm*, %struct.kvm** %5, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.kvm*, %struct.kvm** %5, align 8
  %28 = getelementptr inbounds %struct.kvm, %struct.kvm* %27, i32 0, i32 0
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %3
  %32 = load i32, i32* @E_ITS_MOVALL_PROCNUM_OOR, align 4
  store i32 %32, i32* %4, align 4
  br label %79

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %79

38:                                               ; preds = %33
  %39 = load %struct.kvm*, %struct.kvm** %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %39, i64 %40)
  store %struct.kvm_vcpu* %41, %struct.kvm_vcpu** %10, align 8
  %42 = load %struct.kvm*, %struct.kvm** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %42, i64 %43)
  store %struct.kvm_vcpu* %44, %struct.kvm_vcpu** %11, align 8
  %45 = load %struct.kvm*, %struct.kvm** %5, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %47 = call i32 @vgic_copy_lpi_list(%struct.kvm* %45, %struct.kvm_vcpu* %46, i64** %13)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %4, align 4
  br label %79

52:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.kvm*, %struct.kvm** %5, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.vgic_irq* @vgic_get_irq(%struct.kvm* %58, i32* null, i64 %63)
  store %struct.vgic_irq* %64, %struct.vgic_irq** %12, align 8
  %65 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %67 = call i32 @update_affinity(%struct.vgic_irq* %65, %struct.kvm_vcpu* %66)
  %68 = load %struct.kvm*, %struct.kvm** %5, align 8
  %69 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %70 = call i32 @vgic_put_irq(%struct.kvm* %68, %struct.vgic_irq* %69)
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load %struct.kvm*, %struct.kvm** %5, align 8
  %76 = call i32 @vgic_its_invalidate_cache(%struct.kvm* %75)
  %77 = load i64*, i64** %13, align 8
  %78 = call i32 @kfree(i64* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %50, %37, %31
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @its_cmd_get_target_addr(i32*) #1

declare dso_local i64 @its_cmd_mask_field(i32*, i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i64) #1

declare dso_local i32 @vgic_copy_lpi_list(%struct.kvm*, %struct.kvm_vcpu*, i64**) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(%struct.kvm*, i32*, i64) #1

declare dso_local i32 @update_affinity(%struct.vgic_irq*, %struct.kvm_vcpu*) #1

declare dso_local i32 @vgic_put_irq(%struct.kvm*, %struct.vgic_irq*) #1

declare dso_local i32 @vgic_its_invalidate_cache(%struct.kvm*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
