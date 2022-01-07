; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_read_guest_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_read_guest_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vcpu_read_guest_atomic(%struct.kvm_vcpu* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_memory_slot*, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu* %15, i32 %16)
  store %struct.kvm_memory_slot* %17, %struct.kvm_memory_slot** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @offset_in_page(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @__kvm_read_guest_atomic(%struct.kvm_memory_slot* %20, i32 %21, i8* %22, i32 %23, i64 %24)
  ret i32 %25
}

declare dso_local %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @__kvm_read_guest_atomic(%struct.kvm_memory_slot*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
