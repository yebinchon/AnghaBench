; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/debounce/extr_eager_pr.c_debounce.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/debounce/extr_eager_pr.c_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DEBOUNCE = common dso_local global i32 0, align 4
@counters_need_update = common dso_local global i32 0, align 4
@matrix_need_update = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debounce(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @timer_read()
  %12 = load i32, i32* @MAX_DEBOUNCE, align 4
  %13 = srem i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @counters_need_update, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @counters_need_update, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @update_debounce_counters(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @counters_need_update, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @matrix_need_update, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %27, %21
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @transfer_matrix_values(i32* %34, i32* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @update_debounce_counters(i32, i32) #1

declare dso_local i32 @transfer_matrix_values(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
