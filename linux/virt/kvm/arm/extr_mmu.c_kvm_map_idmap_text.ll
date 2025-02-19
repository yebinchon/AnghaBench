; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_map_idmap_text.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_map_idmap_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hyp_idmap_start = common dso_local global i32 0, align 4
@hyp_idmap_end = common dso_local global i32 0, align 4
@PAGE_HYP_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to idmap %lx-%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @kvm_map_idmap_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_map_idmap_text(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 (...) @__kvm_idmap_ptrs_per_pgd()
  %6 = load i32, i32* @hyp_idmap_start, align 4
  %7 = load i32, i32* @hyp_idmap_end, align 4
  %8 = load i32, i32* @hyp_idmap_start, align 4
  %9 = call i32 @__phys_to_pfn(i32 %8)
  %10 = load i32, i32* @PAGE_HYP_EXEC, align 4
  %11 = call i32 @__create_hyp_mappings(i32* %4, i32 %5, i32 %6, i32 %7, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @hyp_idmap_start, align 4
  %16 = load i32, i32* @hyp_idmap_end, align 4
  %17 = call i32 @kvm_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @__create_hyp_mappings(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__kvm_idmap_ptrs_per_pgd(...) #1

declare dso_local i32 @__phys_to_pfn(i32) #1

declare dso_local i32 @kvm_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
