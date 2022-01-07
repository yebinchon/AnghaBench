; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_cblasfuncs.c__select_matrix_shape.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_cblasfuncs.c__select_matrix_shape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_scalar = common dso_local global i32 0, align 4
@_column = common dso_local global i32 0, align 4
@_matrix = common dso_local global i32 0, align 4
@_row = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @_select_matrix_shape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_select_matrix_shape(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @PyArray_NDIM(i32* %4)
  switch i32 %5, label %36 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %16
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @_scalar, align 4
  store i32 %7, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @PyArray_DIM(i32* %9, i32 0)
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @_column, align 4
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %8
  %15 = load i32, i32* @_scalar, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @PyArray_DIM(i32* %17, i32 0)
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @PyArray_DIM(i32* %21, i32 1)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @_column, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %20
  %27 = load i32, i32* @_matrix, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %16
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @PyArray_DIM(i32* %29, i32 1)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @_scalar, align 4
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @_row, align 4
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @_matrix, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %34, %32, %26, %24, %14, %12, %6
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_DIM(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
