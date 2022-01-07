; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_check_mask_for_writemasked_reduction.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_check_mask_for_writemasked_reduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [146 x i8] c"Iterator reduction operand is WRITEMASKED, but also broadcasts to multiple mask values. There can be only one mask value per WRITEMASKED element.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @check_mask_for_writemasked_reduction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mask_for_writemasked_reduction(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @NIT_ITFLAGS(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @NIT_NDIM(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @NIT_NOP(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @NIT_MASKOP(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @NIT_AXISDATA(i32* %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @NIT_AXISDATA_SIZEOF(i32 %25, i32 %26, i32 %27)
  store i64 %28, i64* %12, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %57, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i32*, i32** %11, align 8
  %35 = call i64* @NAD_STRIDES(i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i64* @NAD_STRIDES(i32* %40)
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load i64, i64* %14, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @PyExc_ValueError, align 4
  %53 = call i32 @PyErr_SetString(i32 %52, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %61

54:                                               ; preds = %48, %33
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @NIT_ADVANCE_AXISDATA(i32* %55, i32 1)
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %29

60:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @NIT_ITFLAGS(i32*) #1

declare dso_local i32 @NIT_NDIM(i32*) #1

declare dso_local i32 @NIT_NOP(i32*) #1

declare dso_local i32 @NIT_MASKOP(i32*) #1

declare dso_local i32* @NIT_AXISDATA(i32*) #1

declare dso_local i64 @NIT_AXISDATA_SIZEOF(i32, i32, i32) #1

declare dso_local i64* @NAD_STRIDES(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @NIT_ADVANCE_AXISDATA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
