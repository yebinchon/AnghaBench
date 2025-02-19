; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_read_its_ctlr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_read_its_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i64, i64, i32, i64 }

@GITS_CTLR_QUIESCENT = common dso_local global i64 0, align 8
@GITS_CTLR_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*, %struct.vgic_its*, i32, i32)* @vgic_mmio_read_its_ctlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vgic_mmio_read_its_ctlr(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %11 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %14 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %17 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i64, i64* @GITS_CTLR_QUIESCENT, align 8
  %22 = load i64, i64* %9, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %26 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i64, i64* @GITS_CTLR_ENABLE, align 8
  %31 = load i64, i64* %9, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %35 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i64, i64* %9, align 8
  ret i64 %37
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
