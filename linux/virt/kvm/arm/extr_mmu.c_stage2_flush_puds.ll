; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_flush_puds.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_flush_puds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, i64, i64)* @stage2_flush_puds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage2_flush_puds(%struct.kvm* %0, i32* %1, i64 %2, i64 %3) #0 {
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
  %14 = call i32* @stage2_pud_offset(%struct.kvm* %11, i32* %12, i64 %13)
  store i32* %14, i32** %9, align 8
  br label %15

15:                                               ; preds = %43, %4
  %16 = load %struct.kvm*, %struct.kvm** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @stage2_pud_addr_end(%struct.kvm* %16, i64 %17, i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.kvm*, %struct.kvm** %5, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @stage2_pud_none(%struct.kvm* %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %15
  %26 = load %struct.kvm*, %struct.kvm** %5, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @stage2_pud_huge(%struct.kvm* %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kvm_flush_dcache_pud(i32 %33)
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.kvm*, %struct.kvm** %5, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @stage2_flush_pmds(%struct.kvm* %36, i32* %37, i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %35, %31
  br label %42

42:                                               ; preds = %41, %15
  br label %43

43:                                               ; preds = %42
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %9, align 8
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %15, label %50

50:                                               ; preds = %43
  ret void
}

declare dso_local i32* @stage2_pud_offset(%struct.kvm*, i32*, i64) #1

declare dso_local i64 @stage2_pud_addr_end(%struct.kvm*, i64, i64) #1

declare dso_local i32 @stage2_pud_none(%struct.kvm*, i32) #1

declare dso_local i64 @stage2_pud_huge(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_flush_dcache_pud(i32) #1

declare dso_local i32 @stage2_flush_pmds(%struct.kvm*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
