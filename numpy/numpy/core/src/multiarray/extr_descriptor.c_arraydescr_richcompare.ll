; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_arraydescr_richcompare.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_arraydescr_richcompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_NotImplemented = common dso_local global i32* null, align 8
@NPY_FAIL = common dso_local global i64 0, align 8
@Py_True = common dso_local global i32* null, align 8
@Py_False = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @arraydescr_richcompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arraydescr_richcompare(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** @Py_NotImplemented, align 8
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @PyArray_DescrCheck(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @PyArray_DescrConverter(i32* %15, i32** %8)
  %17 = load i64, i64* @NPY_FAIL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32* null, i32** %4, align 8
  br label %105

20:                                               ; preds = %14
  br label %25

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @Py_INCREF(i32* %23)
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %97 [
    i32 129, label %27
    i32 130, label %42
    i32 133, label %52
    i32 128, label %62
    i32 131, label %72
    i32 132, label %87
  ]

27:                                               ; preds = %25
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @PyArray_EquivTypes(i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @PyArray_CanCastTo(i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32*, i32** @Py_True, align 8
  store i32* %38, i32** %9, align 8
  br label %41

39:                                               ; preds = %32, %27
  %40 = load i32*, i32** @Py_False, align 8
  store i32* %40, i32** %9, align 8
  br label %41

41:                                               ; preds = %39, %37
  br label %99

42:                                               ; preds = %25
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @PyArray_CanCastTo(i32* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32*, i32** @Py_True, align 8
  store i32* %48, i32** %9, align 8
  br label %51

49:                                               ; preds = %42
  %50 = load i32*, i32** @Py_False, align 8
  store i32* %50, i32** %9, align 8
  br label %51

51:                                               ; preds = %49, %47
  br label %99

52:                                               ; preds = %25
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @PyArray_EquivTypes(i32* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32*, i32** @Py_True, align 8
  store i32* %58, i32** %9, align 8
  br label %61

59:                                               ; preds = %52
  %60 = load i32*, i32** @Py_False, align 8
  store i32* %60, i32** %9, align 8
  br label %61

61:                                               ; preds = %59, %57
  br label %99

62:                                               ; preds = %25
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @PyArray_EquivTypes(i32* %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32*, i32** @Py_False, align 8
  store i32* %68, i32** %9, align 8
  br label %71

69:                                               ; preds = %62
  %70 = load i32*, i32** @Py_True, align 8
  store i32* %70, i32** %9, align 8
  br label %71

71:                                               ; preds = %69, %67
  br label %99

72:                                               ; preds = %25
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @PyArray_EquivTypes(i32* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @PyArray_CanCastTo(i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32*, i32** @Py_True, align 8
  store i32* %83, i32** %9, align 8
  br label %86

84:                                               ; preds = %77, %72
  %85 = load i32*, i32** @Py_False, align 8
  store i32* %85, i32** %9, align 8
  br label %86

86:                                               ; preds = %84, %82
  br label %99

87:                                               ; preds = %25
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @PyArray_CanCastTo(i32* %88, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32*, i32** @Py_True, align 8
  store i32* %93, i32** %9, align 8
  br label %96

94:                                               ; preds = %87
  %95 = load i32*, i32** @Py_False, align 8
  store i32* %95, i32** %9, align 8
  br label %96

96:                                               ; preds = %94, %92
  br label %99

97:                                               ; preds = %25
  %98 = load i32*, i32** @Py_NotImplemented, align 8
  store i32* %98, i32** %9, align 8
  br label %99

99:                                               ; preds = %97, %96, %86, %71, %61, %51, %41
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @Py_XDECREF(i32* %100)
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @Py_INCREF(i32* %102)
  %104 = load i32*, i32** %9, align 8
  store i32* %104, i32** %4, align 8
  br label %105

105:                                              ; preds = %99, %19
  %106 = load i32*, i32** %4, align 8
  ret i32* %106
}

declare dso_local i32 @PyArray_DescrCheck(i32*) #1

declare dso_local i64 @PyArray_DescrConverter(i32*, i32**) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @PyArray_EquivTypes(i32*, i32*) #1

declare dso_local i32 @PyArray_CanCastTo(i32*, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
