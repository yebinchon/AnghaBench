; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_StringToChars.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_StringToChars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENC_OPT = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"expected str() or unicode() instance, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32**)* @StringToChars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @StringToChars(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @PyBytes_Check(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32** %6 to i8**
  %14 = call i32 @PyBytes_AsStringAndSize(i32* %12, i8** %13, i32* null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %11
  store i32* null, i32** %3, align 8
  br label %55

20:                                               ; preds = %16
  %21 = load i32**, i32*** %5, align 8
  store i32* null, i32** %21, align 8
  br label %53

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @PyUnicode_Check(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @ENC_OPT, align 4
  %29 = call i32* @PyUnicode_AsEncodedString(i32* %27, i32 %28, i32* null)
  store i32* %29, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32* null, i32** %3, align 8
  br label %55

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = bitcast i32** %6 to i8**
  %35 = call i32 @PyBytes_AsStringAndSize(i32* %33, i8** %34, i32* null)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %32
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @Py_DECREF(i32* %41)
  store i32* null, i32** %3, align 8
  br label %55

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = load i32**, i32*** %5, align 8
  store i32* %44, i32** %45, align 8
  br label %52

46:                                               ; preds = %22
  %47 = load i32, i32* @PyExc_TypeError, align 4
  %48 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @Py_TYPE_NAME(i32* %49)
  %51 = call i32 @PyErr_FORMAT(i32 %47, i32 %48, i32 %50)
  store i32* null, i32** %3, align 8
  br label %55

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32*, i32** %6, align 8
  store i32* %54, i32** %3, align 8
  br label %55

55:                                               ; preds = %53, %46, %40, %31, %19
  %56 = load i32*, i32** %3, align 8
  ret i32* %56
}

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i32 @PyBytes_AsStringAndSize(i32*, i8**, i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsEncodedString(i32*, i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @Py_TYPE_NAME(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
