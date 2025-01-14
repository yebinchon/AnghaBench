; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_phys_addr_ioremap.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_phys_addr_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_mmu_memory_cache = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_S2_DEVICE = common dso_local global i32 0, align 4
@KVM_NR_MEM_OBJS = common dso_local global i32 0, align 4
@KVM_S2PTE_FLAG_IS_IOMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_phys_addr_ioremap(%struct.kvm* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.kvm_mmu_memory_cache, align 4
  %16 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %17 = bitcast %struct.kvm_mmu_memory_cache* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %18, %19
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %22, 1
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @__phys_to_pfn(i64 %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %67, %5
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load i64, i64* %14, align 8
  %35 = load i32, i32* @PAGE_S2_DEVICE, align 4
  %36 = call i32 @kvm_pfn_pte(i64 %34, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @kvm_s2pte_mkwrite(i32 %40)
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.kvm*, %struct.kvm** %6, align 8
  %44 = call i32 @kvm_mmu_cache_min_pages(%struct.kvm* %43)
  %45 = load i32, i32* @KVM_NR_MEM_OBJS, align 4
  %46 = call i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache* %15, i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %72

50:                                               ; preds = %42
  %51 = load %struct.kvm*, %struct.kvm** %6, align 8
  %52 = getelementptr inbounds %struct.kvm, %struct.kvm* %51, i32 0, i32 0
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.kvm*, %struct.kvm** %6, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* @KVM_S2PTE_FLAG_IS_IOMAP, align 4
  %57 = call i32 @stage2_set_pte(%struct.kvm* %54, %struct.kvm_mmu_memory_cache* %15, i64 %55, i32* %16, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.kvm*, %struct.kvm** %6, align 8
  %59 = getelementptr inbounds %struct.kvm, %struct.kvm* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %72

64:                                               ; preds = %50
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %11, align 8
  br label %29

71:                                               ; preds = %29
  br label %72

72:                                               ; preds = %71, %63, %49
  %73 = call i32 @mmu_free_memory_cache(%struct.kvm_mmu_memory_cache* %15)
  %74 = load i32, i32* %13, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__phys_to_pfn(i64) #2

declare dso_local i32 @kvm_pfn_pte(i64, i32) #2

declare dso_local i32 @kvm_s2pte_mkwrite(i32) #2

declare dso_local i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache*, i32, i32) #2

declare dso_local i32 @kvm_mmu_cache_min_pages(%struct.kvm*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @stage2_set_pte(%struct.kvm*, %struct.kvm_mmu_memory_cache*, i64, i32*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @mmu_free_memory_cache(%struct.kvm_mmu_memory_cache*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
