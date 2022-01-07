; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_elog.c_PLy_get_spi_error_data.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_elog.c_PLy_get_spi_error_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"spidata\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"izzzizzzzz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8**, i8**, i8**, i32*, i8**, i8**, i8**, i8**, i8**)* @PLy_get_spi_error_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PLy_get_spi_error_data(i32* %0, i32* %1, i8** %2, i8** %3, i8** %4, i32* %5, i8** %6, i8** %7, i8** %8, i8** %9, i8** %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8** %2, i8*** %14, align 8
  store i8** %3, i8*** %15, align 8
  store i8** %4, i8*** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8** %6, i8*** %18, align 8
  store i8** %7, i8*** %19, align 8
  store i8** %8, i8*** %20, align 8
  store i8** %9, i8*** %21, align 8
  store i8** %10, i8*** %22, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32* @PyObject_GetAttrString(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %23, align 8
  %26 = load i32*, i32** %23, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %11
  %29 = load i32*, i32** %23, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i8**, i8*** %14, align 8
  %32 = load i8**, i8*** %15, align 8
  %33 = load i8**, i8*** %16, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = load i8**, i8*** %18, align 8
  %36 = load i8**, i8*** %19, align 8
  %37 = load i8**, i8*** %20, align 8
  %38 = load i8**, i8*** %21, align 8
  %39 = load i8**, i8*** %22, align 8
  %40 = call i32 @PyArg_ParseTuple(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %30, i8** %31, i8** %32, i8** %33, i32* %34, i8** %35, i8** %36, i8** %37, i8** %38, i8** %39)
  br label %45

41:                                               ; preds = %11
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @PLy_get_sqlerrcode(i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %28
  %46 = load i32*, i32** %23, align 8
  %47 = call i32 @Py_XDECREF(i32* %46)
  ret void
}

declare dso_local i32* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32*, i8**, i8**, i8**, i32*, i8**, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @PLy_get_sqlerrcode(i32*, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
