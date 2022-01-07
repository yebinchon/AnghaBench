; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_fold_lr_state.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_fold_lr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vgic_cpu }
%struct.vgic_cpu = type { i32, %struct.vgic_v2_cpu_if }
%struct.vgic_v2_cpu_if = type { i32*, i32 }
%struct.vgic_irq = type { i32, i32, i64, i32, i32, i32, i32 }

@GICH_HCR_UIE = common dso_local global i32 0, align 4
@GICH_LR_VIRTUALID = common dso_local global i32 0, align 4
@GICH_LR_PHYSID_CPUID = common dso_local global i32 0, align 4
@GICH_LR_PHYSID_CPUID_SHIFT = common dso_local global i32 0, align 4
@VGIC_NR_PRIVATE_IRQS = common dso_local global i32 0, align 4
@GICH_LR_ACTIVE_BIT = common dso_local global i32 0, align 4
@VGIC_CONFIG_EDGE = common dso_local global i64 0, align 8
@GICH_LR_PENDING_BIT = common dso_local global i32 0, align 4
@VGIC_CONFIG_LEVEL = common dso_local global i64 0, align 8
@GICH_LR_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_v2_fold_lr_state(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vgic_cpu*, align 8
  %4 = alloca %struct.vgic_v2_cpu_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vgic_irq*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.vgic_cpu* %12, %struct.vgic_cpu** %3, align 8
  %13 = load %struct.vgic_cpu*, %struct.vgic_cpu** %3, align 8
  %14 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %13, i32 0, i32 1
  store %struct.vgic_v2_cpu_if* %14, %struct.vgic_v2_cpu_if** %4, align 8
  %15 = call i32 (...) @irqs_disabled()
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @DEBUG_SPINLOCK_BUG_ON(i32 %18)
  %20 = load i32, i32* @GICH_HCR_UIE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.vgic_v2_cpu_if*, %struct.vgic_v2_cpu_if** %4, align 8
  %23 = getelementptr inbounds %struct.vgic_v2_cpu_if, %struct.vgic_v2_cpu_if* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %170, %1
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.vgic_cpu*, %struct.vgic_cpu** %3, align 8
  %29 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %173

32:                                               ; preds = %26
  %33 = load %struct.vgic_v2_cpu_if*, %struct.vgic_v2_cpu_if** %4, align 8
  %34 = getelementptr inbounds %struct.vgic_v2_cpu_if, %struct.vgic_v2_cpu_if* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @GICH_LR_VIRTUALID, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @GICH_LR_PHYSID_CPUID, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @GICH_LR_PHYSID_CPUID_SHIFT, align 4
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 7
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @lr_signals_eoi_mi(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %32
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @vgic_valid_spi(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @VGIC_NR_PRIVATE_IRQS, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @kvm_notify_acked_irq(i32 %64, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %61, %54, %32
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call %struct.vgic_irq* @vgic_get_irq(i32 %72, %struct.kvm_vcpu* %73, i32 %74)
  store %struct.vgic_irq* %75, %struct.vgic_irq** %9, align 8
  %76 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %77 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %76, i32 0, i32 5
  %78 = call i32 @raw_spin_lock(i32* %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @GICH_LR_ACTIVE_BIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %87 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %89 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %69
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @vgic_irq_is_sgi(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %99 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %92, %69
  %101 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %102 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VGIC_CONFIG_EDGE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @GICH_LR_PENDING_BIT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %113 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %112, i32 0, i32 3
  store i32 1, i32* %113, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i64 @vgic_irq_is_sgi(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i32, i32* %7, align 4
  %119 = shl i32 1, %118
  %120 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %121 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117, %111
  br label %125

125:                                              ; preds = %124, %106, %100
  %126 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %127 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @VGIC_CONFIG_LEVEL, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @GICH_LR_STATE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %138 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %137, i32 0, i32 3
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %131, %125
  %140 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %141 = call i64 @vgic_irq_is_mapped_level(%struct.vgic_irq* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @GICH_LR_PENDING_BIT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %150 = call i32 @vgic_get_phys_line_level(%struct.vgic_irq* %149)
  %151 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %152 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 4
  %153 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %154 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %148
  %158 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %159 = call i32 @vgic_irq_set_phys_active(%struct.vgic_irq* %158, i32 0)
  br label %160

160:                                              ; preds = %157, %148
  br label %161

161:                                              ; preds = %160, %143, %139
  %162 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %163 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %162, i32 0, i32 5
  %164 = call i32 @raw_spin_unlock(i32* %163)
  %165 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %166 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %169 = call i32 @vgic_put_irq(i32 %167, %struct.vgic_irq* %168)
  br label %170

170:                                              ; preds = %161
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %26

173:                                              ; preds = %26
  %174 = load %struct.vgic_cpu*, %struct.vgic_cpu** %3, align 8
  %175 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  ret void
}

declare dso_local i32 @DEBUG_SPINLOCK_BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @lr_signals_eoi_mi(i32) #1

declare dso_local i64 @vgic_valid_spi(i32, i32) #1

declare dso_local i32 @kvm_notify_acked_irq(i32, i32, i32) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @vgic_irq_is_sgi(i32) #1

declare dso_local i64 @vgic_irq_is_mapped_level(%struct.vgic_irq*) #1

declare dso_local i32 @vgic_get_phys_line_level(%struct.vgic_irq*) #1

declare dso_local i32 @vgic_irq_set_phys_active(%struct.vgic_irq*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
