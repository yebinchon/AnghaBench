; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hva_to_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hva_to_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i32 }

@KVM_PFN_ERR_FAULT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@EHWPOISON = common dso_local global i32 0, align 4
@KVM_PFN_ERR_HWPOISON = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32*, i32, i32*)* @hva_to_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_to_pfn(i64 %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ false, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = call i64 @hva_to_pfn_fast(i64 %25, i32 %26, i32* %27, i32* %13)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %127

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @KVM_PFN_ERR_FAULT, align 4
  store i32 %36, i32* %6, align 4
  br label %127

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @hva_to_pfn_slow(i64 %38, i32* %39, i32 %40, i32* %41, i32* %13)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %127

47:                                               ; preds = %37
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @down_read(i32* %51)
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @EHWPOISON, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %47
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @check_user_page_hwpoison(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %47
  %65 = load i32, i32* @KVM_PFN_ERR_HWPOISON, align 4
  store i32 %65, i32* %13, align 4
  br label %120

66:                                               ; preds = %60, %57
  br label %67

67:                                               ; preds = %99, %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  %74 = call %struct.vm_area_struct* @find_vma_intersection(%struct.TYPE_3__* %70, i64 %71, i64 %73)
  store %struct.vm_area_struct* %74, %struct.vm_area_struct** %12, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %76 = icmp eq %struct.vm_area_struct* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @KVM_PFN_ERR_FAULT, align 4
  store i32 %78, i32* %13, align 4
  br label %119

79:                                               ; preds = %67
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VM_IO, align 4
  %84 = load i32, i32* @VM_PFNMAP, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %79
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @hva_to_pfn_remapped(%struct.vm_area_struct* %89, i64 %90, i32* %91, i32 %92, i32* %93, i32* %13)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %67

100:                                              ; preds = %88
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @KVM_PFN_ERR_FAULT, align 4
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %103, %100
  br label %118

106:                                              ; preds = %79
  %107 = load i32*, i32** %9, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i64 @vma_is_valid(%struct.vm_area_struct* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32*, i32** %9, align 8
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %114, %109, %106
  %117 = load i32, i32* @KVM_PFN_ERR_FAULT, align 4
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %116, %105
  br label %119

119:                                              ; preds = %118, %77
  br label %120

120:                                              ; preds = %119, %64
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = call i32 @up_read(i32* %124)
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %120, %45, %35, %30
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @hva_to_pfn_fast(i64, i32, i32*, i32*) #1

declare dso_local i32 @hva_to_pfn_slow(i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @check_user_page_hwpoison(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma_intersection(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @hva_to_pfn_remapped(%struct.vm_area_struct*, i64, i32*, i32, i32*, i32*) #1

declare dso_local i64 @vma_is_valid(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
