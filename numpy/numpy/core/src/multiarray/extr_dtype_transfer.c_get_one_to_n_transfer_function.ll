; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_one_to_n_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_one_to_n_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@NPY_SUCCEED = common dso_local global i64 0, align 8
@NPY_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32**, i32**, i32*)* @get_one_to_n_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_one_to_n_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32 %5, i32 %6, i32** %7, i32** %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32** %7, i32*** %19, align 8
  store i32** %8, i32*** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %32 = load i32*, i32** %21, align 8
  %33 = call i64 @PyArray_GetDTypeTransferFunction(i32 %26, i32 0, i32 %29, %struct.TYPE_8__* %30, %struct.TYPE_8__* %31, i32 0, i32** %22, i32** %24, i32* %32)
  %34 = load i64, i64* @NPY_SUCCEED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %10
  %37 = load i32, i32* @NPY_FAIL, align 4
  store i32 %37, i32* %11, align 4
  br label %81

38:                                               ; preds = %10
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %43 = call i64 @PyDataType_REFCHK(%struct.TYPE_8__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = call i64 @get_decsrcref_transfer_function(i32 %46, i32 %47, %struct.TYPE_8__* %48, i32** %23, i32** %25, i32* %49)
  %51 = load i64, i64* @NPY_SUCCEED, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32*, i32** %24, align 8
  %55 = call i32 @NPY_AUXDATA_FREE(i32* %54)
  %56 = load i32, i32* @NPY_FAIL, align 4
  store i32 %56, i32* %11, align 4
  br label %81

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %41, %38
  %59 = load i32*, i32** %22, align 8
  %60 = load i32*, i32** %24, align 8
  %61 = load i32*, i32** %23, align 8
  %62 = load i32*, i32** %25, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32**, i32*** %19, align 8
  %68 = load i32**, i32*** %20, align 8
  %69 = call i64 @wrap_transfer_function_one_to_n(i32* %59, i32* %60, i32* %61, i32* %62, i32 %65, i32 %66, i32** %67, i32** %68)
  %70 = load i64, i64* @NPY_SUCCEED, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %58
  %73 = load i32*, i32** %24, align 8
  %74 = call i32 @NPY_AUXDATA_FREE(i32* %73)
  %75 = load i32*, i32** %25, align 8
  %76 = call i32 @NPY_AUXDATA_FREE(i32* %75)
  %77 = load i32, i32* @NPY_FAIL, align 4
  store i32 %77, i32* %11, align 4
  br label %81

78:                                               ; preds = %58
  %79 = load i64, i64* @NPY_SUCCEED, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %72, %53, %36
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i64 @PyArray_GetDTypeTransferFunction(i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32**, i32**, i32*) #1

declare dso_local i64 @PyDataType_REFCHK(%struct.TYPE_8__*) #1

declare dso_local i64 @get_decsrcref_transfer_function(i32, i32, %struct.TYPE_8__*, i32**, i32**, i32*) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32*) #1

declare dso_local i64 @wrap_transfer_function_one_to_n(i32*, i32*, i32*, i32*, i32, i32, i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
