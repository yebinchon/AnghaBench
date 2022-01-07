; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyDecimal_FromNumeric.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyDecimal_FromNumeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLyDecimal_FromNumeric.decimal_constructor = internal global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"cdecimal\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"decimal\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"could not import a module for Decimal constructor\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Decimal\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"no Decimal attribute in module\00", align 1
@numeric_out = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"conversion from numeric to Decimal failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @PLyDecimal_FromNumeric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLyDecimal_FromNumeric(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** @PLyDecimal_FromNumeric.decimal_constructor, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = call i32* @PyImport_ImportModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = call i32 (...) @PyErr_Clear()
  %16 = call i32* @PyImport_ImportModule(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @PLy_elog(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @PyObject_GetAttrString(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32* %25, i32** @PLyDecimal_FromNumeric.decimal_constructor, align 8
  %26 = load i32*, i32** @PLyDecimal_FromNumeric.decimal_constructor, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 @PLy_elog(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* @numeric_out, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @DirectFunctionCall1(i32 %33, i32 %34)
  %36 = call i8* @DatumGetCString(i32 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i32*, i32** @PLyDecimal_FromNumeric.decimal_constructor, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32* @PyObject_CallFunction(i32* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ERROR, align 4
  %44 = call i32 @PLy_elog(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %32
  %46 = load i32*, i32** %6, align 8
  ret i32* %46
}

declare dso_local i32* @PyImport_ImportModule(i8*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @PLy_elog(i32, i8*) #1

declare dso_local i32* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32* @PyObject_CallFunction(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
