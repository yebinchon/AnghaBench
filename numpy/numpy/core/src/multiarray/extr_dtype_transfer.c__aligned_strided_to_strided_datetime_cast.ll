; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__aligned_strided_to_strided_datetime_cast.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__aligned_strided_to_strided_datetime_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NPY_DATETIME_NAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i64, i64, i32*)* @_aligned_strided_to_strided_datetime_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_aligned_strided_to_strided_datetime_cast(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_2__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %15, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  br label %27

27:                                               ; preds = %56, %7
  %28 = load i64, i64* %12, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %27
  %31 = load i8*, i8** %10, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* @NPY_DATETIME_NAT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %16, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %17, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sub nsw i32 %43, %45
  %47 = load i32, i32* %17, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %18, align 4
  br label %55

49:                                               ; preds = %37
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %16, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %17, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %49, %40
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %18, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = bitcast i8* %58 to i32*
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %8, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %65, i8** %10, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %12, align 8
  br label %27

68:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
