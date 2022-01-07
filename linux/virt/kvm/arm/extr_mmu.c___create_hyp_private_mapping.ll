; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c___create_hyp_private_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c___create_hyp_private_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hyp_pgd = common dso_local global i32* null, align 8
@kvm_hyp_pgd_mutex = common dso_local global i32 0, align 4
@io_map_base = common dso_local global i64 0, align 8
@VA_BITS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@boot_hyp_pgd = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*, i32)* @__create_hyp_private_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__create_hyp_private_mapping(i32 %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** @hyp_pgd, align 8
  store i32* %12, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = call i32 @mutex_lock(i32* @kvm_hyp_pgd_mutex)
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @offset_in_page(i32 %15)
  %17 = add i64 %14, %16
  %18 = call i64 @PAGE_ALIGN(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* @io_map_base, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @io_map_base, align 8
  %24 = xor i64 %22, %23
  %25 = load i64, i64* @VA_BITS, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i64 @BIT(i64 %26)
  %28 = and i64 %24, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %35

33:                                               ; preds = %4
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* @io_map_base, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = call i32 @mutex_unlock(i32* @kvm_hyp_pgd_mutex)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %65

40:                                               ; preds = %35
  %41 = call i64 (...) @__kvm_cpu_uses_extended_idmap()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32*, i32** @boot_hyp_pgd, align 8
  store i32* %44, i32** %9, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 (...) @__kvm_idmap_ptrs_per_pgd()
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @__phys_to_pfn(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @__create_hyp_mappings(i32* %46, i32 %47, i64 %48, i64 %51, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %65

59:                                               ; preds = %45
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @offset_in_page(i32 %61)
  %63 = add i64 %60, %62
  %64 = load i64*, i64** %7, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %58, %39
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @__kvm_cpu_uses_extended_idmap(...) #1

declare dso_local i32 @__create_hyp_mappings(i32*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @__kvm_idmap_ptrs_per_pgd(...) #1

declare dso_local i32 @__phys_to_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
