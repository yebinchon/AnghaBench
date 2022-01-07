; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_transparent_hugepage_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_transparent_hugepage_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@PMD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*)* @transparent_hugepage_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transparent_hugepage_adjust(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.page* @pfn_to_page(i64 %16)
  store %struct.page* %17, %struct.page** %8, align 8
  %18 = load %struct.page*, %struct.page** %8, align 8
  %19 = call i32 @PageHuge(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %2
  %22 = load %struct.page*, %struct.page** %8, align 8
  %23 = call i64 @PageTransCompoundMap(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load i32, i32* @PTRS_PER_PMD, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @VM_BUG_ON(i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %25
  %43 = load i64, i64* @PMD_MASK, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, %43
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @kvm_release_pfn_clean(i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %6, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @kvm_get_pfn(i64 %53)
  %55 = load i64, i64* %6, align 8
  %56 = load i64*, i64** %4, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %42, %25
  store i32 1, i32* %3, align 4
  br label %59

58:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i64 @PageTransCompoundMap(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @kvm_release_pfn_clean(i64) #1

declare dso_local i32 @kvm_get_pfn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
