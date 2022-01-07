; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_unmap_memslot.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_unmap_memslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64, i64, i64 }
%struct.vm_area_struct = type { i64, i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@VM_PFNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_memory_slot*)* @stage2_unmap_memslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage2_unmap_memslot(%struct.kvm* %0, %struct.kvm_memory_slot* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %4, align 8
  %13 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = shl i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = mul nsw i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %77, %2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.vm_area_struct* @find_vma(i32 %32, i64 %33)
  store %struct.vm_area_struct* %34, %struct.vm_area_struct** %9, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %36 = icmp ne %struct.vm_area_struct* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %29
  br label %81

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @max(i64 %45, i64 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @min(i64 %50, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VM_PFNMAP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %44
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = add nsw i64 %62, %67
  store i64 %68, i64* %12, align 8
  %69 = load %struct.kvm*, %struct.kvm** %3, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub nsw i64 %71, %72
  %74 = call i32 @unmap_stage2_range(%struct.kvm* %69, i64 %70, i64 %73)
  br label %75

75:                                               ; preds = %61, %44
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %75
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %29, label %81

81:                                               ; preds = %77, %43
  ret void
}

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @unmap_stage2_range(%struct.kvm*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
