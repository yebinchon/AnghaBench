; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_convert.c_recursive_tolist.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_convert.c_recursive_tolist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32)* @recursive_tolist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @recursive_tolist(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @PyArray_NDIM(i32* %14)
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @PyArray_GETITEM(i32* %18, i8* %19)
  store i32* %20, i32** %4, align 8
  br label %62

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @PyArray_DIM(i32* %22, i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @PyArray_STRIDE(i32* %25, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32* @PyList_New(i64 %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32* null, i32** %4, align 8
  br label %62

33:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32* @recursive_tolist(i32* %39, i8* %40, i32 %42)
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @Py_DECREF(i32* %47)
  store i32* null, i32** %4, align 8
  br label %62

49:                                               ; preds = %38
  %50 = load i32*, i32** %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @PyList_SET_ITEM(i32* %50, i64 %51, i32* %52)
  %54 = load i64, i64* %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %34

60:                                               ; preds = %34
  %61 = load i32*, i32** %11, align 8
  store i32* %61, i32** %4, align 8
  br label %62

62:                                               ; preds = %60, %46, %32, %17
  %63 = load i32*, i32** %4, align 8
  ret i32* %63
}

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32* @PyArray_GETITEM(i32*, i8*) #1

declare dso_local i64 @PyArray_DIM(i32*, i32) #1

declare dso_local i64 @PyArray_STRIDE(i32*, i32) #1

declare dso_local i32* @PyList_New(i64) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
