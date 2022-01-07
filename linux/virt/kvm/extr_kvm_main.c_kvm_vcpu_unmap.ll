; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vcpu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_host_map = type { i32*, i32*, i32, i32 }

@KVM_UNMAPPED_PAGE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vcpu_unmap(%struct.kvm_vcpu* %0, %struct.kvm_host_map* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_host_map*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_host_map* %1, %struct.kvm_host_map** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.kvm_host_map*, %struct.kvm_host_map** %5, align 8
  %8 = icmp ne %struct.kvm_host_map* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %50

10:                                               ; preds = %3
  %11 = load %struct.kvm_host_map*, %struct.kvm_host_map** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %50

16:                                               ; preds = %10
  %17 = load %struct.kvm_host_map*, %struct.kvm_host_map** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** @KVM_UNMAPPED_PAGE, align 8
  %21 = icmp ne i32* %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.kvm_host_map*, %struct.kvm_host_map** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kunmap(i32* %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = load %struct.kvm_host_map*, %struct.kvm_host_map** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kvm_vcpu_mark_page_dirty(%struct.kvm_vcpu* %31, i32 %34)
  %36 = load %struct.kvm_host_map*, %struct.kvm_host_map** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kvm_release_pfn_dirty(i32 %38)
  br label %45

40:                                               ; preds = %27
  %41 = load %struct.kvm_host_map*, %struct.kvm_host_map** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @kvm_release_pfn_clean(i32 %43)
  br label %45

45:                                               ; preds = %40, %30
  %46 = load %struct.kvm_host_map*, %struct.kvm_host_map** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.kvm_host_map*, %struct.kvm_host_map** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %15, %9
  ret void
}

declare dso_local i32 @kunmap(i32*) #1

declare dso_local i32 @kvm_vcpu_mark_page_dirty(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_release_pfn_dirty(i32) #1

declare dso_local i32 @kvm_release_pfn_clean(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
