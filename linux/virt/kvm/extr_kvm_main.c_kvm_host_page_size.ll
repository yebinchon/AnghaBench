; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_host_page_size.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_host_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvm = type { i32 }
%struct.vm_area_struct = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvm_host_page_size(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @gfn_to_hva(%struct.kvm* %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @kvm_is_error_hva(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %17, i64* %3, align 8
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @down_read(i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_3__* %26, i64 %27)
  store %struct.vm_area_struct* %28, %struct.vm_area_struct** %6, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %30 = icmp ne %struct.vm_area_struct* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %35

32:                                               ; preds = %18
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %34 = call i64 @vma_kernel_pagesize(%struct.vm_area_struct* %33)
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %32, %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @up_read(i32* %39)
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %35, %16
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i64 @gfn_to_hva(%struct.kvm*, i32) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @vma_kernel_pagesize(%struct.vm_area_struct*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
