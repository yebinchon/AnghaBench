; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_cursorobject.c_PLy_cursor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_cursorobject.c_PLy_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"O|O\00", align 1
@PLy_exc_error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"plpy.cursor expected a query or a plan\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PLy_cursor(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 (i32*, i8*, i8**, ...) @PyArg_ParseTuple(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = call i32* @PLy_cursor_query(i8* %13)
  store i32* %14, i32** %3, align 8
  br label %28

15:                                               ; preds = %2
  %16 = call i32 (...) @PyErr_Clear()
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32** %7 to i8**
  %19 = call i64 (i32*, i8*, i8**, ...) @PyArg_ParseTuple(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %18, i32** %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @PLy_cursor_plan(i32* %22, i32* %23)
  store i32* %24, i32** %3, align 8
  br label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @PLy_exc_error, align 4
  %27 = call i32 @PLy_exception_set(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %28

28:                                               ; preds = %25, %21, %12
  %29 = load i32*, i32** %3, align 8
  ret i32* %29
}

declare dso_local i64 @PyArg_ParseTuple(i32*, i8*, i8**, ...) #1

declare dso_local i32* @PLy_cursor_query(i8*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32* @PLy_cursor_plan(i32*, i32*) #1

declare dso_local i32 @PLy_exception_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
