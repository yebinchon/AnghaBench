; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_set_flaginfo.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_set_flaginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"OWNDATA\00", align 1
@NPY_ARRAY_OWNDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"FORTRAN\00", align 1
@NPY_ARRAY_F_CONTIGUOUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"CONTIGUOUS\00", align 1
@NPY_ARRAY_C_CONTIGUOUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@NPY_ARRAY_ALIGNED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"UPDATEIFCOPY\00", align 1
@NPY_ARRAY_UPDATEIFCOPY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"WRITEBACKIFCOPY\00", align 1
@NPY_ARRAY_WRITEBACKIFCOPY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"WRITEABLE\00", align 1
@NPY_ARRAY_WRITEABLE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"C_CONTIGUOUS\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"F_CONTIGUOUS\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"_flagdict\00", align 1
@A = common dso_local global i32 0, align 4
@ALIGNED = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
@CONTIGUOUS = common dso_local global i32 0, align 4
@C_CONTIGUOUS = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@FORTRAN = common dso_local global i32 0, align 4
@F_CONTIGUOUS = common dso_local global i32 0, align 4
@O = common dso_local global i32 0, align 4
@OWNDATA = common dso_local global i32 0, align 4
@U = common dso_local global i32 0, align 4
@UPDATEIFCOPY = common dso_local global i32 0, align 4
@W = common dso_local global i32 0, align 4
@WRITEABLE = common dso_local global i32 0, align 4
@WRITEBACKIFCOPY = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @set_flaginfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_flaginfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32* (...) @PyDict_New()
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @NPY_ARRAY_OWNDATA, align 4
  %8 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %7)
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %3, align 8
  %11 = call i32 @PyDict_SetItemString(i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @Py_DECREF(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @NPY_ARRAY_OWNDATA, align 4
  %16 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %3, align 8
  %19 = call i32 @PyDict_SetItemString(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @Py_DECREF(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %3, align 8
  %27 = call i32 @PyDict_SetItemString(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @Py_DECREF(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %3, align 8
  %35 = call i32 @PyDict_SetItemString(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @Py_DECREF(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @NPY_ARRAY_C_CONTIGUOUS, align 4
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %3, align 8
  %43 = call i32 @PyDict_SetItemString(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @Py_DECREF(i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @NPY_ARRAY_C_CONTIGUOUS, align 4
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %3, align 8
  %51 = call i32 @PyDict_SetItemString(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @Py_DECREF(i32* %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @NPY_ARRAY_ALIGNED, align 4
  %56 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %3, align 8
  %59 = call i32 @PyDict_SetItemString(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @Py_DECREF(i32* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @NPY_ARRAY_ALIGNED, align 4
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %3, align 8
  %67 = call i32 @PyDict_SetItemString(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @Py_DECREF(i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @NPY_ARRAY_UPDATEIFCOPY, align 4
  %72 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %3, align 8
  %75 = call i32 @PyDict_SetItemString(i32* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @Py_DECREF(i32* %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @NPY_ARRAY_UPDATEIFCOPY, align 4
  %80 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %3, align 8
  %83 = call i32 @PyDict_SetItemString(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @Py_DECREF(i32* %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @NPY_ARRAY_WRITEBACKIFCOPY, align 4
  %88 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %87)
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %3, align 8
  %91 = call i32 @PyDict_SetItemString(i32* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @Py_DECREF(i32* %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* @NPY_ARRAY_WRITEBACKIFCOPY, align 4
  %96 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %95)
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %3, align 8
  %99 = call i32 @PyDict_SetItemString(i32* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32* %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @Py_DECREF(i32* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %103)
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** %3, align 8
  %107 = call i32 @PyDict_SetItemString(i32* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @Py_DECREF(i32* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %112 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %3, align 8
  %115 = call i32 @PyDict_SetItemString(i32* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32* %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @Py_DECREF(i32* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* @NPY_ARRAY_C_CONTIGUOUS, align 4
  %120 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %119)
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i32*
  store i32* %122, i32** %3, align 8
  %123 = call i32 @PyDict_SetItemString(i32* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32* %122)
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @Py_DECREF(i32* %124)
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  %128 = call i32 (i32, ...) bitcast (i32 (...)* @PyInt_FromLong to i32 (i32, ...)*)(i32 %127)
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i32*
  store i32* %130, i32** %3, align 8
  %131 = call i32 @PyDict_SetItemString(i32* %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32* %130)
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @Py_DECREF(i32* %132)
  %134 = load i32*, i32** %2, align 8
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @PyDict_SetItemString(i32* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32* %135)
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @Py_DECREF(i32* %137)
  ret void
}

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @PyDict_SetItemString(i32*, i8*, i32*) #1

declare dso_local i32 @PyInt_FromLong(...) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
