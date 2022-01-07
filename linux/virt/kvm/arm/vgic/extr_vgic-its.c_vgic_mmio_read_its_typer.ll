; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_read_its_typer.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_read_its_typer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }
%struct.vgic_its_abi = type { i32 }

@GITS_TYPER_PLPIS = common dso_local global i32 0, align 4
@VITS_TYPER_DEVBITS = common dso_local global i32 0, align 4
@GITS_TYPER_DEVBITS_SHIFT = common dso_local global i32 0, align 4
@VITS_TYPER_IDBITS = common dso_local global i32 0, align 4
@GITS_TYPER_IDBITS_SHIFT = common dso_local global i32 0, align 4
@GITS_TYPER_ITT_ENTRY_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*, %struct.vgic_its*, i32, i32)* @vgic_mmio_read_its_typer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vgic_mmio_read_its_typer(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vgic_its_abi*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %12 = call %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its* %11)
  store %struct.vgic_its_abi* %12, %struct.vgic_its_abi** %9, align 8
  %13 = load i32, i32* @GITS_TYPER_PLPIS, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @VITS_TYPER_DEVBITS, align 4
  %15 = call i32 @GIC_ENCODE_SZ(i32 %14, i32 5)
  %16 = load i32, i32* @GITS_TYPER_DEVBITS_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %10, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @VITS_TYPER_IDBITS, align 4
  %21 = call i32 @GIC_ENCODE_SZ(i32 %20, i32 5)
  %22 = load i32, i32* @GITS_TYPER_IDBITS_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %9, align 8
  %27 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GIC_ENCODE_SZ(i32 %28, i32 4)
  %30 = load i32, i32* @GITS_TYPER_ITT_ENTRY_SIZE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 7
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @extract_bytes(i32 %34, i32 %36, i32 %37)
  ret i64 %38
}

declare dso_local %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its*) #1

declare dso_local i32 @GIC_ENCODE_SZ(i32, i32) #1

declare dso_local i64 @extract_bytes(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
