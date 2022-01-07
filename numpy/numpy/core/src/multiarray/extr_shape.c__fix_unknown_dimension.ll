; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_shape.c__fix_unknown_dimension.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_shape.c__fix_unknown_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can only specify one unknown dimension\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @_fix_unknown_dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fix_unknown_dimension(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @PyArray_SIZE(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %55, %2
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @PyExc_ValueError, align 4
  %38 = call i32 @PyErr_SetString(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %91

39:                                               ; preds = %34
  br label %54

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @npy_mul_with_overflow_intp(i32* %9, i32 %41, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @raise_reshape_size_mismatch(%struct.TYPE_4__* %50, i32* %51)
  store i32 -1, i32* %3, align 4
  br label %91

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %20

58:                                               ; preds = %20
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = srem i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %61
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @raise_reshape_size_mismatch(%struct.TYPE_4__* %70, i32* %71)
  store i32 -1, i32* %3, align 4
  br label %91

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sdiv i32 %74, %75
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %90

81:                                               ; preds = %58
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @raise_reshape_size_mismatch(%struct.TYPE_4__* %86, i32* %87)
  store i32 -1, i32* %3, align 4
  br label %91

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %73
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %85, %69, %49, %36
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @PyArray_SIZE(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @npy_mul_with_overflow_intp(i32*, i32, i32) #1

declare dso_local i32 @raise_reshape_size_mismatch(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
