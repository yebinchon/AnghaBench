; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_match_mpidr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_match_mpidr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@MPIDR_LEVEL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.kvm_vcpu*)* @match_mpidr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_mpidr(i64 %0, i32 %1, %struct.kvm_vcpu* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %7, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %11 = call i64 @kvm_vcpu_get_mpidr_aff(%struct.kvm_vcpu* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @MPIDR_AFFINITY_LEVEL(i64 %12, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* @MPIDR_LEVEL_MASK, align 8
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %8, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %31

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %28, %21
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @kvm_vcpu_get_mpidr_aff(%struct.kvm_vcpu*) #1

declare dso_local i32 @MPIDR_AFFINITY_LEVEL(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
