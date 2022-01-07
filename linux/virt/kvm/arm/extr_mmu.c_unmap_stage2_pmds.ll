; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_unmap_stage2_pmds.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_unmap_stage2_pmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, i64, i64)* @unmap_stage2_pmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_stage2_pmds(%struct.kvm* %0, i32* %1, i64 %2, i64 %3) #0 {
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
  %18 = call i32* @stage2_pmd_offset(%struct.kvm* %15, i32* %16, i64 %17)
  store i32* %18, i32** %11, align 8
  store i32* %18, i32** %12, align 8
  br label %19

19:                                               ; preds = %54, %4
  %20 = load %struct.kvm*, %struct.kvm** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @stage2_pmd_addr_end(%struct.kvm* %20, i64 %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pmd_none(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %19
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @pmd_thp_or_huge(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @pmd_clear(i32* %36)
  %38 = load %struct.kvm*, %struct.kvm** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @kvm_tlb_flush_vmid_ipa(%struct.kvm* %38, i64 %39)
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @kvm_flush_dcache_pmd(i32 %41)
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @virt_to_page(i32* %43)
  %45 = call i32 @put_page(i32 %44)
  br label %52

46:                                               ; preds = %28
  %47 = load %struct.kvm*, %struct.kvm** %5, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @unmap_stage2_ptes(%struct.kvm* %47, i32* %48, i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %46, %33
  br label %53

53:                                               ; preds = %52, %19
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %19, label %61

61:                                               ; preds = %54
  %62 = load %struct.kvm*, %struct.kvm** %5, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i64 @stage2_pmd_table_empty(%struct.kvm* %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.kvm*, %struct.kvm** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @clear_stage2_pud_entry(%struct.kvm* %67, i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %66, %61
  ret void
}

declare dso_local i32* @stage2_pmd_offset(%struct.kvm*, i32*, i64) #1

declare dso_local i64 @stage2_pmd_addr_end(%struct.kvm*, i64, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i64 @pmd_thp_or_huge(i32) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local i32 @kvm_tlb_flush_vmid_ipa(%struct.kvm*, i64) #1

declare dso_local i32 @kvm_flush_dcache_pmd(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i32 @unmap_stage2_ptes(%struct.kvm*, i32*, i64, i64) #1

declare dso_local i64 @stage2_pmd_table_empty(%struct.kvm*, i32*) #1

declare dso_local i32 @clear_stage2_pud_entry(%struct.kvm*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
