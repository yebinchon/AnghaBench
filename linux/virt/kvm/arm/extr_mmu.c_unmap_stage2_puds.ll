; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_unmap_stage2_puds.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_unmap_stage2_puds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, i64, i64)* @unmap_stage2_puds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_stage2_puds(%struct.kvm* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.kvm*, %struct.kvm** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32* @stage2_pud_offset(%struct.kvm* %15, i32* %16, i64 %17)
  store i32* %18, i32** %11, align 8
  store i32* %18, i32** %12, align 8
  br label %19

19:                                               ; preds = %57, %4
  %20 = load %struct.kvm*, %struct.kvm** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @stage2_pud_addr_end(%struct.kvm* %20, i64 %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.kvm*, %struct.kvm** %5, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @stage2_pud_none(%struct.kvm* %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %19
  %30 = load %struct.kvm*, %struct.kvm** %5, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @stage2_pud_huge(%struct.kvm* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.kvm*, %struct.kvm** %5, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @stage2_pud_clear(%struct.kvm* %38, i32* %39)
  %41 = load %struct.kvm*, %struct.kvm** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @kvm_tlb_flush_vmid_ipa(%struct.kvm* %41, i64 %42)
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @kvm_flush_dcache_pud(i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @virt_to_page(i32* %46)
  %48 = call i32 @put_page(i32 %47)
  br label %55

49:                                               ; preds = %29
  %50 = load %struct.kvm*, %struct.kvm** %5, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @unmap_stage2_pmds(%struct.kvm* %50, i32* %51, i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %49, %35
  br label %56

56:                                               ; preds = %55, %19
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %11, align 8
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %19, label %64

64:                                               ; preds = %57
  %65 = load %struct.kvm*, %struct.kvm** %5, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i64 @stage2_pud_table_empty(%struct.kvm* %65, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.kvm*, %struct.kvm** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @clear_stage2_pgd_entry(%struct.kvm* %70, i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32* @stage2_pud_offset(%struct.kvm*, i32*, i64) #1

declare dso_local i64 @stage2_pud_addr_end(%struct.kvm*, i64, i64) #1

declare dso_local i32 @stage2_pud_none(%struct.kvm*, i32) #1

declare dso_local i64 @stage2_pud_huge(%struct.kvm*, i32) #1

declare dso_local i32 @stage2_pud_clear(%struct.kvm*, i32*) #1

declare dso_local i32 @kvm_tlb_flush_vmid_ipa(%struct.kvm*, i64) #1

declare dso_local i32 @kvm_flush_dcache_pud(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i32 @unmap_stage2_pmds(%struct.kvm*, i32*, i64, i64) #1

declare dso_local i64 @stage2_pud_table_empty(%struct.kvm*, i32*) #1

declare dso_local i32 @clear_stage2_pgd_entry(%struct.kvm*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
