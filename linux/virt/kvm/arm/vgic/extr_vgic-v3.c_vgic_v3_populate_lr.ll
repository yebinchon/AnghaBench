; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_populate_lr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_populate_lr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.vgic_irq = type { i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64 }

@KVM_DEV_TYPE_ARM_VGIC_V2 = common dso_local global i64 0, align 8
@ICH_LR_ACTIVE_BIT = common dso_local global i64 0, align 8
@GICH_LR_PHYSID_CPUID_SHIFT = common dso_local global i64 0, align 8
@ICH_LR_EOI = common dso_local global i64 0, align 8
@ICH_LR_HW = common dso_local global i64 0, align 8
@ICH_LR_PHYS_ID_SHIFT = common dso_local global i64 0, align 8
@VGIC_CONFIG_LEVEL = common dso_local global i64 0, align 8
@ICH_LR_PENDING_BIT = common dso_local global i64 0, align 8
@VGIC_CONFIG_EDGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"No SGI source for INTID %d\0A\00", align 1
@ICH_LR_GROUP = common dso_local global i64 0, align 8
@ICH_LR_PRIORITY_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_v3_populate_lr(%struct.kvm_vcpu* %0, %struct.vgic_irq* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vgic_irq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %20 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %22 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %23 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @vgic_irq_is_sgi(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V2, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %3
  %32 = phi i1 [ false, %3 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %35 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %31
  %39 = load i64, i64* @ICH_LR_ACTIVE_BIT, align 8
  %40 = load i64, i64* %8, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %46 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GICH_LR_PHYSID_CPUID_SHIFT, align 8
  %49 = shl i64 %47, %48
  %50 = load i64, i64* %8, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %44, %38
  %53 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %54 = call i64 @vgic_irq_is_multi_sgi(%struct.vgic_irq* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  %57 = load i64, i64* @ICH_LR_EOI, align 8
  %58 = load i64, i64* %8, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %31
  %62 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %63 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %62, i32 0, i32 10
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load i64, i64* @ICH_LR_HW, align 8
  %68 = load i64, i64* %8, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %71 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %70, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ICH_LR_PHYS_ID_SHIFT, align 8
  %74 = shl i64 %72, %73
  %75 = load i64, i64* %8, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %78 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %66
  br label %100

83:                                               ; preds = %61
  %84 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %85 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VGIC_CONFIG_LEVEL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load i64, i64* @ICH_LR_EOI, align 8
  %91 = load i64, i64* %8, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %8, align 8
  %93 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %94 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %97, %89
  br label %99

99:                                               ; preds = %98, %83
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %172

103:                                              ; preds = %100
  %104 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %105 = call i64 @irq_is_pending(%struct.vgic_irq* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %172

107:                                              ; preds = %103
  %108 = load i64, i64* @ICH_LR_PENDING_BIT, align 8
  %109 = load i64, i64* %8, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %8, align 8
  %111 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %112 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @VGIC_CONFIG_EDGE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %118 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %117, i32 0, i32 3
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %107
  %120 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %121 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @vgic_irq_is_sgi(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %171

125:                                              ; preds = %119
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V2, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %171

129:                                              ; preds = %125
  %130 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %131 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @ffs(i32 %132)
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %11, align 8
  %135 = icmp ne i64 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %139 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @WARN_RATELIMIT(i32 %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  br label %211

144:                                              ; preds = %129
  %145 = load i64, i64* %11, align 8
  %146 = sub nsw i64 %145, 1
  %147 = load i64, i64* @GICH_LR_PHYSID_CPUID_SHIFT, align 8
  %148 = shl i64 %146, %147
  %149 = load i64, i64* %8, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %8, align 8
  %151 = load i64, i64* %11, align 8
  %152 = sub nsw i64 %151, 1
  %153 = trunc i64 %152 to i32
  %154 = shl i32 1, %153
  %155 = xor i32 %154, -1
  %156 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %157 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %161 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %144
  %165 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %166 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %165, i32 0, i32 3
  store i32 1, i32* %166, align 8
  %167 = load i64, i64* @ICH_LR_EOI, align 8
  %168 = load i64, i64* %8, align 8
  %169 = or i64 %168, %167
  store i64 %169, i64* %8, align 8
  br label %170

170:                                              ; preds = %164, %144
  br label %171

171:                                              ; preds = %170, %125, %119
  br label %172

172:                                              ; preds = %171, %103, %100
  %173 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %174 = call i64 @vgic_irq_is_mapped_level(%struct.vgic_irq* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load i64, i64* %8, align 8
  %178 = load i64, i64* @ICH_LR_PENDING_BIT, align 8
  %179 = and i64 %177, %178
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %183 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %182, i32 0, i32 5
  store i32 0, i32* %183, align 8
  br label %184

184:                                              ; preds = %181, %176, %172
  %185 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %186 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i64, i64* @ICH_LR_GROUP, align 8
  %191 = load i64, i64* %8, align 8
  %192 = or i64 %191, %190
  store i64 %192, i64* %8, align 8
  br label %193

193:                                              ; preds = %189, %184
  %194 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %195 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %194, i32 0, i32 6
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @ICH_LR_PRIORITY_SHIFT, align 8
  %198 = shl i64 %196, %197
  %199 = load i64, i64* %8, align 8
  %200 = or i64 %199, %198
  store i64 %200, i64* %8, align 8
  %201 = load i64, i64* %8, align 8
  %202 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %203 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  store i64 %201, i64* %210, align 8
  br label %211

211:                                              ; preds = %193, %143
  ret void
}

declare dso_local i64 @vgic_irq_is_sgi(i64) #1

declare dso_local i64 @vgic_irq_is_multi_sgi(%struct.vgic_irq*) #1

declare dso_local i64 @irq_is_pending(%struct.vgic_irq*) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i64 @WARN_RATELIMIT(i32, i8*, i64) #1

declare dso_local i64 @vgic_irq_is_mapped_level(%struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
