; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_fold_lr_state.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_fold_lr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.vgic_cpu }
%struct.vgic_cpu = type { i32, %struct.vgic_v3_cpu_if }
%struct.vgic_v3_cpu_if = type { i64*, i32 }
%struct.vgic_irq = type { i32, i64, i32, i32, i32, i32, i64 }

@ICH_HCR_UIE = common dso_local global i32 0, align 4
@GICH_LR_PHYSID_CPUID = common dso_local global i64 0, align 8
@GICH_LR_PHYSID_CPUID_SHIFT = common dso_local global i64 0, align 8
@KVM_DEV_TYPE_ARM_VGIC_V3 = common dso_local global i64 0, align 8
@ICH_LR_VIRTUAL_ID_MASK = common dso_local global i64 0, align 8
@GICH_LR_VIRTUALID = common dso_local global i64 0, align 8
@VGIC_NR_PRIVATE_IRQS = common dso_local global i64 0, align 8
@ICH_LR_ACTIVE_BIT = common dso_local global i64 0, align 8
@VGIC_CONFIG_EDGE = common dso_local global i64 0, align 8
@ICH_LR_PENDING_BIT = common dso_local global i64 0, align 8
@VGIC_CONFIG_LEVEL = common dso_local global i64 0, align 8
@ICH_LR_STATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_v3_fold_lr_state(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vgic_cpu*, align 8
  %4 = alloca %struct.vgic_v3_cpu_if*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vgic_irq*, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.vgic_cpu* %14, %struct.vgic_cpu** %3, align 8
  %15 = load %struct.vgic_cpu*, %struct.vgic_cpu** %3, align 8
  %16 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %15, i32 0, i32 1
  store %struct.vgic_v3_cpu_if* %16, %struct.vgic_v3_cpu_if** %4, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = call i32 (...) @irqs_disabled()
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @DEBUG_SPINLOCK_BUG_ON(i32 %27)
  %29 = load i32, i32* @ICH_HCR_UIE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %4, align 8
  %32 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %191, %1
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.vgic_cpu*, %struct.vgic_cpu** %3, align 8
  %38 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %194

41:                                               ; preds = %35
  %42 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %4, align 8
  %43 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @GICH_LR_PHYSID_CPUID, align 8
  %51 = and i64 %49, %50
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* @GICH_LR_PHYSID_CPUID_SHIFT, align 8
  %53 = load i64, i64* %9, align 8
  %54 = ashr i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V3, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @ICH_LR_VIRTUAL_ID_MASK, align 8
  %61 = and i64 %59, %60
  store i64 %61, i64* %8, align 8
  br label %68

62:                                               ; preds = %41
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @GICH_LR_VIRTUALID, align 8
  %65 = and i64 %63, %64
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @vgic_irq_is_sgi(i64 %66)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @lr_signals_eoi_mi(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @vgic_valid_spi(%struct.TYPE_11__* %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @VGIC_NR_PRIVATE_IRQS, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i32 @kvm_notify_acked_irq(%struct.TYPE_11__* %82, i32 0, i64 %85)
  br label %87

87:                                               ; preds = %79, %72, %68
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call %struct.vgic_irq* @vgic_get_irq(%struct.TYPE_11__* %90, %struct.kvm_vcpu* %91, i64 %92)
  store %struct.vgic_irq* %93, %struct.vgic_irq** %10, align 8
  %94 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %95 = icmp ne %struct.vgic_irq* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %87
  br label %191

97:                                               ; preds = %87
  %98 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %99 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %98, i32 0, i32 4
  %100 = call i32 @raw_spin_lock(i32* %99)
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @ICH_LR_ACTIVE_BIT, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %109 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %111 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %97
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %120 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %119, i32 0, i32 6
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %114, %97
  %122 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %123 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @VGIC_CONFIG_EDGE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* @ICH_LR_PENDING_BIT, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %134 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load i64, i64* %9, align 8
  %139 = trunc i64 %138 to i32
  %140 = shl i32 1, %139
  %141 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %142 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %137, %132
  br label %146

146:                                              ; preds = %145, %127, %121
  %147 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %148 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @VGIC_CONFIG_LEVEL, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %146
  %153 = load i64, i64* %7, align 8
  %154 = load i64, i64* @ICH_LR_STATE, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %159 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %158, i32 0, i32 2
  store i32 0, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %152, %146
  %161 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %162 = call i64 @vgic_irq_is_mapped_level(%struct.vgic_irq* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %160
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* @ICH_LR_PENDING_BIT, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %164
  %170 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %171 = call i32 @vgic_get_phys_line_level(%struct.vgic_irq* %170)
  %172 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %173 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %175 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %169
  %179 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %180 = call i32 @vgic_irq_set_phys_active(%struct.vgic_irq* %179, i32 0)
  br label %181

181:                                              ; preds = %178, %169
  br label %182

182:                                              ; preds = %181, %164, %160
  %183 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %184 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %183, i32 0, i32 4
  %185 = call i32 @raw_spin_unlock(i32* %184)
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %187 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %186, i32 0, i32 0
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %190 = call i32 @vgic_put_irq(%struct.TYPE_11__* %188, %struct.vgic_irq* %189)
  br label %191

191:                                              ; preds = %182, %96
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %35

194:                                              ; preds = %35
  %195 = load %struct.vgic_cpu*, %struct.vgic_cpu** %3, align 8
  %196 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %195, i32 0, i32 0
  store i32 0, i32* %196, align 8
  ret void
}

declare dso_local i32 @DEBUG_SPINLOCK_BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @vgic_irq_is_sgi(i64) #1

declare dso_local i64 @lr_signals_eoi_mi(i64) #1

declare dso_local i64 @vgic_valid_spi(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @kvm_notify_acked_irq(%struct.TYPE_11__*, i32, i64) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(%struct.TYPE_11__*, %struct.kvm_vcpu*, i64) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @vgic_irq_is_mapped_level(%struct.vgic_irq*) #1

declare dso_local i32 @vgic_get_phys_line_level(%struct.vgic_irq*) #1

declare dso_local i32 @vgic_irq_set_phys_active(%struct.vgic_irq*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @vgic_put_irq(%struct.TYPE_11__*, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
