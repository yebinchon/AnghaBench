; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_create_hyp_pud_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_create_hyp_pud_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Cannot allocate Hyp pmd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i32)* @create_hyp_pud_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_hyp_pud_mappings(i32* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
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
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %14, align 8
  br label %18

18:                                               ; preds = %63, %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* %14, align 8
  %21 = call i32* @pud_offset(i32* %19, i64 %20)
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @pud_none_or_clear_bad(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load i64, i64* %14, align 8
  %27 = call i32* @pmd_alloc_one(i32* null, i64 %26)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = call i32 @kvm_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %69

34:                                               ; preds = %25
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @kvm_pud_populate(i32* %35, i32* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @virt_to_page(i32* %38)
  %40 = call i32 @get_page(i32 %39)
  br label %41

41:                                               ; preds = %34, %18
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @pud_addr_end(i64 %42, i64 %43)
  store i64 %44, i64* %15, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @create_hyp_pmd_mappings(i32* %45, i64 %46, i64 %47, i64 %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %6, align 4
  br label %69

55:                                               ; preds = %41
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %14, align 8
  %58 = sub i64 %56, %57
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i64, i64* %15, align 8
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %18, label %68

68:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %53, %30
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i32* @pmd_alloc_one(i32*, i64) #1

declare dso_local i32 @kvm_err(i8*) #1

declare dso_local i32 @kvm_pud_populate(i32*, i32*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i32 @create_hyp_pmd_mappings(i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
