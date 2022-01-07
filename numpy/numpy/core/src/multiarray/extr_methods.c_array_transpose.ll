; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_transpose.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_transpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_None = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @array_transpose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_transpose(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** @Py_None, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @PyTuple_Size(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %6, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @PyTuple_GET_ITEM(i32* %21, i32 0)
  store i32* %22, i32** %6, align 8
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** @Py_None, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @PyArray_Transpose(i32* %29, i32* null)
  store i32* %30, i32** %9, align 8
  br label %41

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @PyArray_IntpConverter(i32* %32, i32* %8)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32* null, i32** %3, align 8
  br label %43

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @PyArray_Transpose(i32* %37, i32* %8)
  store i32* %38, i32** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @npy_free_cache_dim_obj(i32 %39)
  br label %41

41:                                               ; preds = %36, %28
  %42 = load i32*, i32** %9, align 8
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32 @PyTuple_Size(i32*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32* @PyArray_Transpose(i32*, i32*) #1

declare dso_local i32 @PyArray_IntpConverter(i32*, i32*) #1

declare dso_local i32 @npy_free_cache_dim_obj(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
