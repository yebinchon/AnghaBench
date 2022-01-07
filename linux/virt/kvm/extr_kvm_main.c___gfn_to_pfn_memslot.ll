; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___gfn_to_pfn_memslot.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___gfn_to_pfn_memslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i32 }

@KVM_HVA_ERR_RO_BAD = common dso_local global i64 0, align 8
@KVM_PFN_ERR_RO_FAULT = common dso_local global i32 0, align 4
@KVM_PFN_NOSLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gfn_to_pfn_memslot(%struct.kvm_memory_slot* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i64 @__gfn_to_hva_many(%struct.kvm_memory_slot* %15, i32 %16, i32* null, i32 %17)
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %14, align 8
  %20 = load i64, i64* @KVM_HVA_ERR_RO_BAD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** %13, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* @KVM_PFN_ERR_RO_FAULT, align 4
  store i32 %28, i32* %7, align 4
  br label %56

29:                                               ; preds = %6
  %30 = load i64, i64* %14, align 8
  %31 = call i64 @kvm_is_error_hva(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32*, i32** %13, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* @KVM_PFN_NOSLOT, align 4
  store i32 %39, i32* %7, align 4
  br label %56

40:                                               ; preds = %29
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %45 = call i64 @memslot_is_readonly(%struct.kvm_memory_slot* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  store i32 0, i32* %48, align 4
  store i32* null, i32** %13, align 8
  br label %49

49:                                               ; preds = %47, %43, %40
  %50 = load i64, i64* %14, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @hva_to_pfn(i64 %50, i32 %51, i32* %52, i32 %53, i32* %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %38, %27
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i64 @__gfn_to_hva_many(%struct.kvm_memory_slot*, i32, i32*, i32) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i64 @memslot_is_readonly(%struct.kvm_memory_slot*) #1

declare dso_local i32 @hva_to_pfn(i64, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
