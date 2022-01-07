; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___gfn_to_hva_many.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___gfn_to_hva_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i32, i64, i64 }

@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4
@KVM_HVA_ERR_BAD = common dso_local global i64 0, align 8
@KVM_HVA_ERR_RO_BAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_memory_slot*, i64, i64*, i32)* @__gfn_to_hva_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__gfn_to_hva_many(%struct.kvm_memory_slot* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %11 = icmp ne %struct.kvm_memory_slot* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12, %4
  %20 = load i64, i64* @KVM_HVA_ERR_BAD, align 8
  store i64 %20, i64* %5, align 8
  br label %48

21:                                               ; preds = %12
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %23 = call i64 @memslot_is_readonly(%struct.kvm_memory_slot* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @KVM_HVA_ERR_RO_BAD, align 8
  store i64 %29, i64* %5, align 8
  br label %48

30:                                               ; preds = %25, %21
  %31 = load i64*, i64** %8, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %35 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %39 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = sub nsw i64 %36, %41
  %43 = load i64*, i64** %8, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %33, %30
  %45 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @__gfn_to_hva_memslot(%struct.kvm_memory_slot* %45, i64 %46)
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %44, %28, %19
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local i64 @memslot_is_readonly(%struct.kvm_memory_slot*) #1

declare dso_local i64 @__gfn_to_hva_memslot(%struct.kvm_memory_slot*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
