; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vm_ioctl_check_extension_generic.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vm_ioctl_check_extension_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@KVM_USER_MEM_SLOTS = common dso_local global i64 0, align 8
@KVM_ADDRESS_SPACE_NUM = common dso_local global i64 0, align 8
@KVM_COALESCED_MMIO_PAGE_OFFSET = common dso_local global i64 0, align 8
@KVM_MAX_IRQ_ROUTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*, i64)* @kvm_vm_ioctl_check_extension_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_vm_ioctl_check_extension_generic(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  switch i64 %6, label %10 [
    i64 128, label %7
    i64 140, label %7
    i64 133, label %7
    i64 138, label %7
    i64 137, label %7
    i64 143, label %7
    i64 139, label %7
    i64 130, label %8
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  store i64 1, i64* %3, align 8
  br label %15

8:                                                ; preds = %2
  %9 = load i64, i64* @KVM_USER_MEM_SLOTS, align 8
  store i64 %9, i64* %3, align 8
  br label %15

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10
  %12 = load %struct.kvm*, %struct.kvm** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @kvm_vm_ioctl_check_extension(%struct.kvm* %12, i64 %13)
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %11, %8, %7
  %16 = load i64, i64* %3, align 8
  ret i64 %16
}

declare dso_local i64 @kvm_vm_ioctl_check_extension(%struct.kvm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
