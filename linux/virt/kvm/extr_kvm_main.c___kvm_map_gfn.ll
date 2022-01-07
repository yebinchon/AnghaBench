; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___kvm_map_gfn.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___kvm_map_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kvm_memory_slot = type { i32 }
%struct.kvm_host_map = type { i32, i32, i8*, %struct.page* }

@KVM_UNMAPPED_PAGE = common dso_local global %struct.page* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_memory_slot*, i32, %struct.kvm_host_map*)* @__kvm_map_gfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kvm_map_gfn(%struct.kvm_memory_slot* %0, i32 %1, %struct.kvm_host_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_host_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kvm_host_map* %2, %struct.kvm_host_map** %7, align 8
  store i8* null, i8** %9, align 8
  %11 = load %struct.page*, %struct.page** @KVM_UNMAPPED_PAGE, align 8
  store %struct.page* %11, %struct.page** %10, align 8
  %12 = load %struct.kvm_host_map*, %struct.kvm_host_map** %7, align 8
  %13 = icmp ne %struct.kvm_host_map* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @gfn_to_pfn_memslot(%struct.kvm_memory_slot* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @is_error_noslot_pfn(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %55

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @pfn_valid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.page* @pfn_to_page(i32 %32)
  store %struct.page* %33, %struct.page** %10, align 8
  %34 = load %struct.page*, %struct.page** %10, align 8
  %35 = call i8* @kmap(%struct.page* %34)
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %55

42:                                               ; preds = %36
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = load %struct.kvm_host_map*, %struct.kvm_host_map** %7, align 8
  %45 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %44, i32 0, i32 3
  store %struct.page* %43, %struct.page** %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.kvm_host_map*, %struct.kvm_host_map** %7, align 8
  %48 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.kvm_host_map*, %struct.kvm_host_map** %7, align 8
  %51 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.kvm_host_map*, %struct.kvm_host_map** %7, align 8
  %54 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %42, %39, %24, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @gfn_to_pfn_memslot(%struct.kvm_memory_slot*, i32) #1

declare dso_local i64 @is_error_noslot_pfn(i32) #1

declare dso_local i64 @pfn_valid(i32) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
