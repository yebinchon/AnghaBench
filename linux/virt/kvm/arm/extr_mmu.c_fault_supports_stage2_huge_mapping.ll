; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_fault_supports_stage2_huge_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_fault_supports_stage2_huge_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i64, i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_memory_slot*, i64, i64)* @fault_supports_stage2_huge_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fault_supports_stage2_huge_mapping(%struct.kvm_memory_slot* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = shl i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 %29, 1
  %31 = and i64 %28, %30
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, 1
  %35 = and i64 %32, %34
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

38:                                               ; preds = %3
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 1
  %42 = xor i64 %41, -1
  %43 = and i64 %39, %42
  %44 = load i64, i64* %9, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = xor i64 %49, -1
  %51 = and i64 %47, %50
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* %10, align 8
  %55 = icmp ule i64 %53, %54
  br label %56

56:                                               ; preds = %46, %38
  %57 = phi i1 [ false, %38 ], [ %55, %46 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
