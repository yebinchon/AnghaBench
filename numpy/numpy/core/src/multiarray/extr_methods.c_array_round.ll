; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_round.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_round.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [9 x i8] c"decimals\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"|iO&:round\00", align 1
@PyArray_OutputConverter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_round(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @PyArray_OutputConverter, align 4
  %13 = call i32 @PyArg_ParseTupleAndKeywords(i32* %10, i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @array_round.kwlist, i64 0, i64 0), i32* %8, i32 %12, i32** %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @PyArray_Round(i32* %17, i32 %18, i32* %19)
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32* @PyArray_Return(i32* %21)
  store i32* %22, i32** %4, align 8
  br label %23

23:                                               ; preds = %16, %15
  %24 = load i32*, i32** %4, align 8
  ret i32* %24
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32*, i32, i32**) #1

declare dso_local i32* @PyArray_Return(i32*) #1

declare dso_local i64 @PyArray_Round(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
