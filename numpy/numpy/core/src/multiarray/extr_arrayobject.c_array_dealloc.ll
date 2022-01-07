; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayobject.c_array_dealloc.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayobject.c_array_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i32* }
%struct.TYPE_4__ = type { i32 (i32*)* }

@NPY_ARRAY_WRITEBACKIFCOPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [138 x i8] c"WRITEBACKIFCOPY detected in array_dealloc.  Required call to PyArray_ResolveWritebackIfCopy or PyArray_DiscardWritebackIfCopy is missing.\00", align 1
@PyExc_RuntimeWarning = common dso_local global i32 0, align 4
@NPY_ARRAY_UPDATEIFCOPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [134 x i8] c"UPDATEIFCOPY detected in array_dealloc.  Required call to PyArray_ResolveWritebackIfCopy or PyArray_DiscardWritebackIfCopy is missing\00", align 1
@PyExc_DeprecationWarning = common dso_local global i32 0, align 4
@NPY_ARRAY_OWNDATA = common dso_local global i32 0, align 4
@NPY_ITEM_REFCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @array_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_dealloc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @_dealloc_cached_buffer_info(i32* %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @PyObject_ClearWeakRefs(i32* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @PyArray_FLAGS(i32* %24)
  %26 = load i32, i32* @NPY_ARRAY_WRITEBACKIFCOPY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @Py_INCREF(i32* %30)
  %32 = load i32, i32* @PyExc_RuntimeWarning, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @WARN_IN_DEALLOC(i32 %32, i8* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @PyArray_ResolveWritebackIfCopy(i32* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = call i32 (...) @PyErr_Print()
  %41 = call i32 (...) @PyErr_Clear()
  br label %42

42:                                               ; preds = %39, %29
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @PyArray_FLAGS(i32* %44)
  %46 = load i32, i32* @NPY_ARRAY_UPDATEIFCOPY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  store i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @Py_INCREF(i32* %50)
  %52 = load i32, i32* @PyExc_DeprecationWarning, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @WARN_IN_DEALLOC(i32 %52, i8* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @PyArray_ResolveWritebackIfCopy(i32* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = call i32 (...) @PyErr_Print()
  %61 = call i32 (...) @PyErr_Clear()
  br label %62

62:                                               ; preds = %59, %49
  br label %63

63:                                               ; preds = %62, %43
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @Py_XDECREF(i64 %66)
  br label %68

68:                                               ; preds = %63, %18
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NPY_ARRAY_OWNDATA, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %68
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NPY_ITEM_REFCOUNT, align 4
  %85 = call i64 @PyDataType_FLAGCHK(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @PyArray_XDECREF(i32* %88)
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @PyArray_NBYTES(i32* %94)
  %96 = call i32 @npy_free_cache(i64 %93, i32 %95)
  br label %97

97:                                               ; preds = %90, %75, %68
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 2, %103
  %105 = call i32 @npy_free_cache_dim(i32 %100, i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @Py_DECREF(i32 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = call %struct.TYPE_4__* @Py_TYPE(i32* %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32 (i32*)*, i32 (i32*)** %112, align 8
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 %113(i32* %114)
  ret void
}

declare dso_local i32 @_dealloc_cached_buffer_info(i32*) #1

declare dso_local i32 @PyObject_ClearWeakRefs(i32*) #1

declare dso_local i32 @PyArray_FLAGS(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @WARN_IN_DEALLOC(i32, i8*) #1

declare dso_local i32 @PyArray_ResolveWritebackIfCopy(i32*) #1

declare dso_local i32 @PyErr_Print(...) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @Py_XDECREF(i64) #1

declare dso_local i64 @PyDataType_FLAGCHK(i32, i32) #1

declare dso_local i32 @PyArray_XDECREF(i32*) #1

declare dso_local i32 @npy_free_cache(i64, i32) #1

declare dso_local i32 @PyArray_NBYTES(i32*) #1

declare dso_local i32 @npy_free_cache_dim(i32, i32) #1

declare dso_local i32 @Py_DECREF(i32) #1

declare dso_local %struct.TYPE_4__* @Py_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
