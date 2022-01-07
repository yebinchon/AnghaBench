; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_validate_object_field_overlap.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_validate_object_field_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"Oi|O\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Cannot create a NumPy dtype with overlapping object fields\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @validate_object_field_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_object_field_overlap(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @PyTuple_GET_SIZE(i32* %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %105, %1
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %108

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32* @PyTuple_GET_ITEM(i32* %29, i64 %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %109

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @PyDict_GetItem(i32* %36, i32* %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %109

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @PyArg_ParseTuple(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__** %12, i32* %14, i32** %8)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  br label %109

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = call i64 @PyDataType_REFCHK(%struct.TYPE_5__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %47
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %100, %51
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %103

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %56
  %61 = load i32*, i32** %4, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32* @PyTuple_GET_ITEM(i32* %61, i64 %62)
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %109

67:                                               ; preds = %60
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32* @PyDict_GetItem(i32* %68, i32* %69)
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %109

74:                                               ; preds = %67
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @PyArg_ParseTuple(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__** %13, i32* %15, i32** %8)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 -1, i32* %2, align 4
  br label %109

79:                                               ; preds = %74
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %81, %84
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %79
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %89, %92
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @PyExc_TypeError, align 4
  %97 = call i32 @PyErr_SetString(i32 %96, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %109

98:                                               ; preds = %87, %79
  br label %99

99:                                               ; preds = %98, %56
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %10, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %10, align 8
  br label %52

103:                                              ; preds = %52
  br label %104

104:                                              ; preds = %103, %47
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %9, align 8
  br label %24

108:                                              ; preds = %24
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %95, %78, %73, %66, %46, %41, %34
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i64) #1

declare dso_local i32* @PyDict_GetItem(i32*, i32*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, %struct.TYPE_5__**, i32*, i32**) #1

declare dso_local i64 @PyDataType_REFCHK(%struct.TYPE_5__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
