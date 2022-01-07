; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_add_page.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_cgroup = common dso_local global i64 0, align 8
@opt_hwpoison = common dso_local global i64 0, align 8
@opt_unpoison = common dso_local global i64 0, align 8
@opt_mark_idle = common dso_local global i64 0, align 8
@opt_list = common dso_local global i32 0, align 4
@nr_pages = common dso_local global i32* null, align 8
@total_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64, i64)* @add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_page(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %12, align 8
  %15 = call i64 @kpageflags_flags(i64 %13, i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @bit_mask_ok(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %76

20:                                               ; preds = %6
  %21 = load i64, i64* @opt_cgroup, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @opt_cgroup, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %76

28:                                               ; preds = %23, %20
  %29 = load i64, i64* @opt_hwpoison, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @hwpoison_page(i64 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i64, i64* @opt_unpoison, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @unpoison_page(i64 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i64, i64* @opt_mark_idle, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @mark_page_idle(i64 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @opt_list, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @show_page_range(i64 %50, i64 %51, i32 1, i64 %52, i64 %53, i64 %54)
  br label %67

56:                                               ; preds = %46
  %57 = load i32, i32* @opt_list, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @show_page(i64 %60, i64 %61, i64 %62, i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %56
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i32*, i32** @nr_pages, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @hash_slot(i64 %69)
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @total_pages, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @total_pages, align 4
  br label %76

76:                                               ; preds = %67, %27, %19
  ret void
}

declare dso_local i64 @kpageflags_flags(i64, i64) #1

declare dso_local i32 @bit_mask_ok(i64) #1

declare dso_local i32 @hwpoison_page(i64) #1

declare dso_local i32 @unpoison_page(i64) #1

declare dso_local i32 @mark_page_idle(i64) #1

declare dso_local i32 @show_page_range(i64, i64, i32, i64, i64, i64) #1

declare dso_local i32 @show_page(i64, i64, i64, i64, i64) #1

declare dso_local i64 @hash_slot(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
