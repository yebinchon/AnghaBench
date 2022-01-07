; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_invall.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_invall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }
%struct.its_collection = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.vgic_irq = type { i32 }

@E_ITS_INVALL_UNMAPPED_COLLECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32*)* @vgic_its_cmd_handle_invall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_cmd_handle_invall(%struct.kvm* %0, %struct.vgic_its* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.its_collection*, align 8
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca %struct.vgic_irq*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @its_cmd_get_collection(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.its_collection* @find_collection(%struct.vgic_its* %17, i32 %18)
  store %struct.its_collection* %19, %struct.its_collection** %9, align 8
  %20 = load %struct.its_collection*, %struct.its_collection** %9, align 8
  %21 = call i32 @its_is_collection_mapped(%struct.its_collection* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @E_ITS_INVALL_UNMAPPED_COLLECTION, align 4
  store i32 %24, i32* %4, align 4
  br label %84

25:                                               ; preds = %3
  %26 = load %struct.kvm*, %struct.kvm** %5, align 8
  %27 = load %struct.its_collection*, %struct.its_collection** %9, align 8
  %28 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %26, i32 %29)
  store %struct.kvm_vcpu* %30, %struct.kvm_vcpu** %10, align 8
  %31 = load %struct.kvm*, %struct.kvm** %5, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %33 = call i32 @vgic_copy_lpi_list(%struct.kvm* %31, %struct.kvm_vcpu* %32, i32** %12)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %4, align 4
  br label %84

38:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load %struct.kvm*, %struct.kvm** %5, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.vgic_irq* @vgic_get_irq(%struct.kvm* %44, i32* null, i32 %49)
  store %struct.vgic_irq* %50, %struct.vgic_irq** %11, align 8
  %51 = load %struct.vgic_irq*, %struct.vgic_irq** %11, align 8
  %52 = icmp ne %struct.vgic_irq* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %62

54:                                               ; preds = %43
  %55 = load %struct.kvm*, %struct.kvm** %5, align 8
  %56 = load %struct.vgic_irq*, %struct.vgic_irq** %11, align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %58 = call i32 @update_lpi_config(%struct.kvm* %55, %struct.vgic_irq* %56, %struct.kvm_vcpu* %57, i32 0)
  %59 = load %struct.kvm*, %struct.kvm** %5, align 8
  %60 = load %struct.vgic_irq*, %struct.vgic_irq** %11, align 8
  %61 = call i32 @vgic_put_irq(%struct.kvm* %59, %struct.vgic_irq* %60)
  br label %62

62:                                               ; preds = %54, %53
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @kfree(i32* %66)
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @its_invall_vpe(%struct.TYPE_8__* %81)
  br label %83

83:                                               ; preds = %76, %65
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %36, %23
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @its_cmd_get_collection(i32*) #1

declare dso_local %struct.its_collection* @find_collection(%struct.vgic_its*, i32) #1

declare dso_local i32 @its_is_collection_mapped(%struct.its_collection*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i32) #1

declare dso_local i32 @vgic_copy_lpi_list(%struct.kvm*, %struct.kvm_vcpu*, i32**) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(%struct.kvm*, i32*, i32) #1

declare dso_local i32 @update_lpi_config(%struct.kvm*, %struct.vgic_irq*, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vgic_put_irq(%struct.kvm*, %struct.vgic_irq*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @its_invall_vpe(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
