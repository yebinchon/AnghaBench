; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_handle_l1_dte.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_handle_l1_dte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { i32 }
%struct.vgic_its_abi = type { i32 }

@SZ_64K = common dso_local global i32 0, align 4
@KVM_ITS_L1E_VALID_MASK = common dso_local global i32 0, align 4
@KVM_ITS_L1E_ADDR_MASK = common dso_local global i32 0, align 4
@vgic_its_restore_dte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, i32, i8*, i8*)* @handle_l1_dte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_l1_dte(%struct.vgic_its* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vgic_its_abi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vgic_its* %0, %struct.vgic_its** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %17 = call %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its* %16)
  store %struct.vgic_its_abi* %17, %struct.vgic_its_abi** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SZ_64K, align 4
  %20 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %10, align 8
  %21 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  %24 = mul nsw i32 %18, %23
  store i32 %24, i32* %11, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %10, align 8
  %29 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @le64_to_cpu(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @KVM_ITS_L1E_VALID_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %50

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @KVM_ITS_L1E_ADDR_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @SZ_64K, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @vgic_its_restore_dte, align 4
  %48 = call i32 @scan_its_table(%struct.vgic_its* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32* null)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %38, %37
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @scan_its_table(%struct.vgic_its*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
