; ModuleID = '/home/carl/AnghaBench/numpy/numpy/f2py/src/test/extr_foomodule.c_initfoo.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/f2py/src/test/extr_foomodule.c_initfoo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@foo_module_methods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"This module 'foo' demonstrates the usage of fortranobject.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@f2py_mod_def = common dso_local global i32 0, align 4
@f2py_init_mod = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@f2py_foodata_def = common dso_local global i32 0, align 4
@f2py_init_foodata = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"foodata\00", align 1
@f2py_routines_def = common dso_local global %struct.TYPE_3__* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"can't initialize module foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initfoo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32 (...) @import_array()
  %7 = load i32, i32* @foo_module_methods, align 4
  %8 = call i32* @Py_InitModule(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @PyModule_GetDict(i32* %9)
  store i32* %10, i32** %3, align 8
  %11 = call i32* @PyString_FromString(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @PyDict_SetItemString(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %15 = load i32, i32* @f2py_mod_def, align 4
  %16 = load i32, i32* @f2py_init_mod, align 4
  %17 = call i32* @PyFortranObject_New(i32 %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @PyDict_SetItemString(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @Py_DECREF(i32* %21)
  %23 = load i32, i32* @f2py_foodata_def, align 4
  %24 = load i32, i32* @f2py_init_foodata, align 4
  %25 = call i32* @PyFortranObject_New(i32 %23, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @PyDict_SetItemString(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @Py_DECREF(i32* %29)
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %56, %0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @f2py_routines_def, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @f2py_routines_def, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = call i32* @PyFortranObject_NewAsAttr(%struct.TYPE_3__* %43)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @f2py_routines_def, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @PyDict_SetItemString(i32* %45, i8* %51, i32* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @Py_DECREF(i32* %54)
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @Py_DECREF(i32* %60)
  %62 = call i64 (...) @PyErr_Occurred()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  ret void
}

declare dso_local i32 @import_array(...) #1

declare dso_local i32* @Py_InitModule(i8*, i32) #1

declare dso_local i32* @PyModule_GetDict(i32*) #1

declare dso_local i32* @PyString_FromString(i8*) #1

declare dso_local i32 @PyDict_SetItemString(i32*, i8*, i32*) #1

declare dso_local i32* @PyFortranObject_New(i32, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @PyFortranObject_NewAsAttr(%struct.TYPE_3__*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @Py_FatalError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
