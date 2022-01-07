; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_gfn_to_hva_memslot_prot.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_gfn_to_hva_memslot_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gfn_to_hva_memslot_prot(%struct.kvm_memory_slot* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @__gfn_to_hva_many(%struct.kvm_memory_slot* %8, i32 %9, i32* null, i32 0)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @kvm_is_error_hva(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %19 = call i32 @memslot_is_readonly(%struct.kvm_memory_slot* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %14, %3
  %25 = load i64, i64* %7, align 8
  ret i64 %25
}

declare dso_local i64 @__gfn_to_hva_many(%struct.kvm_memory_slot*, i32, i32*, i32) #1

declare dso_local i32 @kvm_is_error_hva(i64) #1

declare dso_local i32 @memslot_is_readonly(%struct.kvm_memory_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
