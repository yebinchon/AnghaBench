; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_iterators.c_multiiter_new_impl.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_iterators.c_multiiter_new_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64 }

@PyArrayMultiIter_Type = common dso_local global i32 0, align 4
@NPY_MAXARGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i32, %struct.TYPE_17__**)* @multiiter_new_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @multiiter_new_impl(i32 %0, %struct.TYPE_17__** %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %5, align 8
  %13 = call %struct.TYPE_17__* @PyArray_malloc(i32 16)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = icmp eq %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call %struct.TYPE_17__* (...) @PyErr_NoMemory()
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %3, align 8
  br label %145

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = call i32 @PyObject_Init(%struct.TYPE_17__* %19, i32* @PyArrayMultiIter_Type)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %123, %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %126

27:                                               ; preds = %23
  %28 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %28, i64 %30
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %8, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = call i64 @PyObject_IsInstance(%struct.TYPE_17__* %33, %struct.TYPE_17__* bitcast (i32* @PyArrayMultiIter_Type to %struct.TYPE_17__*))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %27
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %11, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i64, i64* @NPY_MAXARGS, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 (...) @multiiter_wrong_number_of_args()
  br label %142

49:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %84, %49
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %50
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %60, i64 %62
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %9, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = call i64 @PyArray_IterNew(%struct.TYPE_17__* %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %10, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = icmp eq %struct.TYPE_18__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %142

74:                                               ; preds = %57
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %78, i64 %81
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %83, align 8
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %50

87:                                               ; preds = %50
  br label %122

88:                                               ; preds = %27
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NPY_MAXARGS, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %88
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = call %struct.TYPE_17__* @PyArray_FromAny(%struct.TYPE_17__* %95, i32* null, i32 0, i32 0, i32 0, i32* null)
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %9, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %98 = icmp eq %struct.TYPE_17__* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %142

100:                                              ; preds = %94
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %102 = call i64 @PyArray_IterNew(%struct.TYPE_17__* %101)
  %103 = inttoptr i64 %102 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %103, %struct.TYPE_18__** %10, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %105 = call i32 @Py_DECREF(%struct.TYPE_17__* %104)
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %107 = icmp eq %struct.TYPE_18__* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %142

109:                                              ; preds = %100
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %113, i64 %116
  store %struct.TYPE_18__* %110, %struct.TYPE_18__** %118, align 8
  br label %121

119:                                              ; preds = %88
  %120 = call i32 (...) @multiiter_wrong_number_of_args()
  br label %142

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %87
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %23

126:                                              ; preds = %23
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = call i32 (...) @multiiter_wrong_number_of_args()
  br label %142

133:                                              ; preds = %126
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = call i64 @PyArray_Broadcast(%struct.TYPE_17__* %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %142

138:                                              ; preds = %133
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = call i32 @PyArray_MultiIter_RESET(%struct.TYPE_17__* %139)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %141, %struct.TYPE_17__** %3, align 8
  br label %145

142:                                              ; preds = %137, %131, %119, %108, %99, %73, %47
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = call i32 @Py_DECREF(%struct.TYPE_17__* %143)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %145

145:                                              ; preds = %142, %138, %16
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %146
}

declare dso_local %struct.TYPE_17__* @PyArray_malloc(i32) #1

declare dso_local %struct.TYPE_17__* @PyErr_NoMemory(...) #1

declare dso_local i32 @PyObject_Init(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @PyObject_IsInstance(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @multiiter_wrong_number_of_args(...) #1

declare dso_local i64 @PyArray_IterNew(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @PyArray_FromAny(%struct.TYPE_17__*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_17__*) #1

declare dso_local i64 @PyArray_Broadcast(%struct.TYPE_17__*) #1

declare dso_local i32 @PyArray_MultiIter_RESET(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
