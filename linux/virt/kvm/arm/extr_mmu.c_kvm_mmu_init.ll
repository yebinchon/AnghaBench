; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__hyp_idmap_text_start = common dso_local global i64 0, align 8
@hyp_idmap_start = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@__hyp_idmap_text_end = common dso_local global i64 0, align 8
@hyp_idmap_end = common dso_local global i32 0, align 4
@__kvm_hyp_init = common dso_local global i64 0, align 8
@hyp_idmap_vector = common dso_local global i8* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IDMAP page: %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"HYP VA range: %lx:%lx\0A\00", align 1
@PAGE_OFFSET = common dso_local global i64 0, align 8
@high_memory = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"IDMAP intersecting with HYP VA, unable to continue\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@hyp_pgd_order = common dso_local global i32 0, align 4
@hyp_pgd = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Hyp mode PGD not allocated\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@boot_hyp_pgd = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Hyp boot PGD not allocated\0A\00", align 1
@merged_hyp_pgd = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to allocate extra HYP pgd\0A\00", align 1
@io_map_base = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mmu_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @__hyp_idmap_text_start, align 8
  %4 = call i8* @kvm_virt_to_phys(i64 %3)
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* @hyp_idmap_start, align 4
  %6 = load i32, i32* @hyp_idmap_start, align 4
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = call i32 @ALIGN_DOWN(i32 %6, i32 %7)
  store i32 %8, i32* @hyp_idmap_start, align 4
  %9 = load i64, i64* @__hyp_idmap_text_end, align 8
  %10 = call i8* @kvm_virt_to_phys(i64 %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* @hyp_idmap_end, align 4
  %12 = load i32, i32* @hyp_idmap_end, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i32 @ALIGN(i32 %12, i32 %13)
  store i32 %14, i32* @hyp_idmap_end, align 4
  %15 = load i64, i64* @__kvm_hyp_init, align 8
  %16 = call i8* @kvm_virt_to_phys(i64 %15)
  store i8* %16, i8** @hyp_idmap_vector, align 8
  %17 = load i32, i32* @hyp_idmap_start, align 4
  %18 = load i32, i32* @hyp_idmap_end, align 4
  %19 = sub nsw i32 %18, 1
  %20 = xor i32 %17, %19
  %21 = load i32, i32* @PAGE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* @hyp_idmap_start, align 4
  %25 = call i32 (i8*, i32, ...) @kvm_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* @PAGE_OFFSET, align 8
  %27 = call i32 @kern_hyp_va(i64 %26)
  %28 = load i64, i64* @high_memory, align 8
  %29 = sub i64 %28, 1
  %30 = call i32 @kern_hyp_va(i64 %29)
  %31 = call i32 (i8*, i32, ...) @kvm_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @hyp_idmap_start, align 4
  %33 = load i64, i64* @PAGE_OFFSET, align 8
  %34 = call i32 @kern_hyp_va(i64 %33)
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %0
  %37 = load i32, i32* @hyp_idmap_start, align 4
  %38 = load i64, i64* @high_memory, align 8
  %39 = sub i64 %38, 1
  %40 = call i32 @kern_hyp_va(i64 %39)
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* @hyp_idmap_start, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @__hyp_idmap_text_start, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = call i32 @kvm_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %111

51:                                               ; preds = %42, %36, %0
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = load i32, i32* @__GFP_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @hyp_pgd_order, align 4
  %56 = call i64 @__get_free_pages(i32 %54, i32 %55)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** @hyp_pgd, align 8
  %58 = load i32*, i32** @hyp_pgd, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = call i32 @kvm_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %111

64:                                               ; preds = %51
  %65 = call i64 (...) @__kvm_cpu_uses_extended_idmap()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = load i32, i32* @__GFP_ZERO, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @hyp_pgd_order, align 4
  %72 = call i64 @__get_free_pages(i32 %70, i32 %71)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** @boot_hyp_pgd, align 8
  %74 = load i32*, i32** @boot_hyp_pgd, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %67
  %77 = call i32 @kvm_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %111

80:                                               ; preds = %67
  %81 = load i32*, i32** @boot_hyp_pgd, align 8
  %82 = call i32 @kvm_map_idmap_text(i32* %81)
  store i32 %82, i32* %2, align 4
  %83 = load i32, i32* %2, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %111

86:                                               ; preds = %80
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = load i32, i32* @__GFP_ZERO, align 4
  %89 = or i32 %87, %88
  %90 = call i64 @__get_free_page(i32 %89)
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** @merged_hyp_pgd, align 8
  %92 = load i32*, i32** @merged_hyp_pgd, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %86
  %95 = call i32 @kvm_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %111

96:                                               ; preds = %86
  %97 = load i32*, i32** @boot_hyp_pgd, align 8
  %98 = load i32*, i32** @hyp_pgd, align 8
  %99 = load i32*, i32** @merged_hyp_pgd, align 8
  %100 = load i32, i32* @hyp_idmap_start, align 4
  %101 = call i32 @__kvm_extend_hypmap(i32* %97, i32* %98, i32* %99, i32 %100)
  br label %109

102:                                              ; preds = %64
  %103 = load i32*, i32** @hyp_pgd, align 8
  %104 = call i32 @kvm_map_idmap_text(i32* %103)
  store i32 %104, i32* %2, align 4
  %105 = load i32, i32* %2, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %111

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %96
  %110 = load i32, i32* @hyp_idmap_start, align 4
  store i32 %110, i32* @io_map_base, align 4
  store i32 0, i32* %1, align 4
  br label %114

111:                                              ; preds = %107, %94, %85, %76, %60, %47
  %112 = call i32 (...) @free_hyp_pgds()
  %113 = load i32, i32* %2, align 4
  store i32 %113, i32* %1, align 4
  br label %114

114:                                              ; preds = %111, %109
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local i8* @kvm_virt_to_phys(i64) #1

declare dso_local i32 @ALIGN_DOWN(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvm_debug(i8*, i32, ...) #1

declare dso_local i32 @kern_hyp_va(i64) #1

declare dso_local i32 @kvm_err(i8*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i64 @__kvm_cpu_uses_extended_idmap(...) #1

declare dso_local i32 @kvm_map_idmap_text(i32*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @__kvm_extend_hypmap(i32*, i32*, i32*, i32) #1

declare dso_local i32 @free_hyp_pgds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
