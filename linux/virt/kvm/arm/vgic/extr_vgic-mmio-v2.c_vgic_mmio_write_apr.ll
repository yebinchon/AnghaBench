; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_write_apr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_write_apr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.kvm_vcpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vgic_v3_cpu_if, %struct.TYPE_5__ }
%struct.vgic_v3_cpu_if = type { i64* }
%struct.TYPE_5__ = type { i64 }

@kvm_vgic_global_state = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@VGIC_V2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32, i64)* @vgic_mmio_write_apr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_mmio_write_apr(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vgic_v3_cpu_if*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 2
  %13 = and i32 %12, 3
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kvm_vgic_global_state, i32 0, i32 0), align 8
  %15 = load i64, i64* @VGIC_V2, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %48

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i64 %22, i64* %27, align 8
  br label %48

28:                                               ; preds = %4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.vgic_v3_cpu_if* %32, %struct.vgic_v3_cpu_if** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %35 = call i32 @vgic_v3_max_apr_idx(%struct.kvm_vcpu* %34)
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %48

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @array_index_nospec(i32 %39, i32 4)
  store i32 %40, i32* %9, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %10, align 8
  %43 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %41, i64* %47, align 8
  br label %48

48:                                               ; preds = %20, %37, %38, %21
  ret void
}

declare dso_local i32 @vgic_v3_max_apr_idx(%struct.kvm_vcpu*) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
