; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_unmap_stage2_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_unmap_stage2_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, i64, i64)* @unmap_stage2_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_stage2_ptes(%struct.kvm* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32* @pte_offset_kernel(i32* %14, i64 %15)
  store i32* %16, i32** %10, align 8
  store i32* %16, i32** %11, align 8
  br label %17

17:                                               ; preds = %43, %4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pte_none(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @__pte(i32 0)
  %27 = call i32 @kvm_set_pte(i32* %25, i32 %26)
  %28 = load %struct.kvm*, %struct.kvm** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @kvm_tlb_flush_vmid_ipa(%struct.kvm* %28, i64 %29)
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @pte_pfn(i32 %31)
  %33 = call i32 @kvm_is_device_pfn(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @kvm_flush_dcache_pte(i32 %36)
  br label %38

38:                                               ; preds = %35, %22
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @virt_to_page(i32* %39)
  %41 = call i32 @put_page(i32 %40)
  br label %42

42:                                               ; preds = %38, %17
  br label %43

43:                                               ; preds = %42
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %10, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %17, label %52

52:                                               ; preds = %43
  %53 = load %struct.kvm*, %struct.kvm** %5, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i64 @stage2_pte_table_empty(%struct.kvm* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.kvm*, %struct.kvm** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @clear_stage2_pmd_entry(%struct.kvm* %58, i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  ret void
}

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @kvm_set_pte(i32*, i32) #1

declare dso_local i32 @__pte(i32) #1

declare dso_local i32 @kvm_tlb_flush_vmid_ipa(%struct.kvm*, i64) #1

declare dso_local i32 @kvm_is_device_pfn(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @kvm_flush_dcache_pte(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i64 @stage2_pte_table_empty(%struct.kvm*, i32*) #1

declare dso_local i32 @clear_stage2_pmd_entry(%struct.kvm*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
