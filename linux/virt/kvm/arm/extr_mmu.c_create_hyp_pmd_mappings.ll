; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_create_hyp_pmd_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_create_hyp_pmd_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Cannot allocate Hyp pte\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i32)* @create_hyp_pmd_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_hyp_pmd_mappings(i32* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %14, align 8
  br label %17

17:                                               ; preds = %61, %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* %14, align 8
  %20 = call i32* @pmd_offset(i32* %18, i64 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pmd_sect(i32 %22)
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pmd_none(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %17
  %30 = call i32* @pte_alloc_one_kernel(i32* null)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = call i32 @kvm_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %67

37:                                               ; preds = %29
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @kvm_pmd_populate(i32* %38, i32* %39)
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @virt_to_page(i32* %41)
  %43 = call i32 @get_page(i32 %42)
  br label %44

44:                                               ; preds = %37, %17
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @pmd_addr_end(i64 %45, i64 %46)
  store i64 %47, i64* %15, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @create_hyp_pte_mappings(i32* %48, i64 %49, i64 %50, i64 %51, i32 %52)
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %14, align 8
  %56 = sub i64 %54, %55
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = lshr i64 %56, %57
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %44
  %62 = load i64, i64* %15, align 8
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %17, label %66

66:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pmd_sect(i32) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32* @pte_alloc_one_kernel(i32*) #1

declare dso_local i32 @kvm_err(i8*) #1

declare dso_local i32 @kvm_pmd_populate(i32*, i32*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i32 @create_hyp_pte_mappings(i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
