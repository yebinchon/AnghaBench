; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_newbyteorder.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_newbyteorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_SWAP = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [17 x i8] c"|O&:newbyteorder\00", align 1
@PyArray_ByteorderConverter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @array_newbyteorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_newbyteorder(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8, i8* @NPY_SWAP, align 1
  store i8 %8, i8* %6, align 1
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @PyArray_ByteorderConverter, align 4
  %11 = call i32 @PyArg_ParseTuple(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @PyArray_DESCR(i32* %15)
  %17 = load i8, i8* %6, align 1
  %18 = call i32* @PyArray_DescrNewByteorder(i32 %16, i8 signext %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @PyArray_View(i32* %23, i32* %24, i32* null)
  store i32* %25, i32** %3, align 8
  br label %26

26:                                               ; preds = %22, %21, %13
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32, i8*) #1

declare dso_local i32* @PyArray_DescrNewByteorder(i32, i8 signext) #1

declare dso_local i32 @PyArray_DESCR(i32*) #1

declare dso_local i32* @PyArray_View(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
