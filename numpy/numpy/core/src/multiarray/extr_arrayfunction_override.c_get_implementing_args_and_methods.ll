; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayfunction_override.c_get_implementing_args_and_methods.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayfunction_override.c_get_implementing_args_and_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXARGS = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"maximum number (%d) of distinct argument types implementing __array_function__ exceeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32**)* @get_implementing_args_and_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_implementing_args_and_methods(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32** @PySequence_Fast_ITEMS(i32* %18)
  store i32** %19, i32*** %11, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @PySequence_Fast_GET_SIZE(i32* %20)
  store i64 %21, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %109, %3
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %112

26:                                               ; preds = %22
  store i32 1, i32* %13, align 4
  %27 = load i32**, i32*** %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %14, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %47, %26
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32*, i32** %14, align 8
  %37 = call i64 @Py_TYPE(i32* %36)
  %38 = load i32**, i32*** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @Py_TYPE(i32* %42)
  %44 = icmp eq i64 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  br label %50

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %31

50:                                               ; preds = %45, %31
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %108

53:                                               ; preds = %50
  %54 = load i32*, i32** %14, align 8
  %55 = call i32* @get_array_function(i32* %54)
  store i32* %55, i32** %15, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %107

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NPY_MAXARGS, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* @PyExc_TypeError, align 4
  %64 = load i32, i32* @NPY_MAXARGS, align 4
  %65 = call i32 @PyErr_Format(i32 %63, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @Py_DECREF(i32* %66)
  br label %114

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %89, %68
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load i32**, i32*** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @Py_TYPE(i32* %79)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %17, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = call i64 @PyObject_IsInstance(i32* %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %16, align 4
  br label %92

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %70

92:                                               ; preds = %86, %70
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @Py_INCREF(i32* %93)
  %95 = load i32**, i32*** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @pyobject_array_insert(i32** %95, i32 %96, i32 %97, i32* %98)
  %100 = load i32**, i32*** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @pyobject_array_insert(i32** %100, i32 %101, i32 %102, i32* %103)
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %92, %53
  br label %108

108:                                              ; preds = %107, %50
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  br label %22

112:                                              ; preds = %22
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %136

114:                                              ; preds = %62
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %132, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %115
  %120 = load i32**, i32*** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @Py_DECREF(i32* %124)
  %126 = load i32**, i32*** %7, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @Py_DECREF(i32* %130)
  br label %132

132:                                              ; preds = %119
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %115

135:                                              ; preds = %115
  store i32 -1, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %112
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32** @PySequence_Fast_ITEMS(i32*) #1

declare dso_local i64 @PySequence_Fast_GET_SIZE(i32*) #1

declare dso_local i64 @Py_TYPE(i32*) #1

declare dso_local i32* @get_array_function(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyObject_IsInstance(i32*, i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @pyobject_array_insert(i32**, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
