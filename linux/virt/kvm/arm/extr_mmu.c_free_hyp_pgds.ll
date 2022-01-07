; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_free_hyp_pgds.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_free_hyp_pgds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kvm_hyp_pgd_mutex = common dso_local global i32 0, align 4
@boot_hyp_pgd = common dso_local global i32* null, align 8
@hyp_pgd = common dso_local global i32* null, align 8
@io_map_base = common dso_local global i64 0, align 8
@hyp_idmap_start = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@hyp_pgd_order = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i64 0, align 8
@high_memory = common dso_local global i64 0, align 8
@merged_hyp_pgd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_hyp_pgds() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @mutex_lock(i32* @kvm_hyp_pgd_mutex)
  %3 = load i32*, i32** @boot_hyp_pgd, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32*, i32** @boot_hyp_pgd, align 8
  br label %9

7:                                                ; preds = %0
  %8 = load i32*, i32** @hyp_pgd, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32* [ %6, %5 ], [ %8, %7 ]
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i64, i64* @io_map_base, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @hyp_idmap_start, align 8
  store i64 %17, i64* @io_map_base, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32*, i32** %1, align 8
  %20 = load i64, i64* @io_map_base, align 8
  %21 = load i64, i64* @hyp_idmap_start, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @io_map_base, align 8
  %25 = sub nsw i64 %23, %24
  %26 = call i32 @unmap_hyp_idmap_range(i32* %19, i64 %20, i64 %25)
  br label %27

27:                                               ; preds = %18, %9
  %28 = load i32*, i32** @boot_hyp_pgd, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32*, i32** @boot_hyp_pgd, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = load i32, i32* @hyp_pgd_order, align 4
  %34 = call i32 @free_pages(i64 %32, i32 %33)
  store i32* null, i32** @boot_hyp_pgd, align 8
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32*, i32** @hyp_pgd, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32*, i32** @hyp_pgd, align 8
  %40 = load i64, i64* @PAGE_OFFSET, align 8
  %41 = call i32 @kern_hyp_va(i64 %40)
  %42 = load i64, i64* @high_memory, align 8
  %43 = load i64, i64* @PAGE_OFFSET, align 8
  %44 = sub i64 %42, %43
  %45 = call i32 @unmap_hyp_range(i32* %39, i32 %41, i64 %44)
  %46 = load i32*, i32** @hyp_pgd, align 8
  %47 = ptrtoint i32* %46 to i64
  %48 = load i32, i32* @hyp_pgd_order, align 4
  %49 = call i32 @free_pages(i64 %47, i32 %48)
  store i32* null, i32** @hyp_pgd, align 8
  br label %50

50:                                               ; preds = %38, %35
  %51 = load i32*, i32** @merged_hyp_pgd, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32*, i32** @merged_hyp_pgd, align 8
  %55 = call i32 @clear_page(i32* %54)
  %56 = load i32*, i32** @merged_hyp_pgd, align 8
  %57 = ptrtoint i32* %56 to i64
  %58 = call i32 @free_page(i64 %57)
  store i32* null, i32** @merged_hyp_pgd, align 8
  br label %59

59:                                               ; preds = %53, %50
  %60 = call i32 @mutex_unlock(i32* @kvm_hyp_pgd_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unmap_hyp_idmap_range(i32*, i64, i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @unmap_hyp_range(i32*, i32, i64) #1

declare dso_local i32 @kern_hyp_va(i64) #1

declare dso_local i32 @clear_page(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
