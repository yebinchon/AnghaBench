; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_free_memslot.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_free_memslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_memory_slot*, %struct.kvm_memory_slot*)* @kvm_free_memslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_free_memslot(%struct.kvm* %0, %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot** %6, align 8
  %7 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %8 = icmp ne %struct.kvm_memory_slot* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9, %3
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %19 = call i32 @kvm_destroy_dirty_bitmap(%struct.kvm_memory_slot* %18)
  br label %20

20:                                               ; preds = %17, %9
  %21 = load %struct.kvm*, %struct.kvm** %4, align 8
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %24 = call i32 @kvm_arch_free_memslot(%struct.kvm* %21, %struct.kvm_memory_slot* %22, %struct.kvm_memory_slot* %23)
  %25 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  ret void
}

declare dso_local i32 @kvm_destroy_dirty_bitmap(%struct.kvm_memory_slot*) #1

declare dso_local i32 @kvm_arch_free_memslot(%struct.kvm*, %struct.kvm_memory_slot*, %struct.kvm_memory_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
