; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_check_memory_region_flags.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_check_memory_region_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_userspace_memory_region = type { i32 }

@KVM_MEM_LOG_DIRTY_PAGES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_MEM_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_userspace_memory_region*)* @check_memory_region_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_memory_region_flags(%struct.kvm_userspace_memory_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_userspace_memory_region*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_userspace_memory_region* %0, %struct.kvm_userspace_memory_region** %3, align 8
  %5 = load i32, i32* @KVM_MEM_LOG_DIRTY_PAGES, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
