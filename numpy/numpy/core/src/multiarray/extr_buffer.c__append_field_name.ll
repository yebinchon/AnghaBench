; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__append_field_name.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__append_field_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid field name\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"':' is not an allowed character in buffer field names\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @_append_field_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_append_field_name(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call i32 @Py_INCREF(i32* %10)
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @PyBytes_AsStringAndSize(i32* %15, i8** %6, i64* %7)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %2
  %19 = call i32 (...) @PyErr_Clear()
  %20 = load i32, i32* @PyExc_ValueError, align 4
  %21 = call i32 @PyErr_SetString(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %57

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @_append_char(i32* %23, i8 signext 58)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %57

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 58
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @PyExc_ValueError, align 4
  %38 = call i32 @PyErr_SetString(i32 %37, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %57

39:                                               ; preds = %31
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @_append_char(i32* %40, i8 signext %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %57

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %7, align 8
  br label %28

51:                                               ; preds = %28
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @_append_char(i32* %52, i8 signext 58)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %57

56:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %55, %45, %36, %26, %18
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @Py_XDECREF(i32* %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyBytes_AsStringAndSize(i32*, i8**, i64*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @_append_char(i32*, i8 signext) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
