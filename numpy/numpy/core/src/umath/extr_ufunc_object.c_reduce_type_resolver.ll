; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_reduce_type_resolver.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_reduce_type_resolver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32**, i32*, i32**)* }

@Py_None = common dso_local global i32 0, align 4
@NPY_UNSAFE_CASTING = common dso_local global i32 0, align 4
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"type resolution returned NotImplemented to reduce ufunc %s\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"could not find a type resolution appropriate for reduce ufunc %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32**)* @reduce_type_resolver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reduce_type_resolver(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32*], align 16
  %13 = alloca [3 x i32*], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %16 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 0
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 1
  %19 = load i32*, i32** %7, align 8
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* null, i32** %20, align 8
  %21 = bitcast [3 x i32*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 24, i1 false)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = call i8* @ufunc_get_name_cstr(%struct.TYPE_5__* %22)
  store i8* %23, i8** %14, align 8
  store i32* null, i32** %15, align 8
  %24 = load i32**, i32*** %9, align 8
  store i32* null, i32** %24, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @Py_None, align 4
  %31 = call i32* @PyTuple_Pack(i32 3, i32* %28, i32* %29, i32 %30)
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %93

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_5__*, i32, i32**, i32*, i32**)*, i32 (%struct.TYPE_5__*, i32, i32**, i32*, i32**)** %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = load i32, i32* @NPY_UNSAFE_CASTING, align 4
  %42 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 0
  %43 = load i32*, i32** %15, align 8
  %44 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %45 = call i32 %39(%struct.TYPE_5__* %40, i32 %41, i32** %42, i32* %43, i32** %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @Py_DECREF(i32* %46)
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %93

51:                                               ; preds = %36
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, -2
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @PyExc_RuntimeError, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @PyErr_Format(i32 %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %56)
  store i32 -1, i32* %5, align 4
  br label %93

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %61 = load i32*, i32** %60, align 16
  %62 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @PyArray_EquivTypes(i32* %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %76, %66
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @Py_DECREF(i32* %74)
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %67

79:                                               ; preds = %67
  %80 = load i32, i32* @PyExc_RuntimeError, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 @PyErr_Format(i32 %80, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  store i32 -1, i32* %5, align 4
  br label %93

83:                                               ; preds = %59
  %84 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %85 = load i32*, i32** %84, align 16
  %86 = call i32 @Py_DECREF(i32* %85)
  %87 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @Py_DECREF(i32* %88)
  %90 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 2
  %91 = load i32*, i32** %90, align 16
  %92 = load i32**, i32*** %9, align 8
  store i32* %91, i32** %92, align 8
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %83, %79, %54, %50, %34
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @ufunc_get_name_cstr(%struct.TYPE_5__*) #2

declare dso_local i32* @PyTuple_Pack(i32, i32*, i32*, i32) #2

declare dso_local i32 @Py_DECREF(i32*) #2

declare dso_local i32 @PyErr_Format(i32, i8*, i8*) #2

declare dso_local i32 @PyArray_EquivTypes(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
