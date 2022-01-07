; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_mapc.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_mapc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }
%struct.its_collection = type { i64 }

@E_ITS_MAPC_PROCNUM_OOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32*)* @vgic_its_cmd_handle_mapc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_cmd_handle_mapc(%struct.kvm* %0, %struct.vgic_its* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.its_collection*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @its_cmd_get_validbit(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @its_cmd_get_collection(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @its_cmd_get_target_addr(i32* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.kvm*, %struct.kvm** %5, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @E_ITS_MAPC_PROCNUM_OOR, align 4
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @vgic_its_free_collection(%struct.vgic_its* %30, i32 %31)
  %33 = load %struct.kvm*, %struct.kvm** %5, align 8
  %34 = call i32 @vgic_its_invalidate_cache(%struct.kvm* %33)
  br label %62

35:                                               ; preds = %26
  %36 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.its_collection* @find_collection(%struct.vgic_its* %36, i32 %37)
  store %struct.its_collection* %38, %struct.its_collection** %10, align 8
  %39 = load %struct.its_collection*, %struct.its_collection** %10, align 8
  %40 = icmp ne %struct.its_collection* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vgic_its_alloc_collection(%struct.vgic_its* %42, %struct.its_collection** %10, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %41
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.its_collection*, %struct.its_collection** %10, align 8
  %52 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %61

53:                                               ; preds = %35
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.its_collection*, %struct.its_collection** %10, align 8
  %56 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.kvm*, %struct.kvm** %5, align 8
  %58 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %59 = load %struct.its_collection*, %struct.its_collection** %10, align 8
  %60 = call i32 @update_affinity_collection(%struct.kvm* %57, %struct.vgic_its* %58, %struct.its_collection* %59)
  br label %61

61:                                               ; preds = %53, %49
  br label %62

62:                                               ; preds = %61, %29
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %47, %24
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @its_cmd_get_validbit(i32*) #1

declare dso_local i32 @its_cmd_get_collection(i32*) #1

declare dso_local i64 @its_cmd_get_target_addr(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @vgic_its_free_collection(%struct.vgic_its*, i32) #1

declare dso_local i32 @vgic_its_invalidate_cache(%struct.kvm*) #1

declare dso_local %struct.its_collection* @find_collection(%struct.vgic_its*, i32) #1

declare dso_local i32 @vgic_its_alloc_collection(%struct.vgic_its*, %struct.its_collection**, i32) #1

declare dso_local i32 @update_affinity_collection(%struct.kvm*, %struct.vgic_its*, %struct.its_collection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
