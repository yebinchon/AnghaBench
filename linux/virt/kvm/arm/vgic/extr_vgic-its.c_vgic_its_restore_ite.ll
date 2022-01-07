; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_ite.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_ite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.its_device = type { i32 }
%struct.its_collection = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { %struct.vgic_irq* }
%struct.its_ite = type { %struct.its_ite* }

@KVM_ITS_ITE_ICID_MASK = common dso_local global i64 0, align 8
@KVM_ITS_ITE_PINTID_MASK = common dso_local global i64 0, align 8
@KVM_ITS_ITE_PINTID_SHIFT = common dso_local global i64 0, align 8
@VGIC_MIN_LPI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KVM_ITS_ITE_NEXT_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, i64, i8*, i8*)* @vgic_its_restore_ite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_restore_ite(%struct.vgic_its* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.its_device*, align 8
  %11 = alloca %struct.its_collection*, align 8
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca %struct.kvm_vcpu*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.vgic_irq*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.its_ite*, align 8
  %20 = alloca i64, align 8
  store %struct.vgic_its* %0, %struct.vgic_its** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.its_device*
  store %struct.its_device* %22, %struct.its_device** %10, align 8
  %23 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %24 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.kvm*, %struct.kvm** %26, align 8
  store %struct.kvm* %27, %struct.kvm** %12, align 8
  store %struct.kvm_vcpu* null, %struct.kvm_vcpu** %13, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to i64*
  store i64* %29, i64** %15, align 8
  %30 = load i64*, i64** %15, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i64 @le64_to_cpu(i64 %32)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @KVM_ITS_ITE_ICID_MASK, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @KVM_ITS_ITE_PINTID_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @KVM_ITS_ITE_PINTID_SHIFT, align 8
  %41 = ashr i64 %39, %40
  store i64 %41, i64* %18, align 8
  %42 = load i64, i64* %18, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %118

45:                                               ; preds = %4
  %46 = load i64, i64* %18, align 8
  %47 = load i64, i64* @VGIC_MIN_LPI, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %118

52:                                               ; preds = %45
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @KVM_ITS_ITE_NEXT_SHIFT, align 8
  %55 = ashr i64 %53, %54
  store i64 %55, i64* %20, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %20, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.its_device*, %struct.its_device** %10, align 8
  %60 = getelementptr inbounds %struct.its_device, %struct.its_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @BIT_ULL(i32 %61)
  %63 = icmp sge i64 %58, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %118

67:                                               ; preds = %52
  %68 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %69 = load i64, i64* %17, align 8
  %70 = call %struct.its_collection* @find_collection(%struct.vgic_its* %68, i64 %69)
  store %struct.its_collection* %70, %struct.its_collection** %11, align 8
  %71 = load %struct.its_collection*, %struct.its_collection** %11, align 8
  %72 = icmp ne %struct.its_collection* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %118

76:                                               ; preds = %67
  %77 = load %struct.its_device*, %struct.its_device** %10, align 8
  %78 = load %struct.its_collection*, %struct.its_collection** %11, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call %struct.vgic_irq* @vgic_its_alloc_ite(%struct.its_device* %77, %struct.its_collection* %78, i64 %79)
  %81 = bitcast %struct.vgic_irq* %80 to %struct.its_ite*
  store %struct.its_ite* %81, %struct.its_ite** %19, align 8
  %82 = load %struct.its_ite*, %struct.its_ite** %19, align 8
  %83 = bitcast %struct.its_ite* %82 to %struct.vgic_irq*
  %84 = call i64 @IS_ERR(%struct.vgic_irq* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load %struct.its_ite*, %struct.its_ite** %19, align 8
  %88 = bitcast %struct.its_ite* %87 to %struct.vgic_irq*
  %89 = call i32 @PTR_ERR(%struct.vgic_irq* %88)
  store i32 %89, i32* %5, align 4
  br label %118

90:                                               ; preds = %76
  %91 = load %struct.its_collection*, %struct.its_collection** %11, align 8
  %92 = call i64 @its_is_collection_mapped(%struct.its_collection* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.kvm*, %struct.kvm** %12, align 8
  %96 = load %struct.its_collection*, %struct.its_collection** %11, align 8
  %97 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %95, i32 %98)
  store %struct.kvm_vcpu* %99, %struct.kvm_vcpu** %13, align 8
  br label %100

100:                                              ; preds = %94, %90
  %101 = load %struct.kvm*, %struct.kvm** %12, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %104 = call %struct.vgic_irq* @vgic_add_lpi(%struct.kvm* %101, i64 %102, %struct.kvm_vcpu* %103)
  store %struct.vgic_irq* %104, %struct.vgic_irq** %16, align 8
  %105 = load %struct.vgic_irq*, %struct.vgic_irq** %16, align 8
  %106 = call i64 @IS_ERR(%struct.vgic_irq* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.vgic_irq*, %struct.vgic_irq** %16, align 8
  %110 = call i32 @PTR_ERR(%struct.vgic_irq* %109)
  store i32 %110, i32* %5, align 4
  br label %118

111:                                              ; preds = %100
  %112 = load %struct.vgic_irq*, %struct.vgic_irq** %16, align 8
  %113 = bitcast %struct.vgic_irq* %112 to %struct.its_ite*
  %114 = load %struct.its_ite*, %struct.its_ite** %19, align 8
  %115 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %114, i32 0, i32 0
  store %struct.its_ite* %113, %struct.its_ite** %115, align 8
  %116 = load i64, i64* %20, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %111, %108, %86, %73, %64, %49, %44
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local %struct.its_collection* @find_collection(%struct.vgic_its*, i64) #1

declare dso_local %struct.vgic_irq* @vgic_its_alloc_ite(%struct.its_device*, %struct.its_collection*, i64) #1

declare dso_local i64 @IS_ERR(%struct.vgic_irq*) #1

declare dso_local i32 @PTR_ERR(%struct.vgic_irq*) #1

declare dso_local i64 @its_is_collection_mapped(%struct.its_collection*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i32) #1

declare dso_local %struct.vgic_irq* @vgic_add_lpi(%struct.kvm*, i64, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
