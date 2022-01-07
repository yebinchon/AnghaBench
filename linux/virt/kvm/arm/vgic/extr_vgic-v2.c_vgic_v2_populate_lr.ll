; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_populate_lr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_populate_lr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.vgic_irq = type { i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64 }

@GICH_LR_ACTIVE_BIT = common dso_local global i32 0, align 4
@GICH_LR_PHYSID_CPUID_SHIFT = common dso_local global i32 0, align 4
@GICH_LR_EOI = common dso_local global i32 0, align 4
@GICH_LR_GROUP1 = common dso_local global i32 0, align 4
@GICH_LR_HW = common dso_local global i32 0, align 4
@VGIC_CONFIG_LEVEL = common dso_local global i64 0, align 8
@GICH_LR_PENDING_BIT = common dso_local global i32 0, align 4
@VGIC_CONFIG_EDGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"No SGI source for INTID %d\0A\00", align 1
@GICH_LR_PRIORITY_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_v2_populate_lr(%struct.kvm_vcpu* %0, %struct.vgic_irq* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vgic_irq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %11 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %13 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %14 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load i32, i32* @GICH_LR_ACTIVE_BIT, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %22 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @vgic_irq_is_sgi(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %28 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GICH_LR_PHYSID_CPUID_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %26, %17
  %35 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %36 = call i64 @vgic_irq_is_multi_sgi(%struct.vgic_irq* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  %39 = load i32, i32* @GICH_LR_EOI, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %45 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %44, i32 0, i32 10
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @GICH_LR_GROUP1, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %54 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load i32, i32* @GICH_LR_HW, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %62 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GICH_LR_PHYSID_CPUID_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %69 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %57
  br label %91

74:                                               ; preds = %52
  %75 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %76 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VGIC_CONFIG_LEVEL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load i32, i32* @GICH_LR_EOI, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %85 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %80
  br label %90

90:                                               ; preds = %89, %74
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %158

94:                                               ; preds = %91
  %95 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %96 = call i64 @irq_is_pending(%struct.vgic_irq* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %158

98:                                               ; preds = %94
  %99 = load i32, i32* @GICH_LR_PENDING_BIT, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %103 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VGIC_CONFIG_EDGE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %109 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %108, i32 0, i32 4
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %98
  %111 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %112 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @vgic_irq_is_sgi(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %157

116:                                              ; preds = %110
  %117 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %118 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ffs(i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %126 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @WARN_RATELIMIT(i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %189

131:                                              ; preds = %116
  %132 = load i32, i32* %9, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load i32, i32* @GICH_LR_PHYSID_CPUID_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %9, align 4
  %139 = sub nsw i32 %138, 1
  %140 = shl i32 1, %139
  %141 = xor i32 %140, -1
  %142 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %143 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %147 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %131
  %151 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %152 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %151, i32 0, i32 4
  store i32 1, i32* %152, align 8
  %153 = load i32, i32* @GICH_LR_EOI, align 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %150, %131
  br label %157

157:                                              ; preds = %156, %110
  br label %158

158:                                              ; preds = %157, %94, %91
  %159 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %160 = call i64 @vgic_irq_is_mapped_level(%struct.vgic_irq* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @GICH_LR_PENDING_BIT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %169 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %168, i32 0, i32 6
  store i32 0, i32* %169, align 8
  br label %170

170:                                              ; preds = %167, %162, %158
  %171 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %172 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 3
  %175 = load i32, i32* @GICH_LR_PRIORITY_SHIFT, align 4
  %176 = shl i32 %174, %175
  %177 = load i32, i32* %7, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %179, i32* %188, align 4
  br label %189

189:                                              ; preds = %170, %130
  ret void
}

declare dso_local i64 @vgic_irq_is_sgi(i32) #1

declare dso_local i64 @vgic_irq_is_multi_sgi(%struct.vgic_irq*) #1

declare dso_local i64 @irq_is_pending(%struct.vgic_irq*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @WARN_RATELIMIT(i32, i8*, i32) #1

declare dso_local i64 @vgic_irq_is_mapped_level(%struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
