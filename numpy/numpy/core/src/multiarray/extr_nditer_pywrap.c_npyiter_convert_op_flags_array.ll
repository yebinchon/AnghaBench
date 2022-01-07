; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_convert_op_flags_array.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_convert_op_flags_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"op_flags must be a tuple or array of per-op flag-tuples\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @npyiter_convert_op_flags_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_convert_op_flags_array(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @PyTuple_Check(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @PyList_Check(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @PyExc_ValueError, align 4
  %19 = call i32 @PyErr_SetString(i32 %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %92

20:                                               ; preds = %13, %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @PySequence_Size(i32* %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %69

26:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %65, %26
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32* @PySequence_GetItem(i32* %32, i64 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %92

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @PyBytes_Check(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @PyUnicode_Check(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %41
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @Py_DECREF(i32* %50)
  br label %69

52:                                               ; preds = %45, %38
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @NpyIter_OpFlagsConverter(i32* %53, i32* %56)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @Py_DECREF(i32* %60)
  store i32 0, i32* %4, align 4
  br label %92

62:                                               ; preds = %52
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @Py_DECREF(i32* %63)
  br label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %27

68:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %92

69:                                               ; preds = %49, %25
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = call i32 @NpyIter_OpFlagsConverter(i32* %70, i32* %72)
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %92

76:                                               ; preds = %69
  store i64 1, i64* %8, align 8
  br label %77

77:                                               ; preds = %88, %76
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %81
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %77

91:                                               ; preds = %77
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %75, %68, %59, %37, %17
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @PyTuple_Check(i32*) #1

declare dso_local i32 @PyList_Check(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PySequence_Size(i32*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i64) #1

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @NpyIter_OpFlagsConverter(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
