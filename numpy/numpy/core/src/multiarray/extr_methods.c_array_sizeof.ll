; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_sizeof.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_sizeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_SIZEOF_PYARRAYOBJECT = common dso_local global i64 0, align 8
@NPY_ARRAY_OWNDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @array_sizeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_sizeof(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i64, i64* @NPY_SIZEOF_PYARRAYOBJECT, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @PyArray_NDIM(i32* %5)
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = mul i64 %8, 2
  %10 = add i64 %4, %9
  store i64 %10, i64* %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @NPY_ARRAY_OWNDATA, align 4
  %13 = call i64 @PyArray_CHKFLAGS(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @PyArray_NBYTES(i32* %16)
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i64, i64* %3, align 8
  %22 = call i32* @PyLong_FromSsize_t(i64 %21)
  ret i32* %22
}

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i64 @PyArray_CHKFLAGS(i32*, i32) #1

declare dso_local i64 @PyArray_NBYTES(i32*) #1

declare dso_local i32* @PyLong_FromSsize_t(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
