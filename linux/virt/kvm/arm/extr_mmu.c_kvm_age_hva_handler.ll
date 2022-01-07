; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_age_hva_handler.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_age_hva_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32, i64, i8*)* @kvm_age_hva_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_age_hva_handler(%struct.kvm* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @PMD_SIZE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @PUD_SIZE, align 8
  %23 = icmp ne i64 %21, %22
  br label %24

24:                                               ; preds = %20, %16, %4
  %25 = phi i1 [ false, %16 ], [ false, %4 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.kvm*, %struct.kvm** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @stage2_get_leaf_entry(%struct.kvm* %28, i32 %29, i32** %10, i32** %11, i32** %12)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %48

33:                                               ; preds = %24
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @stage2_pudp_test_and_clear_young(i32* %37)
  store i32 %38, i32* %5, align 4
  br label %48

39:                                               ; preds = %33
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @stage2_pmdp_test_and_clear_young(i32* %43)
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %39
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @stage2_ptep_test_and_clear_young(i32* %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %42, %36, %32
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @stage2_get_leaf_entry(%struct.kvm*, i32, i32**, i32**, i32**) #1

declare dso_local i32 @stage2_pudp_test_and_clear_young(i32*) #1

declare dso_local i32 @stage2_pmdp_test_and_clear_young(i32*) #1

declare dso_local i32 @stage2_ptep_test_and_clear_young(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
