; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_WindowSetattr.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_WindowSetattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }

@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"readonly attribute: buffer\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"(ll)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"cursor position outside buffer\00", align 1
@VALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@NUMBER_INT = common dso_local global i32 0, align 4
@NUMBER_UNSIGNED = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_13__* null, align 8
@PyExc_AttributeError = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@need_mouse_correct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*)* @WindowSetattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WindowSetattr(%struct.TYPE_14__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = call i64 @CheckWindow(%struct.TYPE_14__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %103

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @PyExc_TypeError, align 4
  %22 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @PyErr_SET_STRING(i32 %21, i32 %22)
  store i32 -1, i32* %4, align 4
  br label %103

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @PyArg_Parse(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64* %8, i64* %9)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %103

33:                                               ; preds = %28
  %34 = load i64, i64* %8, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %37, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36, %33
  %48 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 @PyErr_SET_VIM(i32 %48)
  store i32 -1, i32* %4, align 4
  br label %103

50:                                               ; preds = %36
  %51 = call i64 (...) @VimCheckInterrupt()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %103

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i64 %55, i64* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store i64 %61, i64* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = call i32 @check_cursor_col_win(%struct.TYPE_13__* %69)
  %71 = load i32, i32* @VALID, align 4
  %72 = call i32 @update_screen(i32 %71)
  store i32 0, i32* %4, align 4
  br label %103

73:                                               ; preds = %24
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @NUMBER_INT, align 4
  %80 = load i32, i32* @NUMBER_UNSIGNED, align 4
  %81 = or i32 %79, %80
  %82 = call i64 @NumberToLong(i32* %78, i64* %10, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %103

85:                                               ; preds = %77
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %11, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** @curwin, align 8
  %90 = call i32 (...) @VimTryStart()
  %91 = load i64, i64* %10, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @win_setheight(i32 %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** @curwin, align 8
  %95 = call i64 (...) @VimTryEnd()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  store i32 -1, i32* %4, align 4
  br label %103

98:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %103

99:                                               ; preds = %73
  %100 = load i32, i32* @PyExc_AttributeError, align 4
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @PyErr_SetString(i32 %100, i8* %101)
  store i32 -1, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %98, %97, %84, %54, %53, %47, %32, %20, %15
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @CheckWindow(%struct.TYPE_14__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @PyArg_Parse(i32*, i8*, i64*, i64*) #1

declare dso_local i32 @PyErr_SET_VIM(i32) #1

declare dso_local i64 @VimCheckInterrupt(...) #1

declare dso_local i32 @check_cursor_col_win(%struct.TYPE_13__*) #1

declare dso_local i32 @update_screen(i32) #1

declare dso_local i64 @NumberToLong(i32*, i64*, i32) #1

declare dso_local i32 @VimTryStart(...) #1

declare dso_local i32 @win_setheight(i32) #1

declare dso_local i64 @VimTryEnd(...) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
