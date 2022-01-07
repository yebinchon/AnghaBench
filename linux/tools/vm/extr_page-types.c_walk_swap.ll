; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_walk_swap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_walk_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_cgroup = common dso_local global i64 0, align 8
@opt_list = common dso_local global i32 0, align 4
@nr_pages = common dso_local global i32* null, align 8
@total_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @walk_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_swap(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @kpageflags_flags(i32 0, i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @bit_mask_ok(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  %13 = load i64, i64* @opt_cgroup, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %44

16:                                               ; preds = %12
  %17 = load i32, i32* @opt_list, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pagemap_swap_offset(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @show_page_range(i64 %20, i32 %22, i32 1, i32 %23, i32 0, i32 0)
  br label %35

25:                                               ; preds = %16
  %26 = load i32, i32* @opt_list, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pagemap_swap_offset(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @show_page(i64 %29, i32 %31, i32 %32, i32 0, i32 0)
  br label %34

34:                                               ; preds = %28, %25
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32*, i32** @nr_pages, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @hash_slot(i32 %37)
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @total_pages, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @total_pages, align 4
  br label %44

44:                                               ; preds = %35, %15, %11
  ret void
}

declare dso_local i32 @kpageflags_flags(i32, i32) #1

declare dso_local i32 @bit_mask_ok(i32) #1

declare dso_local i32 @show_page_range(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pagemap_swap_offset(i32) #1

declare dso_local i32 @show_page(i64, i32, i32, i32, i32) #1

declare dso_local i64 @hash_slot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
