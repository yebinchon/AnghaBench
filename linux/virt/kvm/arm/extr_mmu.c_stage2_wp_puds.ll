; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_wp_puds.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_stage2_wp_puds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, i64, i64)* @stage2_wp_puds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage2_wp_puds(%struct.kvm* %0, i32* %1, i64 %2, i64 %3) #0 {
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

15:                                               ; preds = %47, %4
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
  br i1 %24, label %46, label %25

25:                                               ; preds = %15
  %26 = load %struct.kvm*, %struct.kvm** %5, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @stage2_pud_huge(%struct.kvm* %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @kvm_s2pud_readonly(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @kvm_set_s2pud_readonly(i32* %36)
  br label %38

38:                                               ; preds = %35, %31
  br label %45

39:                                               ; preds = %25
  %40 = load %struct.kvm*, %struct.kvm** %5, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @stage2_wp_pmds(%struct.kvm* %40, i32* %41, i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %39, %38
  br label %46

46:                                               ; preds = %45, %15
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %9, align 8
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %15, label %54

54:                                               ; preds = %47
  ret void
}

declare dso_local i32* @stage2_pud_offset(%struct.kvm*, i32*, i64) #1

declare dso_local i64 @stage2_pud_addr_end(%struct.kvm*, i64, i64) #1

declare dso_local i32 @stage2_pud_none(%struct.kvm*, i32) #1

declare dso_local i64 @stage2_pud_huge(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_s2pud_readonly(i32*) #1

declare dso_local i32 @kvm_set_s2pud_readonly(i32*) #1

declare dso_local i32 @stage2_wp_pmds(%struct.kvm*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
