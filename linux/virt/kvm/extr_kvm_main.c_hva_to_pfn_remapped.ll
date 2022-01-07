; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hva_to_pfn_remapped.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hva_to_pfn_remapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i32*, i32, i32*, i64*)* @hva_to_pfn_remapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_to_pfn_remapped(%struct.vm_area_struct* %0, i64 %1, i32* %2, i32 %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @follow_pfn(%struct.vm_area_struct* %17, i64 %18, i64* %14)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = call i32 @fixup_user_fault(%struct.TYPE_3__* %23, i32 %26, i64 %27, i32 %34, i32* %16)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %65

41:                                               ; preds = %33
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %7, align 4
  br label %65

46:                                               ; preds = %41
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @follow_pfn(%struct.vm_area_struct* %47, i64 %48, i64* %14)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %7, align 4
  br label %65

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %6
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32*, i32** %12, align 8
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @kvm_get_pfn(i64 %61)
  %63 = load i64, i64* %14, align 8
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %52, %44, %38
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @follow_pfn(%struct.vm_area_struct*, i64, i64*) #1

declare dso_local i32 @fixup_user_fault(%struct.TYPE_3__*, i32, i64, i32, i32*) #1

declare dso_local i32 @kvm_get_pfn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
