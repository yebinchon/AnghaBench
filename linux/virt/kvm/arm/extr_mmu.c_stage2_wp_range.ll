; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_wp_range.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_wp_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i64, i64)* @stage2_wp_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage2_wp_range(%struct.kvm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.kvm*, %struct.kvm** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @stage2_pgd_index(%struct.kvm* %13, i64 %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %7, align 8
  br label %18

18:                                               ; preds = %46, %3
  %19 = load %struct.kvm*, %struct.kvm** %4, align 8
  %20 = getelementptr inbounds %struct.kvm, %struct.kvm* %19, i32 0, i32 1
  %21 = call i32 @cond_resched_lock(i32* %20)
  %22 = load %struct.kvm*, %struct.kvm** %4, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @READ_ONCE(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %53

29:                                               ; preds = %18
  %30 = load %struct.kvm*, %struct.kvm** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @stage2_pgd_addr_end(%struct.kvm* %30, i64 %31, i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.kvm*, %struct.kvm** %4, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @stage2_pgd_present(%struct.kvm* %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.kvm*, %struct.kvm** %4, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @stage2_wp_puds(%struct.kvm* %40, i32* %41, i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %39, %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %7, align 8
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %18, label %53

53:                                               ; preds = %46, %28
  ret void
}

declare dso_local i32 @stage2_pgd_index(%struct.kvm*, i64) #1

declare dso_local i32 @cond_resched_lock(i32*) #1

declare dso_local i32 @READ_ONCE(i32*) #1

declare dso_local i64 @stage2_pgd_addr_end(%struct.kvm*, i64, i64) #1

declare dso_local i64 @stage2_pgd_present(%struct.kvm*, i32) #1

declare dso_local i32 @stage2_wp_puds(%struct.kvm*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
