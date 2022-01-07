; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_wp_pmds.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_wp_pmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, i64, i64)* @stage2_wp_pmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage2_wp_pmds(%struct.kvm* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.kvm*, %struct.kvm** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32* @stage2_pmd_offset(%struct.kvm* %11, i32* %12, i64 %13)
  store i32* %14, i32** %9, align 8
  br label %15

15:                                               ; preds = %44, %4
  %16 = load %struct.kvm*, %struct.kvm** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @stage2_pmd_addr_end(%struct.kvm* %16, i64 %17, i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pmd_none(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %15
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pmd_thp_or_huge(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @kvm_s2pmd_readonly(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @kvm_set_s2pmd_readonly(i32* %34)
  br label %36

36:                                               ; preds = %33, %29
  br label %42

37:                                               ; preds = %24
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @stage2_wp_ptes(i32* %38, i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %36
  br label %43

43:                                               ; preds = %42, %15
  br label %44

44:                                               ; preds = %43
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %9, align 8
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %15, label %51

51:                                               ; preds = %44
  ret void
}

declare dso_local i32* @stage2_pmd_offset(%struct.kvm*, i32*, i64) #1

declare dso_local i64 @stage2_pmd_addr_end(%struct.kvm*, i64, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i64 @pmd_thp_or_huge(i32) #1

declare dso_local i32 @kvm_s2pmd_readonly(i32*) #1

declare dso_local i32 @kvm_set_s2pmd_readonly(i32*) #1

declare dso_local i32 @stage2_wp_ptes(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
