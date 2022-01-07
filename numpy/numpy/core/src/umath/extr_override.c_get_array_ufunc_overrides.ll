; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_override.c_get_array_ufunc_overrides.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_override.c_get_array_ufunc_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@Py_None = common dso_local global %struct.TYPE_20__* null, align 8
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"operand '%.200s' does not support ufuncs (__array_ufunc__=None)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__**, %struct.TYPE_20__**)* @get_array_ufunc_overrides to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_array_ufunc_overrides(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__** %2, %struct.TYPE_20__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__**, align 8
  %9 = alloca %struct.TYPE_20__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_20__**, align 8
  %16 = alloca %struct.TYPE_20__**, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %8, align 8
  store %struct.TYPE_20__** %3, %struct.TYPE_20__*** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = call i32 @PyTuple_Size(%struct.TYPE_20__* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %152

26:                                               ; preds = %4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = call %struct.TYPE_20__** @PySequence_Fast_ITEMS(%struct.TYPE_20__* %27)
  store %struct.TYPE_20__** %28, %struct.TYPE_20__*** %15, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = call i32 @PyUFuncOverride_GetOutObjects(%struct.TYPE_20__* %29, %struct.TYPE_20__** %14, %struct.TYPE_20__*** %16)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %152

34:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %121, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %37, %38
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %124

41:                                               ; preds = %35
  store i32 1, i32* %19, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %15, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %46, i64 %48
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %17, align 8
  br label %59

51:                                               ; preds = %41
  %52 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %16, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %52, i64 %56
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %17, align 8
  br label %59

59:                                               ; preds = %51, %45
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %79, %59
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %66 = call i64 @Py_TYPE(%struct.TYPE_20__* %65)
  %67 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %67, i64 %69
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = call i64 @Py_TYPE(%struct.TYPE_20__* %71)
  %73 = icmp ne i64 %66, %72
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %64
  br label %82

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %18, align 4
  br label %60

82:                                               ; preds = %77, %60
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %82
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %87 = call %struct.TYPE_20__* @PyUFuncOverride_GetNonDefaultArrayUfunc(%struct.TYPE_20__* %86)
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %20, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %89 = icmp eq %struct.TYPE_20__* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %121

91:                                               ; preds = %85
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** @Py_None, align 8
  %94 = icmp eq %struct.TYPE_20__* %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32, i32* @PyExc_TypeError, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PyErr_Format(i32 %96, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %104 = call i32 @Py_DECREF(%struct.TYPE_20__* %103)
  br label %128

105:                                              ; preds = %91
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %107 = call i32 @Py_INCREF(%struct.TYPE_20__* %106)
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %109 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %109, i64 %111
  store %struct.TYPE_20__* %108, %struct.TYPE_20__** %112, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %114 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %114, i64 %116
  store %struct.TYPE_20__* %113, %struct.TYPE_20__** %117, align 8
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %105, %82
  br label %121

121:                                              ; preds = %120, %90
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %35

124:                                              ; preds = %35
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %126 = call i32 @Py_DECREF(%struct.TYPE_20__* %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %5, align 4
  br label %152

128:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %146, %128
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %134, i64 %136
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = call i32 @Py_DECREF(%struct.TYPE_20__* %138)
  %140 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %140, i64 %142
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = call i32 @Py_DECREF(%struct.TYPE_20__* %144)
  br label %146

146:                                              ; preds = %133
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %129

149:                                              ; preds = %129
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %151 = call i32 @Py_DECREF(%struct.TYPE_20__* %150)
  store i32 -1, i32* %5, align 4
  br label %152

152:                                              ; preds = %149, %124, %33, %25
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @PyTuple_Size(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__** @PySequence_Fast_ITEMS(%struct.TYPE_20__*) #1

declare dso_local i32 @PyUFuncOverride_GetOutObjects(%struct.TYPE_20__*, %struct.TYPE_20__**, %struct.TYPE_20__***) #1

declare dso_local i64 @Py_TYPE(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @PyUFuncOverride_GetNonDefaultArrayUfunc(%struct.TYPE_20__*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_20__*) #1

declare dso_local i32 @Py_INCREF(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
