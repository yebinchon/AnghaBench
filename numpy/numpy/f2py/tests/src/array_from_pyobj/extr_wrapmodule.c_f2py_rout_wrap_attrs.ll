; ModuleID = '/home/carl/AnghaBench/numpy/numpy/f2py/tests/src/array_from_pyobj/extr_wrapmodule.c_f2py_rout_wrap_attrs.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/f2py/tests/src/array_from_pyobj/extr_wrapmodule.c_f2py_rout_wrap_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@Py_None = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"O!|:wrap.attrs\00", align 1
@PyArray_Type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"siNNO(cciii)ii\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @f2py_rout_wrap_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @f2py_rout_wrap_attrs(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [100 x i8], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** @Py_None, align 8
  store i32* %12, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 100)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @PyArg_ParseTuple(i32* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* @PyArray_Type, i32** %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %91

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %7, align 8
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @PyArray_DATA(i32* %22)
  %24 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @PyArray_NDIM(i32* %25)
  %27 = call i32* @PyTuple_New(i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @PyArray_NDIM(i32* %28)
  %30 = call i32* @PyTuple_New(i32 %29)
  store i32* %30, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %51, %19
  %32 = load i32, i32* %11, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @PyArray_NDIM(i32* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @PyArray_DIM(i32* %39, i32 %40)
  %42 = call i32 @PyInt_FromLong(i32 %41)
  %43 = call i32 @PyTuple_SetItem(i32* %37, i32 %38, i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @PyArray_STRIDE(i32* %46, i32 %47)
  %49 = call i32 @PyInt_FromLong(i32 %48)
  %50 = call i32 @PyTuple_SetItem(i32* %44, i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %31

54:                                               ; preds = %31
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @PyArray_NDIM(i32* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32* @PyArray_BASE(i32* %60)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32*, i32** @Py_None, align 8
  br label %68

65:                                               ; preds = %54
  %66 = load i32*, i32** %7, align 8
  %67 = call i32* @PyArray_BASE(i32* %66)
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi i32* [ %64, %63 ], [ %67, %65 ]
  %70 = load i32*, i32** %7, align 8
  %71 = call %struct.TYPE_2__* @PyArray_DESCR(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call %struct.TYPE_2__* @PyArray_DESCR(i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @PyArray_TYPE(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @PyArray_ITEMSIZE(i32* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call %struct.TYPE_2__* @PyArray_DESCR(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @PyArray_FLAGS(i32* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @PyArray_ITEMSIZE(i32* %88)
  %90 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %57, i32* %58, i32* %59, i32* %69, i32 %73, i32 %77, i32 %79, i32 %81, i32 %85, i32 %87, i32 %89)
  store i32* %90, i32** %3, align 8
  br label %91

91:                                               ; preds = %68, %18
  %92 = load i32*, i32** %3, align 8
  ret i32* %92
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32*, i32**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyTuple_SetItem(i32*, i32, i32) #1

declare dso_local i32 @PyInt_FromLong(i32) #1

declare dso_local i32 @PyArray_DIM(i32*, i32) #1

declare dso_local i32 @PyArray_STRIDE(i32*, i32) #1

declare dso_local i32* @Py_BuildValue(i8*, i8*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @PyArray_BASE(i32*) #1

declare dso_local %struct.TYPE_2__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyArray_TYPE(i32*) #1

declare dso_local i32 @PyArray_ITEMSIZE(i32*) #1

declare dso_local i32 @PyArray_FLAGS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
