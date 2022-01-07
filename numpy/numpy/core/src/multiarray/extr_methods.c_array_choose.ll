; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_choose.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_choose.keywords = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@NPY_RAISE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"O:choose\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"|O&O&\00", align 1
@PyArray_OutputConverter = common dso_local global i32 0, align 4
@PyArray_ClipmodeConverter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_choose(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32, i32* @NPY_RAISE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @PyTuple_Size(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @PyArg_ParseTuple(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32** %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32* null, i32** %4, align 8
  br label %40

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** %8, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @PyArray_OutputConverter, align 4
  %28 = load i32, i32* @PyArray_ClipmodeConverter, align 4
  %29 = call i32 @NpyArg_ParseKeywords(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @array_choose.keywords, i64 0, i64 0), i32 %27, i32** %9, i32 %28, i32* %10)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32* null, i32** %4, align 8
  br label %40

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @PyArray_Choose(i32* %33, i32* %34, i32* %35, i32 %36)
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32* @PyArray_Return(i32* %38)
  store i32* %39, i32** %4, align 8
  br label %40

40:                                               ; preds = %32, %31, %21
  %41 = load i32*, i32** %4, align 8
  ret i32* %41
}

declare dso_local i32 @PyTuple_Size(i32*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**) #1

declare dso_local i32 @NpyArg_ParseKeywords(i32*, i8*, i8**, i32, i32**, i32, i32*) #1

declare dso_local i32* @PyArray_Return(i32*) #1

declare dso_local i64 @PyArray_Choose(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
