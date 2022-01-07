; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_ListSlice.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_ListSlice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"slice step cannot be zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32)* @ListSlice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ListSlice(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* @PyExc_ValueError, align 4
  %17 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @PyErr_SET_STRING(i32 %16, i32 %17)
  store i32* null, i32** %5, align 8
  br label %53

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = call i32* @PyList_New(i32 %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32* null, i32** %5, align 8
  br label %53

25:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %32, %35
  %37 = call i32* @ListIndex(i32* %31, i32 %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @Py_DECREF(i32* %41)
  store i32* null, i32** %5, align 8
  br label %53

43:                                               ; preds = %30
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @PyList_SET_ITEM(i32* %44, i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load i32*, i32** %11, align 8
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %51, %40, %24, %15
  %54 = load i32*, i32** %5, align 8
  ret i32* %54
}

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32* @ListIndex(i32*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
