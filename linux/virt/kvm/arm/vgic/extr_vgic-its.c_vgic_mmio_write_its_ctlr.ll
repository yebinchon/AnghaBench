; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_write_its_ctlr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_write_its_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32, i32, i32, i32, i32 }

@GITS_CTLR_ENABLE = common dso_local global i64 0, align 8
@GITS_BASER_VALID = common dso_local global i32 0, align 4
@GITS_CBASER_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.vgic_its*, i32, i32, i64)* @vgic_mmio_write_its_ctlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_mmio_write_its_ctlr(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2, i32 %3, i64 %4) #0 {
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
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %15 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @GITS_CTLR_ENABLE, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %25 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GITS_BASER_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %32 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GITS_BASER_VALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %39 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GITS_CBASER_VALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37, %30, %23
  br label %66

45:                                               ; preds = %37, %18, %5
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @GITS_CTLR_ENABLE, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %54 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %56 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %45
  %60 = load %struct.kvm*, %struct.kvm** %6, align 8
  %61 = call i32 @vgic_its_invalidate_cache(%struct.kvm* %60)
  br label %62

62:                                               ; preds = %59, %45
  %63 = load %struct.kvm*, %struct.kvm** %6, align 8
  %64 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %65 = call i32 @vgic_its_process_commands(%struct.kvm* %63, %struct.vgic_its* %64)
  br label %66

66:                                               ; preds = %62, %44
  %67 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %68 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %67, i32 0, i32 4
  %69 = call i32 @mutex_unlock(i32* %68)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vgic_its_invalidate_cache(%struct.kvm*) #1

declare dso_local i32 @vgic_its_process_commands(%struct.kvm*, %struct.vgic_its*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
