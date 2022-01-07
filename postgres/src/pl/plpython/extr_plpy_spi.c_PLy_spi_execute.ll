; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_spi.c_PLy_spi_execute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_spi.c_PLy_spi_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"s|l\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"O|Ol\00", align 1
@PLy_exc_error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"plpy.execute expected a query or a plan\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PLy_spi_execute(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 (i32*, i8*, i8**, i64*, ...) @PyArg_ParseTuple(i32* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, i64* %9)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32* @PLy_spi_execute_query(i8* %14, i64 %15)
  store i32* %16, i32** %3, align 8
  br label %36

17:                                               ; preds = %2
  %18 = call i32 (...) @PyErr_Clear()
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32** %7 to i8**
  %21 = bitcast i32** %8 to i64*
  %22 = call i64 (i32*, i8*, i8**, i64*, ...) @PyArg_ParseTuple(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %20, i64* %21, i64* %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @is_PLyPlanObject(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32* @PLy_spi_execute_plan(i32* %29, i32* %30, i64 %31)
  store i32* %32, i32** %3, align 8
  br label %36

33:                                               ; preds = %24, %17
  %34 = load i32, i32* @PLy_exc_error, align 4
  %35 = call i32 @PLy_exception_set(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %36

36:                                               ; preds = %33, %28, %13
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i64 @PyArg_ParseTuple(i32*, i8*, i8**, i64*, ...) #1

declare dso_local i32* @PLy_spi_execute_query(i8*, i64) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i64 @is_PLyPlanObject(i32*) #1

declare dso_local i32* @PLy_spi_execute_plan(i32*, i32*, i64) #1

declare dso_local i32 @PLy_exception_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
