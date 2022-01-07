; ModuleID = '/home/carl/AnghaBench/postgres/contrib/seg/extr_seg.c_gseg_leaf_consistent.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/seg/extr_seg.c_gseg_leaf_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seg_left = common dso_local global i32 0, align 4
@seg_over_left = common dso_local global i32 0, align 4
@seg_overlap = common dso_local global i32 0, align 4
@seg_over_right = common dso_local global i32 0, align 4
@seg_right = common dso_local global i32 0, align 4
@seg_same = common dso_local global i32 0, align 4
@seg_contains = common dso_local global i32 0, align 4
@seg_contained = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @gseg_leaf_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gseg_leaf_consistent(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %50 [
    i32 135, label %10
    i32 132, label %15
    i32 130, label %20
    i32 131, label %25
    i32 129, label %30
    i32 128, label %35
    i32 136, label %40
    i32 133, label %40
    i32 137, label %45
    i32 134, label %45
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @seg_left, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @DirectFunctionCall2(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  br label %51

15:                                               ; preds = %3
  %16 = load i32, i32* @seg_over_left, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DirectFunctionCall2(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load i32, i32* @seg_overlap, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @DirectFunctionCall2(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load i32, i32* @seg_over_right, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @DirectFunctionCall2(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %51

30:                                               ; preds = %3
  %31 = load i32, i32* @seg_right, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @DirectFunctionCall2(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %51

35:                                               ; preds = %3
  %36 = load i32, i32* @seg_same, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DirectFunctionCall2(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %51

40:                                               ; preds = %3, %3
  %41 = load i32, i32* @seg_contains, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @DirectFunctionCall2(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %51

45:                                               ; preds = %3, %3
  %46 = load i32, i32* @seg_contained, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @DirectFunctionCall2(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %51

50:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %45, %40, %35, %30, %25, %20, %15, %10
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @PG_RETURN_DATUM(i32 %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @PG_RETURN_DATUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
