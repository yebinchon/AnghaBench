; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c_array_fromfile_binary.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c_array_fromfile_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@PyExc_IOError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not seek in file\00", align 1
@PyArray_Type = common dso_local global i32 0, align 4
@NPY_BEGIN_ALLOW_THREADS = common dso_local global i32 0, align 4
@NPY_END_ALLOW_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i64, i64*)* @array_fromfile_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_fromfile_binary(i32* %0, %struct.TYPE_5__* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @npy_ftell(i32* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %14, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @SEEK_END, align 4
  %26 = call i64 @npy_fseek(i32* %24, i64 0, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %14, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @npy_ftell(i32* %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %14, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %12, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* @SEEK_SET, align 4
  %42 = call i64 @npy_fseek(i32* %39, i64 %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %14, align 4
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* @PyExc_IOError, align 4
  %50 = call i32 @PyErr_SetString(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = call i32 @Py_DECREF(%struct.TYPE_5__* %51)
  store i32* null, i32** %5, align 8
  br label %81

53:                                               ; preds = %45
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sdiv i64 %54, %57
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %53, %4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = call i64 @PyArray_NewFromDescr(i32* @PyArray_Type, %struct.TYPE_5__* %64, i32 1, i64* %8, i32* null, i32* null, i32 0, i32* null)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32* null, i32** %5, align 8
  br label %81

70:                                               ; preds = %59
  %71 = load i32, i32* @NPY_BEGIN_ALLOW_THREADS, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @PyArray_DATA(i32* %72)
  %74 = load i32, i32* %13, align 4
  %75 = load i64, i64* %8, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i64 @fread(i32 %73, i32 %74, i64 %75, i32* %76)
  %78 = load i64*, i64** %9, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* @NPY_END_ALLOW_THREADS, align 4
  %80 = load i32*, i32** %10, align 8
  store i32* %80, i32** %5, align 8
  br label %81

81:                                               ; preds = %70, %69, %48
  %82 = load i32*, i32** %5, align 8
  ret i32* %82
}

declare dso_local i64 @npy_ftell(i32*) #1

declare dso_local i64 @npy_fseek(i32*, i64, i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_5__*) #1

declare dso_local i64 @PyArray_NewFromDescr(i32*, %struct.TYPE_5__*, i32, i64*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @fread(i32, i32, i64, i32*) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
