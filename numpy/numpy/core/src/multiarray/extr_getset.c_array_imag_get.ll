; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_imag_get.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_imag_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_ARRAY_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @array_imag_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_imag_get(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @PyArray_ISCOMPLEX(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @_get_part(i32* %9, i32 1)
  store i32* %10, i32** %4, align 8
  br label %40

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @PyArray_DESCR(i32* %12)
  %14 = call i32 @Py_INCREF(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @Py_TYPE(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @PyArray_DESCR(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @PyArray_NDIM(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @PyArray_DIMS(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @PyArray_ISFORTRAN(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @PyArray_NewFromDescr(i32 %16, i32 %18, i32 %20, i32 %22, i32* null, i32* null, i32 %24, i32* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %11
  store i32* null, i32** %2, align 8
  br label %42

31:                                               ; preds = %11
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @_zerofill(i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32* null, i32** %2, align 8
  br label %42

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %39 = call i32 @PyArray_CLEARFLAGS(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %8
  %41 = load i32*, i32** %4, align 8
  store i32* %41, i32** %2, align 8
  br label %42

42:                                               ; preds = %40, %35, %30
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

declare dso_local i64 @PyArray_ISCOMPLEX(i32*) #1

declare dso_local i32* @_get_part(i32*, i32) #1

declare dso_local i32 @Py_INCREF(i32) #1

declare dso_local i32 @PyArray_DESCR(i32*) #1

declare dso_local i64 @PyArray_NewFromDescr(i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @Py_TYPE(i32*) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyArray_ISFORTRAN(i32*) #1

declare dso_local i64 @_zerofill(i32*) #1

declare dso_local i32 @PyArray_CLEARFLAGS(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
