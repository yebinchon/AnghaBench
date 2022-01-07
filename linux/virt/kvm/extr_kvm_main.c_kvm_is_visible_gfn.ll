; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_is_visible_gfn.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_is_visible_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64, i32 }

@KVM_USER_MEM_SLOTS = common dso_local global i64 0, align 8
@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_is_visible_gfn(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm*, %struct.kvm** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %7, i32 %8)
  store %struct.kvm_memory_slot* %9, %struct.kvm_memory_slot** %6, align 8
  %10 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %11 = icmp ne %struct.kvm_memory_slot* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KVM_USER_MEM_SLOTS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %12, %2
  store i32 0, i32* %3, align 4
  br label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
