; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_multi_index_get.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_multi_index_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 (i32*, i64*)*, i64 }

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Iterator is past the end\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Iterator is not tracking a multi-index\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Iterator construction used delayed buffer allocation, and no reset has been done yet\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Iterator is in an invalid state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @npyiter_multi_index_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @npyiter_multi_index_get(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load i32, i32* @NPY_MAXDIMS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @PyExc_ValueError, align 4
  %25 = call i32 @PyErr_SetString(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %87

26:                                               ; preds = %18
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %28, align 8
  %30 = icmp ne i32 (i32*, i64*)* %29, null
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @NpyIter_GetNDim(i32* %34)
  store i64 %35, i64* %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 %38(i32* %41, i64* %13)
  %43 = load i64, i64* %6, align 8
  %44 = call i32* @PyTuple_New(i64 %43)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %87

48:                                               ; preds = %31
  store i64 0, i64* %5, align 8
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i64, i64* %13, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @PyInt_FromLong(i64 %58)
  %60 = call i32 @PyTuple_SET_ITEM(i32* %54, i64 %55, i32 %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %49

64:                                               ; preds = %49
  %65 = load i32*, i32** %4, align 8
  store i32* %65, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %87

66:                                               ; preds = %26
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @NpyIter_HasMultiIndex(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @PyExc_ValueError, align 4
  %74 = call i32 @PyErr_SetString(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %87

75:                                               ; preds = %66
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @NpyIter_HasDelayedBufAlloc(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @PyExc_ValueError, align 4
  %83 = call i32 @PyErr_SetString(i32 %82, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @PyExc_ValueError, align 4
  %86 = call i32 @PyErr_SetString(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %81, %72, %64, %47, %23
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32*, i32** %2, align 8
  ret i32* %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i64 @NpyIter_GetNDim(i32*) #2

declare dso_local i32* @PyTuple_New(i64) #2

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i64, i32) #2

declare dso_local i32 @PyInt_FromLong(i64) #2

declare dso_local i32 @NpyIter_HasMultiIndex(i32*) #2

declare dso_local i64 @NpyIter_HasDelayedBufAlloc(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
