; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_kvm_vgic_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_kvm_vgic_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i64 }
%struct.TYPE_5__ = type { %struct.vgic_cpu }
%struct.vgic_cpu = type { %struct.vgic_irq*, i32, i32, %struct.TYPE_7__ }
%struct.vgic_irq = type { i32, i32, i32, i32, %struct.kvm_vcpu*, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@VGIC_ADDR_UNDEF = common dso_local global i32 0, align 4
@VGIC_NR_PRIVATE_IRQS = common dso_local global i32 0, align 4
@VGIC_CONFIG_EDGE = common dso_local global i32 0, align 4
@VGIC_CONFIG_LEVEL = common dso_local global i32 0, align 4
@KVM_DEV_TYPE_ARM_VGIC_V3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vgic_vcpu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vgic_cpu*, align 8
  %5 = alloca %struct.vgic_dist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vgic_irq*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.vgic_cpu* %11, %struct.vgic_cpu** %4, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.vgic_dist* %16, %struct.vgic_dist** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* @VGIC_ADDR_UNDEF, align 4
  %18 = load %struct.vgic_cpu*, %struct.vgic_cpu** %4, align 8
  %19 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.vgic_cpu*, %struct.vgic_cpu** %4, align 8
  %22 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %21, i32 0, i32 2
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.vgic_cpu*, %struct.vgic_cpu** %4, align 8
  %25 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %24, i32 0, i32 1
  %26 = call i32 @raw_spin_lock_init(i32* %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %69, %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @VGIC_NR_PRIVATE_IRQS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = load %struct.vgic_cpu*, %struct.vgic_cpu** %4, align 8
  %33 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %32, i32 0, i32 0
  %34 = load %struct.vgic_irq*, %struct.vgic_irq** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %34, i64 %36
  store %struct.vgic_irq* %37, %struct.vgic_irq** %8, align 8
  %38 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %39 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %38, i32 0, i32 7
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %42 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %41, i32 0, i32 6
  %43 = call i32 @raw_spin_lock_init(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %46 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %48 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %47, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %51 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %50, i32 0, i32 4
  store %struct.kvm_vcpu* %49, %struct.kvm_vcpu** %51, align 8
  %52 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %53 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %52, i32 0, i32 3
  %54 = call i32 @kref_init(i32* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @vgic_irq_is_sgi(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %31
  %59 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %60 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @VGIC_CONFIG_EDGE, align 4
  %62 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %63 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %68

64:                                               ; preds = %31
  %65 = load i32, i32* @VGIC_CONFIG_LEVEL, align 4
  %66 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %67 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %27

72:                                               ; preds = %27
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i32 @irqchip_in_kernel(%struct.TYPE_8__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %100

79:                                               ; preds = %72
  %80 = load %struct.vgic_dist*, %struct.vgic_dist** %5, align 8
  %81 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V3, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %92 = call i32 @vgic_register_redist_iodev(%struct.kvm_vcpu* %91)
  store i32 %92, i32* %6, align 4
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  br label %98

98:                                               ; preds = %85, %79
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %78
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i64 @vgic_irq_is_sgi(i32) #1

declare dso_local i32 @irqchip_in_kernel(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vgic_register_redist_iodev(%struct.kvm_vcpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
