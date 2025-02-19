; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_write_its_cbaser.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_write_its_cbaser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.vgic_its*, i32, i32, i64)* @vgic_mmio_write_its_cbaser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_mmio_write_its_cbaser(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.vgic_its*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %12 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %46

16:                                               ; preds = %5
  %17 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %18 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %21 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 7
  %25 = load i32, i32* %9, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @update_64bit_reg(i32 %22, i32 %24, i32 %25, i64 %26)
  %28 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %29 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %31 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vgic_sanitise_its_cbaser(i32 %32)
  %34 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %35 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %37 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %39 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %42 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %44 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @update_64bit_reg(i32, i32, i32, i64) #1

declare dso_local i32 @vgic_sanitise_its_cbaser(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
