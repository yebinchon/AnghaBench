; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c__vec_string_no_args.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c__vec_string_no_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32 }

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"result array type does not match underlying function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*)* @_vec_string_no_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @_vec_string_no_args(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %10, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = call i64 @PyArray_IterNew(%struct.TYPE_24__* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %8, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %17 = icmp eq %struct.TYPE_24__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = call i32 @Py_DECREF(%struct.TYPE_24__* %19)
  br label %89

21:                                               ; preds = %3
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = call i32 @PyArray_NDIM(%struct.TYPE_24__* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %25 = call i32 @PyArray_DIMS(%struct.TYPE_24__* %24)
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %27 = call i64 @PyArray_SimpleNewFromDescr(i32 %23, i32 %25, %struct.TYPE_24__* %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %9, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %30 = icmp eq %struct.TYPE_24__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %89

32:                                               ; preds = %21
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %34 = call i64 @PyArray_IterNew(%struct.TYPE_24__* %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %10, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %37 = icmp eq %struct.TYPE_24__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %89

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %76, %39
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %42 = call i64 @PyArray_ITER_NOTDONE(%struct.TYPE_24__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_24__* @PyArray_ToScalar(i32 %47, i32 %50)
  store %struct.TYPE_24__* %51, %struct.TYPE_24__** %12, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %53 = icmp eq %struct.TYPE_24__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %89

55:                                               ; preds = %44
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %58 = call %struct.TYPE_24__* @PyObject_CallFunctionObjArgs(%struct.TYPE_24__* %56, %struct.TYPE_24__* %57, i32* null)
  store %struct.TYPE_24__* %58, %struct.TYPE_24__** %11, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %60 = call i32 @Py_DECREF(%struct.TYPE_24__* %59)
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %62 = icmp eq %struct.TYPE_24__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %89

64:                                               ; preds = %55
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %67 = call i32 @PyArray_ITER_DATA(%struct.TYPE_24__* %66)
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %69 = call i64 @PyArray_SETITEM(%struct.TYPE_24__* %65, i32 %67, %struct.TYPE_24__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %73 = call i32 @Py_DECREF(%struct.TYPE_24__* %72)
  %74 = load i32, i32* @PyExc_TypeError, align 4
  %75 = call i32 @PyErr_SetString(i32 %74, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %89

76:                                               ; preds = %64
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %78 = call i32 @Py_DECREF(%struct.TYPE_24__* %77)
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %80 = call i32 @PyArray_ITER_NEXT(%struct.TYPE_24__* %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %82 = call i32 @PyArray_ITER_NEXT(%struct.TYPE_24__* %81)
  br label %40

83:                                               ; preds = %40
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %85 = call i32 @Py_DECREF(%struct.TYPE_24__* %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %87 = call i32 @Py_DECREF(%struct.TYPE_24__* %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %4, align 8
  br label %96

89:                                               ; preds = %71, %63, %54, %38, %31, %18
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %91 = call i32 @Py_XDECREF(%struct.TYPE_24__* %90)
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %93 = call i32 @Py_XDECREF(%struct.TYPE_24__* %92)
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %95 = call i32 @Py_XDECREF(%struct.TYPE_24__* %94)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %96

96:                                               ; preds = %89, %83
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %97
}

declare dso_local i64 @PyArray_IterNew(%struct.TYPE_24__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_24__*) #1

declare dso_local i64 @PyArray_SimpleNewFromDescr(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @PyArray_NDIM(%struct.TYPE_24__*) #1

declare dso_local i32 @PyArray_DIMS(%struct.TYPE_24__*) #1

declare dso_local i64 @PyArray_ITER_NOTDONE(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @PyArray_ToScalar(i32, i32) #1

declare dso_local %struct.TYPE_24__* @PyObject_CallFunctionObjArgs(%struct.TYPE_24__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i64 @PyArray_SETITEM(%struct.TYPE_24__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @PyArray_ITER_DATA(%struct.TYPE_24__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyArray_ITER_NEXT(%struct.TYPE_24__*) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
