; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_squeeze.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_squeeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@array_squeeze.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"|O:squeeze\00", align 1
@Py_None = common dso_local global i32* null, align 8
@NPY_SUCCEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_squeeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_squeeze(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load i32, i32* @NPY_MAXDIMS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @PyArg_ParseTupleAndKeywords(i32* %16, i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @array_squeeze.kwlist, i64 0, i64 0), i32** %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** @Py_None, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %21
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @PyArray_Squeeze(i32* %29)
  store i32* %30, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %42

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @PyArray_NDIM(i32* %33)
  %35 = call i64 @PyArray_ConvertMultiAxis(i32* %32, i32 %34, i32* %15)
  %36 = load i64, i64* @NPY_SUCCEED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32* null, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = call i32* @PyArray_SqueezeSelected(i32* %40, i32* %15)
  store i32* %41, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %38, %28, %20
  %43 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**) #2

declare dso_local i32* @PyArray_Squeeze(i32*) #2

declare dso_local i64 @PyArray_ConvertMultiAxis(i32*, i32, i32*) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

declare dso_local i32* @PyArray_SqueezeSelected(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
