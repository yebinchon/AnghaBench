; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i32, i32, i32, i32, i64, i32, i32, i32*, %struct.kvm*, i32 }
%struct.kvm = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vcpu_init(%struct.kvm_vcpu* %0, %struct.kvm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm* %1, %struct.kvm** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 10
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.kvm*, %struct.kvm** %6, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 9
  store %struct.kvm* %15, %struct.kvm** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 8
  store i32* null, i32** %22, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 7
  %25 = call i32 @init_swait_queue_head(i32* %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %27 = call i32 @kvm_async_pf_vcpu_init(%struct.kvm_vcpu* %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 2
  store i32 -1, i32* %29, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 6
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* @__GFP_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.page* @alloc_page(i32 %35)
  store %struct.page* %36, %struct.page** %8, align 8
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %66

42:                                               ; preds = %3
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = call i64 @page_address(%struct.page* %43)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %48 = call i32 @kvm_vcpu_set_in_spin_loop(%struct.kvm_vcpu* %47, i32 0)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %50 = call i32 @kvm_vcpu_set_dy_eligible(%struct.kvm_vcpu* %49, i32 0)
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 4
  store i32 0, i32* %54, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %56 = call i32 @kvm_arch_vcpu_init(%struct.kvm_vcpu* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  br label %61

60:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %68

61:                                               ; preds = %59
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @free_page(i64 %64)
  br label %66

66:                                               ; preds = %61, %39
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_swait_queue_head(i32*) #1

declare dso_local i32 @kvm_async_pf_vcpu_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @kvm_vcpu_set_in_spin_loop(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_set_dy_eligible(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_arch_vcpu_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
