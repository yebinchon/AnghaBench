; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_commit_v0.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_commit_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { i32, i32 }
%struct.vgic_its_abi = type { i32, i32 }

@GITS_BASER_ENTRY_SIZE_MASK = common dso_local global i32 0, align 4
@GITS_BASER_ENTRY_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*)* @vgic_its_commit_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_commit_v0(%struct.vgic_its* %0) #0 {
  %2 = alloca %struct.vgic_its*, align 8
  %3 = alloca %struct.vgic_its_abi*, align 8
  store %struct.vgic_its* %0, %struct.vgic_its** %2, align 8
  %4 = load %struct.vgic_its*, %struct.vgic_its** %2, align 8
  %5 = call %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its* %4)
  store %struct.vgic_its_abi* %5, %struct.vgic_its_abi** %3, align 8
  %6 = load i32, i32* @GITS_BASER_ENTRY_SIZE_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.vgic_its*, %struct.vgic_its** %2, align 8
  %9 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @GITS_BASER_ENTRY_SIZE_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.vgic_its*, %struct.vgic_its** %2, align 8
  %15 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %3, align 8
  %19 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GIC_ENCODE_SZ(i32 %20, i32 5)
  %22 = load i32, i32* @GITS_BASER_ENTRY_SIZE_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load %struct.vgic_its*, %struct.vgic_its** %2, align 8
  %25 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %3, align 8
  %29 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GIC_ENCODE_SZ(i32 %30, i32 5)
  %32 = load i32, i32* @GITS_BASER_ENTRY_SIZE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load %struct.vgic_its*, %struct.vgic_its** %2, align 8
  %35 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  ret i32 0
}

declare dso_local %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its*) #1

declare dso_local i32 @GIC_ENCODE_SZ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
