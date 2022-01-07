; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson06/1/xdfm1/src/extr_mm.c_do_mem_abort.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson06/1/xdfm1/src/extr_mm.c_do_mem_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@ind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_mem_abort(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = and i64 %8, 63
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = and i64 %10, 60
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = call i64 (...) @get_free_page()
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %32

18:                                               ; preds = %13
  %19 = load i32, i32* @current, align 4
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @PAGE_MASK, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @map_page(i32 %19, i64 %22, i64 %23)
  %25 = load i32, i32* @ind, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @ind, align 4
  %27 = load i32, i32* @ind, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %32

30:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %29, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @get_free_page(...) #1

declare dso_local i32 @map_page(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
