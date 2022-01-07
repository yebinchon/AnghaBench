; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime.c_recursive_find_object_timedelta64_type.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime.c_recursive_find_object_timedelta64_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@NPY_DATETIME = common dso_local global i64 0, align 8
@NPY_TIMEDELTA = common dso_local global i64 0, align 8
@NPY_OBJECT = common dso_local global i64 0, align 8
@Timedelta = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c" in recursive_find_object_timedelta64_type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @recursive_find_object_timedelta64_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recursive_find_object_timedelta64_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @PyArray_Check(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.TYPE_6__* @PyArray_DESCR(i32* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %7, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NPY_DATETIME, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NPY_TIMEDELTA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28, %19
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = call i32* @get_datetime_metadata_from_dtype(%struct.TYPE_6__* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %171

40:                                               ; preds = %34
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @compute_datetime_metadata_greatest_common_divisor(i32* %41, i32* %42, i32* %43, i32 0, i32 0)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %171

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %171

48:                                               ; preds = %28
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NPY_OBJECT, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %171

55:                                               ; preds = %48
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @PyArray_NDIM(i32* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = call i32* @PyTuple_New(i32 0)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %171

64:                                               ; preds = %59
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32* @PyObject_GetItem(i32* %65, i32* %66)
  store i32* %67, i32** %9, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @Py_DECREF(i32* %68)
  %70 = load i32*, i32** %9, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %171

73:                                               ; preds = %64
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @PyDelta_Check(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @Py_DECREF(i32* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @delta_checker(i32* %80)
  store i32 %81, i32* %3, align 4
  br label %171

82:                                               ; preds = %73
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @Py_DECREF(i32* %83)
  br label %85

85:                                               ; preds = %82, %55
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  br label %123

88:                                               ; preds = %2
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @Timedelta, align 4
  %91 = call i64 @PyArray_IsScalar(i32* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i32*, i32** %4, align 8
  %95 = bitcast i32* %94 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %11, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32*, i32** %5, align 8
  %100 = call i64 @compute_datetime_metadata_greatest_common_divisor(i32* %96, i32* %98, i32* %99, i32 1, i32 1)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 -1, i32* %3, align 4
  br label %171

103:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %171

104:                                              ; preds = %88
  %105 = load i32*, i32** %4, align 8
  %106 = call i64 @PyBytes_Check(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32*, i32** %4, align 8
  %110 = call i64 @PyUnicode_Check(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %104
  store i32 0, i32* %3, align 4
  br label %171

113:                                              ; preds = %108
  %114 = load i32*, i32** %4, align 8
  %115 = call i64 @PyDelta_Check(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @delta_checker(i32* %118)
  store i32 %119, i32* %3, align 4
  br label %171

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %87
  %124 = load i32*, i32** %4, align 8
  %125 = call i64 @PySequence_Check(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %170

127:                                              ; preds = %123
  %128 = load i32*, i32** %4, align 8
  %129 = call i64 @PySequence_Size(i32* %128)
  store i64 %129, i64* %13, align 8
  %130 = load i64, i64* %13, align 8
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = call i64 (...) @PyErr_Occurred()
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 -1, i32* %3, align 4
  br label %171

136:                                              ; preds = %132, %127
  store i64 0, i64* %12, align 8
  br label %137

137:                                              ; preds = %166, %136
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %137
  %142 = load i32*, i32** %4, align 8
  %143 = load i64, i64* %12, align 8
  %144 = call i32* @PySequence_GetItem(i32* %142, i64 %143)
  store i32* %144, i32** %15, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i32 -1, i32* %3, align 4
  br label %171

148:                                              ; preds = %141
  %149 = call i64 @Npy_EnterRecursiveCall(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32*, i32** %15, align 8
  %153 = call i32 @Py_DECREF(i32* %152)
  store i32 -1, i32* %3, align 4
  br label %171

154:                                              ; preds = %148
  %155 = load i32*, i32** %15, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @recursive_find_object_timedelta64_type(i32* %155, i32* %156)
  store i32 %157, i32* %14, align 4
  %158 = call i32 (...) @Py_LeaveRecursiveCall()
  %159 = load i32*, i32** %15, align 8
  %160 = call i32 @Py_DECREF(i32* %159)
  %161 = load i32, i32* %14, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %3, align 4
  br label %171

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %12, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %12, align 8
  br label %137

169:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %171

170:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %169, %163, %151, %147, %135, %117, %112, %103, %102, %77, %72, %63, %54, %47, %46, %39
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @PyArray_Check(i32*) #1

declare dso_local %struct.TYPE_6__* @PyArray_DESCR(i32*) #1

declare dso_local i32* @get_datetime_metadata_from_dtype(%struct.TYPE_6__*) #1

declare dso_local i64 @compute_datetime_metadata_greatest_common_divisor(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @PyArray_NDIM(i32*) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32* @PyObject_GetItem(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyDelta_Check(i32*) #1

declare dso_local i32 @delta_checker(i32*) #1

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i64 @PySequence_Check(i32*) #1

declare dso_local i64 @PySequence_Size(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32* @PySequence_GetItem(i32*, i64) #1

declare dso_local i64 @Npy_EnterRecursiveCall(i8*) #1

declare dso_local i32 @Py_LeaveRecursiveCall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
