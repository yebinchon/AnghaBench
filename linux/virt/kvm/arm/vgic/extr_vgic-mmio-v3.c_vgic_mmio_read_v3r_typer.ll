; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_mmio_read_v3r_typer.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_mmio_read_v3r_typer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vgic_cpu }
%struct.vgic_cpu = type { %struct.vgic_redist_region* }
%struct.vgic_redist_region = type { i32, i32 }

@GICR_TYPER = common dso_local global i32 0, align 4
@KVM_VGIC_V3_REDIST_SIZE = common dso_local global i32 0, align 4
@GICR_TYPER_LAST = common dso_local global i32 0, align 4
@GICR_TYPER_PLPIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i32, i32)* @vgic_mmio_read_v3r_typer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vgic_mmio_read_v3r_typer(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vgic_cpu*, align 8
  %9 = alloca %struct.vgic_redist_region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = call i64 @kvm_vcpu_get_mpidr_aff(%struct.kvm_vcpu* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.vgic_cpu* %17, %struct.vgic_cpu** %8, align 8
  %18 = load %struct.vgic_cpu*, %struct.vgic_cpu** %8, align 8
  %19 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %18, i32 0, i32 0
  %20 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %19, align 8
  store %struct.vgic_redist_region* %20, %struct.vgic_redist_region** %9, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %9, align 8
  %25 = getelementptr inbounds %struct.vgic_redist_region, %struct.vgic_redist_region* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GICR_TYPER, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %9, align 8
  %30 = getelementptr inbounds %struct.vgic_redist_region, %struct.vgic_redist_region* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* @KVM_VGIC_V3_REDIST_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %28, %34
  store i32 %35, i32* %11, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @GENMASK(i32 23, i32 0)
  %38 = and i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 32
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 65535
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %3
  %50 = load i32, i32* @GICR_TYPER_LAST, align 4
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %49, %3
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @vgic_has_its(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @GICR_TYPER_PLPIS, align 4
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 7
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @extract_bytes(i32 %64, i32 %66, i32 %67)
  ret i64 %68
}

declare dso_local i64 @kvm_vcpu_get_mpidr_aff(%struct.kvm_vcpu*) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i64 @vgic_has_its(i32) #1

declare dso_local i64 @extract_bytes(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
