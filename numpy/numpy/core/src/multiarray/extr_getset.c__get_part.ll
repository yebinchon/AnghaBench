; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c__get_part.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c__get_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@NPY_FLOAT = common dso_local global i32 0, align 4
@NPY_DOUBLE = common dso_local global i32 0, align 4
@NPY_LONGDOUBLE = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cannot convert complex type number %d to float\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @_get_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_get_part(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 130, label %17
    i32 128, label %19
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @NPY_FLOAT, align 4
  store i32 %16, i32* %6, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* @NPY_DOUBLE, align 4
  store i32 %18, i32* %6, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @NPY_LONGDOUBLE, align 4
  store i32 %20, i32* %6, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @PyExc_ValueError, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PyErr_Format(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32* null, i32** %3, align 8
  br label %84

28:                                               ; preds = %19, %17, %15
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_8__* @PyArray_DescrFromType(i32 %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 0, %37 ]
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PyArray_ISNBO(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = call %struct.TYPE_8__* @PyArray_DescrNew(%struct.TYPE_8__* %47)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %10, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = call i32 @Py_DECREF(%struct.TYPE_8__* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %7, align 8
  br label %58

58:                                               ; preds = %46, %38
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @Py_TYPE(i32* %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @PyArray_NDIM(i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @PyArray_DIMS(i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @PyArray_STRIDES(i32* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i64 @PyArray_BYTES(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @PyArray_FLAGS(i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i64 @PyArray_NewFromDescrAndBase(i32 %60, %struct.TYPE_8__* %61, i32 %63, i32 %65, i32 %67, i64 %72, i32 %74, i32* %75, i32* %76)
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %58
  store i32* null, i32** %3, align 8
  br label %84

82:                                               ; preds = %58
  %83 = load i32*, i32** %8, align 8
  store i32* %83, i32** %3, align 8
  br label %84

84:                                               ; preds = %82, %81, %21
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local %struct.TYPE_9__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @PyArray_DescrFromType(i32) #1

declare dso_local i32 @PyArray_ISNBO(i32) #1

declare dso_local %struct.TYPE_8__* @PyArray_DescrNew(%struct.TYPE_8__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_8__*) #1

declare dso_local i64 @PyArray_NewFromDescrAndBase(i32, %struct.TYPE_8__*, i32, i32, i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @Py_TYPE(i32*) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyArray_STRIDES(i32*) #1

declare dso_local i64 @PyArray_BYTES(i32*) #1

declare dso_local i32 @PyArray_FLAGS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
