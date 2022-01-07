; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_get_pud.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_get_pud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.kvm_mmu_memory_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.kvm*, %struct.kvm_mmu_memory_cache*, i32)* @stage2_get_pud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stage2_get_pud(%struct.kvm* %0, %struct.kvm_mmu_memory_cache* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_mmu_memory_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_mmu_memory_cache* %1, %struct.kvm_mmu_memory_cache** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kvm*, %struct.kvm** %5, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.kvm*, %struct.kvm** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @stage2_pgd_index(%struct.kvm* %14, i32 %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32* %18, i32** %8, align 8
  %19 = load %struct.kvm*, %struct.kvm** %5, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @stage2_pgd_none(%struct.kvm* %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %3
  %25 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %6, align 8
  %26 = icmp ne %struct.kvm_mmu_memory_cache* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32* null, i32** %4, align 8
  br label %43

28:                                               ; preds = %24
  %29 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %6, align 8
  %30 = call i32* @mmu_memory_cache_alloc(%struct.kvm_mmu_memory_cache* %29)
  store i32* %30, i32** %9, align 8
  %31 = load %struct.kvm*, %struct.kvm** %5, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @stage2_pgd_populate(%struct.kvm* %31, i32* %32, i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @virt_to_page(i32* %35)
  %37 = call i32 @get_page(i32 %36)
  br label %38

38:                                               ; preds = %28, %3
  %39 = load %struct.kvm*, %struct.kvm** %5, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32* @stage2_pud_offset(%struct.kvm* %39, i32* %40, i32 %41)
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %38, %27
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32 @stage2_pgd_index(%struct.kvm*, i32) #1

declare dso_local i64 @stage2_pgd_none(%struct.kvm*, i32) #1

declare dso_local i32* @mmu_memory_cache_alloc(%struct.kvm_mmu_memory_cache*) #1

declare dso_local i32 @stage2_pgd_populate(%struct.kvm*, i32*, i32*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i32* @stage2_pud_offset(%struct.kvm*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
