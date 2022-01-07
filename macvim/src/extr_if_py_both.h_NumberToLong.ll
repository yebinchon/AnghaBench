; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_NumberToLong.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_NumberToLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"expected int(), long() or something supporting coercing to long(), but got %s\00", align 1
@NUMBER_INT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@PyExc_OverflowError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"value is too large to fit into C int type\00", align 1
@INT_MIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"value is too small to fit into C int type\00", align 1
@NUMBER_NATURAL = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"number must be greater than zero\00", align 1
@NUMBER_UNSIGNED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"number must be greater or equal to zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32)* @NumberToLong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NumberToLong(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @PyInt_Check(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @PyInt_AsLong(i32* %13)
  %15 = load i64*, i64** %6, align 8
  store i64 %14, i64* %15, align 8
  %16 = call i64 (...) @PyErr_Occurred()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %114

19:                                               ; preds = %12
  br label %59

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @PyLong_Check(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @PyLong_AsLong(i32* %25)
  %27 = load i64*, i64** %6, align 8
  store i64 %26, i64* %27, align 8
  %28 = call i64 (...) @PyErr_Occurred()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %114

31:                                               ; preds = %24
  br label %58

32:                                               ; preds = %20
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @PyNumber_Check(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* @PyNumber_Long(i32* %37)
  store i32* %38, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %114

41:                                               ; preds = %36
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @PyLong_AsLong(i32* %42)
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @Py_DECREF(i32* %45)
  %47 = call i64 (...) @PyErr_Occurred()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %114

50:                                               ; preds = %41
  br label %57

51:                                               ; preds = %32
  %52 = load i32, i32* @PyExc_TypeError, align 4
  %53 = call i32 @N_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @Py_TYPE_NAME(i32* %54)
  %56 = call i32 @PyErr_FORMAT(i32 %52, i32 %53, i32 %55)
  store i32 -1, i32* %4, align 4
  br label %114

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58, %19
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @NUMBER_INT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @INT_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @PyExc_OverflowError, align 4
  %71 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @PyErr_SET_STRING(i32 %70, i32 %71)
  store i32 -1, i32* %4, align 4
  br label %114

73:                                               ; preds = %64
  %74 = load i64*, i64** %6, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @INT_MIN, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @PyExc_OverflowError, align 4
  %80 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 @PyErr_SET_STRING(i32 %79, i32 %80)
  store i32 -1, i32* %4, align 4
  br label %114

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @NUMBER_NATURAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load i64*, i64** %6, align 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* @PyExc_ValueError, align 4
  %95 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %96 = call i32 @PyErr_SET_STRING(i32 %94, i32 %95)
  store i32 -1, i32* %4, align 4
  br label %114

97:                                               ; preds = %89
  br label %113

98:                                               ; preds = %84
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @NUMBER_UNSIGNED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i64*, i64** %6, align 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* @PyExc_ValueError, align 4
  %109 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 @PyErr_SET_STRING(i32 %108, i32 %109)
  store i32 -1, i32* %4, align 4
  br label %114

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %98
  br label %113

113:                                              ; preds = %112, %97
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %107, %93, %78, %69, %51, %49, %40, %30, %18
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @PyInt_Check(i32*) #1

declare dso_local i64 @PyInt_AsLong(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i64 @PyLong_AsLong(i32*) #1

declare dso_local i64 @PyNumber_Check(i32*) #1

declare dso_local i32* @PyNumber_Long(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @Py_TYPE_NAME(i32*) #1

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
