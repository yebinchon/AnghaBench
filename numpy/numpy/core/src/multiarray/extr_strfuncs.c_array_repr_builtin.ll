; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_strfuncs.c_array_repr_builtin.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_strfuncs.c_array_repr_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"array(%s, '%c%d')\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"array(%s, '%c')\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @array_repr_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_repr_builtin(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @PyArray_NBYTES(i32* %10)
  %12 = mul nsw i32 %11, 4
  %13 = add nsw i32 %12, 7
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i8* @PyArray_malloc(i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32* (...) @PyErr_NoMemory()
  store i32* %18, i32** %3, align 8
  br label %68

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @PyArray_DATA(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @PyArray_NDIM(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @PyArray_DIMS(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @PyArray_STRIDES(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @dump_data(i8** %7, i32* %8, i32* %9, i32 %21, i32 %23, i32 %25, i32 %27, i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @PyArray_free(i8* %32)
  store i32* null, i32** %3, align 8
  br label %68

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @PyArray_ISEXTENDED(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call %struct.TYPE_2__* @PyArray_DESCR(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call %struct.TYPE_2__* @PyArray_DESCR(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32* (i8*, i8*, i32, ...) @PyUString_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %46, i32 %50)
  store i32* %51, i32** %6, align 8
  br label %59

52:                                               ; preds = %37
  %53 = load i8*, i8** %7, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call %struct.TYPE_2__* @PyArray_DESCR(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* (i8*, i8*, i32, ...) @PyUString_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %53, i32 %57)
  store i32* %58, i32** %6, align 8
  br label %59

59:                                               ; preds = %52, %41
  br label %64

60:                                               ; preds = %34
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32* @PyUString_FromStringAndSize(i8* %61, i32 %62)
  store i32* %63, i32** %6, align 8
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @PyArray_free(i8* %65)
  %67 = load i32*, i32** %6, align 8
  store i32* %67, i32** %3, align 8
  br label %68

68:                                               ; preds = %64, %31, %17
  %69 = load i32*, i32** %3, align 8
  ret i32* %69
}

declare dso_local i32 @PyArray_NBYTES(i32*) #1

declare dso_local i8* @PyArray_malloc(i32) #1

declare dso_local i32* @PyErr_NoMemory(...) #1

declare dso_local i64 @dump_data(i8**, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyArray_STRIDES(i32*) #1

declare dso_local i32 @PyArray_free(i8*) #1

declare dso_local i64 @PyArray_ISEXTENDED(i32*) #1

declare dso_local i32* @PyUString_FromFormat(i8*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_2__* @PyArray_DESCR(i32*) #1

declare dso_local i32* @PyUString_FromStringAndSize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
