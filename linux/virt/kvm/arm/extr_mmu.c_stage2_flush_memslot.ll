; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_flush_memslot.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_flush_memslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.kvm_memory_slot = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_memory_slot*)* @stage2_flush_memslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage2_flush_memslot(%struct.kvm* %0, %struct.kvm_memory_slot* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %4, align 8
  %9 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = shl i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %14, %20
  store i64 %21, i64* %6, align 8
  %22 = load %struct.kvm*, %struct.kvm** %3, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.kvm*, %struct.kvm** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @stage2_pgd_index(%struct.kvm* %26, i64 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32* %30, i32** %8, align 8
  br label %31

31:                                               ; preds = %48, %2
  %32 = load %struct.kvm*, %struct.kvm** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @stage2_pgd_addr_end(%struct.kvm* %32, i64 %33, i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load %struct.kvm*, %struct.kvm** %3, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @stage2_pgd_none(%struct.kvm* %36, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  %42 = load %struct.kvm*, %struct.kvm** %3, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @stage2_flush_puds(%struct.kvm* %42, i32* %43, i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %8, align 8
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %31, label %55

55:                                               ; preds = %48
  ret void
}

declare dso_local i32 @stage2_pgd_index(%struct.kvm*, i64) #1

declare dso_local i64 @stage2_pgd_addr_end(%struct.kvm*, i64, i64) #1

declare dso_local i32 @stage2_pgd_none(%struct.kvm*, i32) #1

declare dso_local i32 @stage2_flush_puds(%struct.kvm*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
