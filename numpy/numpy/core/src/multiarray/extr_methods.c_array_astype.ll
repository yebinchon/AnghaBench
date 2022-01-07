; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_astype.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_astype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_astype.kwlist = internal global [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"casting\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"subok\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@NPY_UNSAFE_CASTING = common dso_local global i32 0, align 4
@NPY_KEEPORDER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"O&|O&O&ii:astype\00", align 1
@PyArray_DescrConverter = common dso_local global i32 0, align 4
@PyArray_OrderConverter = common dso_local global i32 0, align 4
@PyArray_CastingConverter = common dso_local global i32 0, align 4
@NPY_ANYORDER = common dso_local global i64 0, align 8
@NPY_CORDER = common dso_local global i64 0, align 8
@NPY_FORTRANORDER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Cannot cast array from \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c" according to the rule %s\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_astype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_astype(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load i32, i32* @NPY_UNSAFE_CASTING, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* @NPY_KEEPORDER, align 8
  store i64 %16, i64* %10, align 8
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @PyArray_DescrConverter, align 4
  %20 = load i32, i32* @PyArray_OrderConverter, align 4
  %21 = load i32, i32* @PyArray_CastingConverter, align 4
  %22 = call i32 @PyArg_ParseTupleAndKeywords(i32* %17, i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @array_astype.kwlist, i64 0, i64 0), i32 %19, i32** %8, i32 %20, i64* %10, i32 %21, i32* %9, i32* %12, i32* %11)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @Py_XDECREF(i32* %25)
  store i32* null, i32** %4, align 8
  br label %139

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %81, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @NPY_KEEPORDER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @NPY_ANYORDER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @PyArray_IS_C_CONTIGUOUS(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @PyArray_IS_F_CONTIGUOUS(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %42, %34
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @NPY_CORDER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @PyArray_IS_C_CONTIGUOUS(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50, %46
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @NPY_FORTRANORDER, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @PyArray_IS_F_CONTIGUOUS(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %58, %50, %42, %38, %30
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @PyArray_CheckExact(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %65, %62
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @PyArray_DESCR(i32* %71)
  %73 = call i64 @PyArray_EquivTypes(i32* %70, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @Py_DECREF(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @Py_INCREF(i32* %78)
  %80 = load i32*, i32** %5, align 8
  store i32* %80, i32** %4, align 8
  br label %139

81:                                               ; preds = %69, %65, %58, %54, %27
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @PyArray_CanCastArrayTo(i32* %82, i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %81
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i64 @PyArray_DESCR(i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32* @PyArray_AdaptFlexibleDType(i32* %88, i64 %90, i32* %91)
  store i32* %92, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32* null, i32** %4, align 8
  br label %139

96:                                               ; preds = %87
  %97 = load i32*, i32** %5, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @PyArray_NewLikeArray(i32* %97, i64 %98, i32* %99, i32 %100)
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32* null, i32** %4, align 8
  br label %139

106:                                              ; preds = %96
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = call i64 @PyArray_CopyInto(i32* %107, i32* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @Py_DECREF(i32* %112)
  store i32* null, i32** %4, align 8
  br label %139

114:                                              ; preds = %106
  %115 = load i32*, i32** %13, align 8
  store i32* %115, i32** %4, align 8
  br label %139

116:                                              ; preds = %81
  %117 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32* %117, i32** %14, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i64 @PyArray_DESCR(i32* %118)
  %120 = inttoptr i64 %119 to i32*
  %121 = call i32* @PyObject_Repr(i32* %120)
  %122 = call i32 @PyUString_ConcatAndDel(i32** %14, i32* %121)
  %123 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %124 = call i32 @PyUString_ConcatAndDel(i32** %14, i32* %123)
  %125 = load i32*, i32** %8, align 8
  %126 = call i32* @PyObject_Repr(i32* %125)
  %127 = call i32 @PyUString_ConcatAndDel(i32** %14, i32* %126)
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @npy_casting_to_string(i32 %128)
  %130 = call i32* @PyUString_FromFormat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  %131 = call i32 @PyUString_ConcatAndDel(i32** %14, i32* %130)
  %132 = load i32, i32* @PyExc_TypeError, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @PyErr_SetObject(i32 %132, i32* %133)
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @Py_DECREF(i32* %135)
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @Py_DECREF(i32* %137)
  store i32* null, i32** %4, align 8
  br label %139

139:                                              ; preds = %116, %114, %111, %105, %95, %75, %24
  %140 = load i32*, i32** %4, align 8
  ret i32* %140
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32, i32**, i32, i64*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @PyArray_IS_C_CONTIGUOUS(i32*) #1

declare dso_local i64 @PyArray_IS_F_CONTIGUOUS(i32*) #1

declare dso_local i64 @PyArray_CheckExact(i32*) #1

declare dso_local i64 @PyArray_EquivTypes(i32*, i64) #1

declare dso_local i64 @PyArray_DESCR(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyArray_CanCastArrayTo(i32*, i32*, i32) #1

declare dso_local i32* @PyArray_AdaptFlexibleDType(i32*, i64, i32*) #1

declare dso_local i64 @PyArray_NewLikeArray(i32*, i64, i32*, i32) #1

declare dso_local i64 @PyArray_CopyInto(i32*, i32*) #1

declare dso_local i32* @PyUString_FromString(i8*) #1

declare dso_local i32 @PyUString_ConcatAndDel(i32**, i32*) #1

declare dso_local i32* @PyObject_Repr(i32*) #1

declare dso_local i32* @PyUString_FromFormat(i8*, i32) #1

declare dso_local i32 @npy_casting_to_string(i32) #1

declare dso_local i32 @PyErr_SetObject(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
