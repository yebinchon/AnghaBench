; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_unmap_stage2_range.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_unmap_stage2_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i64, i32)* @unmap_stage2_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_stage2_range(%struct.kvm* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  store i64 %15, i64* %9, align 8
  %16 = load %struct.kvm*, %struct.kvm** %4, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = call i32 @assert_spin_locked(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PAGE_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.kvm*, %struct.kvm** %4, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.kvm*, %struct.kvm** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @stage2_pgd_index(%struct.kvm* %28, i64 %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32* %32, i32** %7, align 8
  br label %33

33:                                               ; preds = %66, %3
  %34 = load %struct.kvm*, %struct.kvm** %4, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @READ_ONCE(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %73

41:                                               ; preds = %33
  %42 = load %struct.kvm*, %struct.kvm** %4, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @stage2_pgd_addr_end(%struct.kvm* %42, i64 %43, i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load %struct.kvm*, %struct.kvm** %4, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @stage2_pgd_none(%struct.kvm* %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %41
  %52 = load %struct.kvm*, %struct.kvm** %4, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @unmap_stage2_puds(%struct.kvm* %52, i32* %53, i64 %54, i64 %55)
  br label %57

57:                                               ; preds = %51, %41
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.kvm*, %struct.kvm** %4, align 8
  %63 = getelementptr inbounds %struct.kvm, %struct.kvm* %62, i32 0, i32 0
  %64 = call i32 @cond_resched_lock(i32* %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %7, align 8
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %33, label %73

73:                                               ; preds = %66, %40
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @stage2_pgd_index(%struct.kvm*, i64) #1

declare dso_local i32 @READ_ONCE(i32*) #1

declare dso_local i64 @stage2_pgd_addr_end(%struct.kvm*, i64, i64) #1

declare dso_local i32 @stage2_pgd_none(%struct.kvm*, i32) #1

declare dso_local i32 @unmap_stage2_puds(%struct.kvm*, i32*, i64, i64) #1

declare dso_local i32 @cond_resched_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
