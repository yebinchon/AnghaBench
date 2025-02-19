; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_create_hyp_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_create_hyp_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@hyp_pgd = common dso_local global i32 0, align 4
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_hyp_mappings(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = call i64 @kern_hyp_va(i64 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = call i64 @kern_hyp_va(i64 %17)
  store i64 %18, i64* %11, align 8
  %19 = call i64 (...) @is_kernel_in_hyp_mode()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

22:                                               ; preds = %3
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @PAGE_ALIGN(i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %56, %22
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 0, %37
  %39 = getelementptr i8, i8* %36, i64 %38
  %40 = call i32 @kvm_kaddr_to_phys(i8* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @hyp_pgd, align 4
  %42 = load i32, i32* @PTRS_PER_PGD, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = add i64 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @__phys_to_pfn(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @__create_hyp_mappings(i32 %41, i32 %42, i64 %43, i64 %46, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %29

60:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %53, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @kern_hyp_va(i64) #1

declare dso_local i64 @is_kernel_in_hyp_mode(...) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @kvm_kaddr_to_phys(i8*) #1

declare dso_local i32 @__create_hyp_mappings(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @__phys_to_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
