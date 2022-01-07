; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___kvm_gfn_to_hva_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c___kvm_gfn_to_hva_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memslots = type { i32 }
%struct.gfn_to_hva_cache = type { i64, i64, i32, i32*, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KVM_HVA_ERR_BAD = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_memslots*, %struct.gfn_to_hva_cache*, i64, i64)* @__kvm_gfn_to_hva_cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kvm_gfn_to_hva_cache_init(%struct.kvm_memslots* %0, %struct.gfn_to_hva_cache* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_memslots*, align 8
  %6 = alloca %struct.gfn_to_hva_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.kvm_memslots* %0, %struct.kvm_memslots** %5, align 8
  store %struct.gfn_to_hva_cache* %1, %struct.gfn_to_hva_cache** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @offset_in_page(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %22, 1
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub nsw i64 %26, %27
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %36, %34 ]
  store i32 %38, i32* %14, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %41 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.kvm_memslots*, %struct.kvm_memslots** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %46 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %49 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @KVM_HVA_ERR_BAD, align 4
  %51 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %52 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %83, %37
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp sle i64 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %62, label %87

62:                                               ; preds = %60
  %63 = load %struct.kvm_memslots*, %struct.kvm_memslots** %5, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32* @__gfn_to_memslot(%struct.kvm_memslots* %63, i64 %64)
  %66 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %67 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %69 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @gfn_to_hva_many(i32* %70, i64 %71, i64* %13)
  %73 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %74 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %76 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @kvm_is_error_hva(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load i32, i32* @EFAULT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %80, %62
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %10, align 8
  br label %53

87:                                               ; preds = %60
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* %12, align 8
  %92 = icmp eq i64 %91, 1
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %96 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %102

99:                                               ; preds = %90, %87
  %100 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %6, align 8
  %101 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %100, i32 0, i32 3
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %99, %93
  %103 = load i32, i32* %14, align 4
  ret i32 %103
}

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32* @__gfn_to_memslot(%struct.kvm_memslots*, i64) #1

declare dso_local i32 @gfn_to_hva_many(i32*, i64, i64*) #1

declare dso_local i64 @kvm_is_error_hva(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
