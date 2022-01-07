; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_ufunc_dealloc.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_ufunc_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PyUFunc_IdentityValue = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @ufunc_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufunc_dealloc(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = bitcast %struct.TYPE_4__* %3 to i32*
  %5 = call i32 @PyObject_GC_UnTrack(i32* %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @PyArray_free(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PyArray_free(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @PyArray_free(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PyArray_free(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PyArray_free(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PyArray_free(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PyArray_free(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PyArray_free(i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @Py_XDECREF(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PyUFunc_IdentityValue, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @Py_DECREF(i32* %50)
  br label %52

52:                                               ; preds = %47, %1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @Py_DECREF(i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = call i32 @PyObject_GC_Del(%struct.TYPE_4__* %63)
  ret void
}

declare dso_local i32 @PyObject_GC_UnTrack(i32*) #1

declare dso_local i32 @PyArray_free(i32) #1

declare dso_local i32 @Py_XDECREF(i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyObject_GC_Del(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
