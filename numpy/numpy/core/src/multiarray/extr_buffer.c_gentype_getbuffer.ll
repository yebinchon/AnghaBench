; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c_gentype_getbuffer.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c_gentype_getbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@PyBUF_WRITABLE = common dso_local global i32 0, align 4
@PyExc_BufferError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"scalar buffer is readonly\00", align 1
@PyBUF_FORMAT = common dso_local global i32 0, align 4
@NPY_UNICODE = common dso_local global i64 0, align 8
@Datetime = common dso_local global i32 0, align 4
@Timedelta = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gentype_getbuffer(i32* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PyBUF_WRITABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @PyExc_BufferError, align 4
  %17 = call i32 @PyErr_SetString(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %103

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call %struct.TYPE_9__* @_buffer_get_info(i32* %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %8, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %103

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PyBUF_FORMAT, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @PyBUF_FORMAT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %24
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 6
  store i32* %48, i32** %50, align 8
  br label %54

51:                                               ; preds = %24
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 6
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32*, i32** %5, align 8
  %56 = call %struct.TYPE_11__* @PyArray_DescrFromScalar(i32* %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %9, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = call i64 @scalar_value(i32* %57, %struct.TYPE_11__* %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %10, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NPY_UNICODE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %54
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @Datetime, align 4
  %80 = call i64 @PyArray_IsScalar(i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %74
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* @Timedelta, align 4
  %85 = call i64 @PyArray_IsScalar(i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %74
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %82
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = call i32 @Py_DECREF(%struct.TYPE_11__* %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  store i32* null, i32** %97, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 3
  store i32* %98, i32** %100, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @Py_INCREF(i32* %101)
  store i32 0, i32* %4, align 4
  br label %106

103:                                              ; preds = %23, %15
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  store i32* null, i32** %105, align 8
  store i32 -1, i32* %4, align 4
  br label %106

106:                                              ; preds = %103, %88
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @_buffer_get_info(i32*) #1

declare dso_local %struct.TYPE_11__* @PyArray_DescrFromScalar(i32*) #1

declare dso_local i64 @scalar_value(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_11__*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
