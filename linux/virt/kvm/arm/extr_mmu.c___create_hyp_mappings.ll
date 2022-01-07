; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c___create_hyp_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c___create_hyp_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kvm_hyp_pgd_mutex = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Cannot allocate Hyp pud\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i64, i32)* @__create_hyp_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__create_hyp_mappings(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %18 = call i32 @mutex_lock(i32* @kvm_hyp_pgd_mutex)
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @PAGE_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @PAGE_ALIGN(i64 %22)
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %72, %6
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @kvm_pgd_index(i64 %26, i64 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @pgd_none(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %24
  %36 = load i64, i64* %15, align 8
  %37 = call i32* @pud_alloc_one(i32* null, i64 %36)
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = call i32 @kvm_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %17, align 4
  br label %78

44:                                               ; preds = %35
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @kvm_pgd_populate(i32* %45, i32* %46)
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @virt_to_page(i32* %48)
  %50 = call i32 @get_page(i32 %49)
  br label %51

51:                                               ; preds = %44, %24
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @pgd_addr_end(i64 %52, i64 %53)
  store i64 %54, i64* %16, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @create_hyp_pud_mappings(i32* %55, i64 %56, i64 %57, i64 %58, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %78

64:                                               ; preds = %51
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %15, align 8
  %67 = sub i64 %65, %66
  %68 = load i64, i64* @PAGE_SHIFT, align 8
  %69 = lshr i64 %67, %68
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i64, i64* %16, align 8
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %24, label %77

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %63, %40
  %79 = call i32 @mutex_unlock(i32* @kvm_hyp_pgd_mutex)
  %80 = load i32, i32* %17, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @kvm_pgd_index(i64, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32* @pud_alloc_one(i32*, i64) #1

declare dso_local i32 @kvm_err(i8*) #1

declare dso_local i32 @kvm_pgd_populate(i32*, i32*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i32 @create_hyp_pud_mappings(i32*, i64, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
