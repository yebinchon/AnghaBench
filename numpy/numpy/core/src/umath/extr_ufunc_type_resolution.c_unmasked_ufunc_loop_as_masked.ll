; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_unmasked_ufunc_loop_as_masked.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_unmasked_ufunc_loop_as_masked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 (i8**, i64*, i64*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*, i8*, i64, i64, i32*)* @unmasked_ufunc_loop_as_masked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmasked_ufunc_loop_as_masked(i8** %0, i64* %1, i8* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32 (i8**, i64*, i64*, i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %13, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32 (i8**, i64*, i64*, i8*)*, i32 (i8**, i64*, i64*, i8*)** %22, align 8
  store i32 (i8**, i64*, i64*, i8*)* %23, i32 (i8**, i64*, i64*, i8*)** %16, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %17, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %94, %6
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i8* @npy_memchr(i8* %31, i32 0, i64 %32, i64 %33, i64* %18, i32 1)
  store i8* %34, i8** %9, align 8
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %53, %30
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i64, i64* %18, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = mul nsw i64 %40, %45
  %47 = load i8**, i8*** %7, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %46
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* %11, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %11, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i8* @npy_memchr(i8* %60, i32 0, i64 %61, i64 %62, i64* %18, i32 0)
  store i8* %63, i8** %9, align 8
  %64 = load i32 (i8**, i64*, i64*, i8*)*, i32 (i8**, i64*, i64*, i8*)** %16, align 8
  %65 = load i8**, i8*** %7, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = call i32 %64(i8** %65, i64* %18, i64* %66, i8* %67)
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %87, %56
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load i64, i64* %18, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = mul nsw i64 %74, %79
  %81 = load i8**, i8*** %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %80
  store i8* %86, i8** %84, align 8
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %69

90:                                               ; preds = %69
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %11, align 8
  %93 = sub nsw i64 %92, %91
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %11, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %30, label %97

97:                                               ; preds = %94
  ret void
}

declare dso_local i8* @npy_memchr(i8*, i32, i64, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
