; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_coalesced_mmio.c_kvm_coalesced_mmio_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_coalesced_mmio.c_kvm_coalesced_mmio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32, i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_coalesced_mmio_init(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @__GFP_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.page* @alloc_page(i32 %9)
  store %struct.page* %10, %struct.page** %3, align 8
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = icmp ne %struct.page* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %25

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @page_address(%struct.page* %15)
  %17 = load %struct.kvm*, %struct.kvm** %2, align 8
  %18 = getelementptr inbounds %struct.kvm, %struct.kvm* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.kvm*, %struct.kvm** %2, align 8
  %20 = getelementptr inbounds %struct.kvm, %struct.kvm* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.kvm*, %struct.kvm** %2, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 0
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  br label %25

25:                                               ; preds = %14, %13
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
