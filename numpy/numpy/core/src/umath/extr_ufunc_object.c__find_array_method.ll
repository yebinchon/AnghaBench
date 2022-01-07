; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__find_array_method.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__find_array_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXARGS = common dso_local global i32 0, align 4
@NPY_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @_find_array_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_find_array_method(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32, i32* @NPY_MAXARGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @NPY_MAXARGS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32*, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %66, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @PyTuple_GET_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @PyTuple_GET_ITEM(i32* %27, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @PyArray_CheckExact(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @PyArray_IsAnyScalar(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %26
  br label %66

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32* @PyObject_GetAttr(i32* %39, i32* %40)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load i32*, i32** %11, align 8
  %46 = call i64 @PyCallable_Check(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %17, i64 %51
  store i32* %49, i32** %52, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %20, i64 %55
  store i32* %53, i32** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %62

59:                                               ; preds = %44
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @Py_DECREF(i32* %60)
  store i32* null, i32** %11, align 8
  br label %62

62:                                               ; preds = %59, %48
  br label %65

63:                                               ; preds = %38
  %64 = call i32 (...) @PyErr_Clear()
  br label %65

65:                                               ; preds = %63, %62
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %21

69:                                               ; preds = %21
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %116

72:                                               ; preds = %69
  %73 = getelementptr inbounds i32*, i32** %20, i64 0
  %74 = load i32*, i32** %73, align 16
  store i32* %74, i32** %11, align 8
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %115

77:                                               ; preds = %72
  %78 = getelementptr inbounds i32*, i32** %17, i64 0
  %79 = load i32*, i32** %78, align 16
  %80 = load i32, i32* @NPY_PRIORITY, align 4
  %81 = call double @PyArray_GetPriority(i32* %79, i32 %80)
  store double %81, double* %12, align 8
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %111, %77
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %17, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @NPY_PRIORITY, align 4
  %92 = call double @PyArray_GetPriority(i32* %90, i32 %91)
  store double %92, double* %13, align 8
  %93 = load double, double* %13, align 8
  %94 = load double, double* %12, align 8
  %95 = fcmp ogt double %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load double, double* %13, align 8
  store double %97, double* %12, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @Py_DECREF(i32* %98)
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %20, i64 %101
  %103 = load i32*, i32** %102, align 8
  store i32* %103, i32** %11, align 8
  br label %110

104:                                              ; preds = %86
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %20, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @Py_DECREF(i32* %108)
  br label %110

110:                                              ; preds = %104, %96
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %82

114:                                              ; preds = %82
  br label %115

115:                                              ; preds = %114, %72
  br label %116

116:                                              ; preds = %115, %69
  %117 = load i32*, i32** %11, align 8
  %118 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %118)
  ret i32* %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #2

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #2

declare dso_local i64 @PyArray_CheckExact(i32*) #2

declare dso_local i64 @PyArray_IsAnyScalar(i32*) #2

declare dso_local i32* @PyObject_GetAttr(i32*, i32*) #2

declare dso_local i64 @PyCallable_Check(i32*) #2

declare dso_local i32 @Py_DECREF(i32*) #2

declare dso_local i32 @PyErr_Clear(...) #2

declare dso_local double @PyArray_GetPriority(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
