; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_BufferMark.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_BufferMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mark name must be a single character\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid mark name\00", align 1
@Py_None = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"(ll)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*)* @BufferMark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BufferMark(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = call i64 @CheckBuffer(%struct.TYPE_7__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %79

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @StringToChars(i32* %16, i32** %10)
  store i8* %17, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32* null, i32** %3, align 8
  br label %79

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @PyExc_ValueError, align 4
  %34 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @PyErr_SET_STRING(i32 %33, i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @Py_XDECREF(i32* %36)
  store i32* null, i32** %3, align 8
  br label %79

38:                                               ; preds = %26
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %8, align 1
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @Py_XDECREF(i32* %41)
  %43 = call i32 (...) @VimTryStart()
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @switch_buffer(i32** %9, i32 %46)
  %48 = load i8, i8* %8, align 1
  %49 = load i32, i32* @FALSE, align 4
  %50 = call %struct.TYPE_6__* @getmark(i8 signext %48, i32 %49)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %6, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @restore_buffer(i32* %51)
  %53 = call i64 (...) @VimTryEnd()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  store i32* null, i32** %3, align 8
  br label %79

56:                                               ; preds = %38
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = icmp eq %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @PyErr_SET_VIM(i32 %60)
  store i32* null, i32** %3, align 8
  br label %79

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32*, i32** @Py_None, align 8
  %69 = call i32 @Py_INCREF(i32* %68)
  %70 = load i32*, i32** @Py_None, align 8
  store i32* %70, i32** %3, align 8
  br label %79

71:                                               ; preds = %62
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %74, i64 %77)
  store i32* %78, i32** %3, align 8
  br label %79

79:                                               ; preds = %71, %67, %59, %55, %32, %19, %14
  %80 = load i32*, i32** %3, align 8
  ret i32* %80
}

declare dso_local i64 @CheckBuffer(%struct.TYPE_7__*) #1

declare dso_local i8* @StringToChars(i32*, i32**) #1

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @VimTryStart(...) #1

declare dso_local i32 @switch_buffer(i32**, i32) #1

declare dso_local %struct.TYPE_6__* @getmark(i8 signext, i32) #1

declare dso_local i32 @restore_buffer(i32*) #1

declare dso_local i64 @VimTryEnd(...) #1

declare dso_local i32 @PyErr_SET_VIM(i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @Py_BuildValue(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
