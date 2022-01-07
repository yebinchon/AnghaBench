; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c__UpdateContiguousFlags.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c__UpdateContiguousFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_ARRAY_C_CONTIGUOUS = common dso_local global i32 0, align 4
@NPY_ARRAY_F_CONTIGUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @_UpdateContiguousFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_UpdateContiguousFlags(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %6, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @PyArray_ITEMSIZE(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @PyArray_NDIM(i32* %9)
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @PyArray_DIMS(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32* @PyArray_STRIDES(i32* %22)
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %42

31:                                               ; preds = %15
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  br label %12

42:                                               ; preds = %34, %30, %12
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @NPY_ARRAY_C_CONTIGUOUS, align 4
  %48 = call i32 @PyArray_ENABLEFLAGS(i32* %46, i32 %47)
  br label %53

49:                                               ; preds = %42
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @NPY_ARRAY_C_CONTIGUOUS, align 4
  %52 = call i32 @PyArray_CLEARFLAGS(i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @PyArray_ITEMSIZE(i32* %54)
  store i32 %55, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %88, %53
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @PyArray_NDIM(i32* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load i32*, i32** %2, align 8
  %63 = call i32* @PyArray_DIMS(i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %4, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = call i32* @PyArray_STRIDES(i32* %68)
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %61
  %77 = load i32*, i32** %2, align 8
  %78 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  %79 = call i32 @PyArray_CLEARFLAGS(i32* %77, i32 %78)
  br label %95

80:                                               ; preds = %61
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %3, align 4
  %87 = mul nsw i32 %86, %85
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %56

91:                                               ; preds = %83, %56
  %92 = load i32*, i32** %2, align 8
  %93 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  %94 = call i32 @PyArray_ENABLEFLAGS(i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %76
  ret void
}

declare dso_local i32 @PyArray_ITEMSIZE(i32*) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32* @PyArray_DIMS(i32*) #1

declare dso_local i32* @PyArray_STRIDES(i32*) #1

declare dso_local i32 @PyArray_ENABLEFLAGS(i32*, i32) #1

declare dso_local i32 @PyArray_CLEARFLAGS(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
