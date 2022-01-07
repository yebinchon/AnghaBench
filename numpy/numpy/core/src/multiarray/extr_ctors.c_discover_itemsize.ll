; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c_discover_itemsize.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c_discover_itemsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @discover_itemsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discover_itemsize(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @PyArray_Check(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @PyArray_ITEMSIZE(i32* %21)
  %23 = call i32 @PyArray_MAX(i32 %20, i32 %22)
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %5, align 4
  br label %120

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @PyString_Check(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @PyBuffer_Check(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @PyUnicode_Check(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %89

40:                                               ; preds = %36, %32, %28, %25
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %74

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @PyString_Check(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @PyUnicode_Check(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  store i32* null, i32** %13, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @NPY_STRING, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32*, i32** %6, align 8
  %60 = call i32* @PyObject_Str(i32* %59)
  store i32* %60, i32** %13, align 8
  br label %64

61:                                               ; preds = %54
  %62 = load i32*, i32** %6, align 8
  %63 = call i32* @PyObject_Unicode(i32* %62)
  store i32* %63, i32** %13, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @PyObject_Length(i32* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @Py_DECREF(i32* %70)
  br label %73

72:                                               ; preds = %64
  store i32 -1, i32* %11, align 4
  br label %73

73:                                               ; preds = %72, %67
  br label %77

74:                                               ; preds = %50, %46, %43, %40
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @PyObject_Length(i32* %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %74, %73
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (...) @PyErr_Clear()
  br label %88

82:                                               ; preds = %77
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @PyArray_MAX(i32 %84, i32 %85)
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %80
  store i32 0, i32* %5, align 4
  br label %120

89:                                               ; preds = %36
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @PySequence_Length(i32* %90)
  store i32 %91, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %116, %89
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %92
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32* @PySequence_GetItem(i32* %97, i32 %98)
  store i32* %99, i32** %14, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %120

103:                                              ; preds = %96
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @discover_itemsize(i32* %104, i32 %106, i32* %107, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @Py_DECREF(i32* %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  store i32 -1, i32* %5, align 4
  br label %120

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %92

119:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %114, %102, %88, %18
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i64 @PyArray_Check(i32*) #1

declare dso_local i32 @PyArray_MAX(i32, i32) #1

declare dso_local i32 @PyArray_ITEMSIZE(i32*) #1

declare dso_local i64 @PyString_Check(i32*) #1

declare dso_local i64 @PyBuffer_Check(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyObject_Str(i32*) #1

declare dso_local i32* @PyObject_Unicode(i32*) #1

declare dso_local i32 @PyObject_Length(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @PySequence_Length(i32*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
