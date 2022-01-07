; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dladiv_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dladiv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dladiv_.e = internal global i32 0, align 4
@dladiv_.f = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dladiv_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @abs(i32 %14)
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @abs(i32 %17)
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %6
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %22, %24
  store i32 %25, i32* @dladiv_.e, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @dladiv_.e, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* @dladiv_.f, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @dladiv_.e, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 %34, %38
  %40 = load i32, i32* @dladiv_.f, align 4
  %41 = sdiv i32 %39, %40
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @dladiv_.e, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sub nsw i32 %44, %48
  %50 = load i32, i32* @dladiv_.f, align 4
  %51 = sdiv i32 %49, %50
  %52 = load i32*, i32** %12, align 8
  store i32 %51, i32* %52, align 4
  br label %87

53:                                               ; preds = %6
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %55, %57
  store i32 %58, i32* @dladiv_.e, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @dladiv_.e, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* @dladiv_.f, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @dladiv_.e, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %67, %71
  %73 = load i32, i32* @dladiv_.f, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @dladiv_.e, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %78, %82
  %84 = load i32, i32* @dladiv_.f, align 4
  %85 = sdiv i32 %83, %84
  %86 = load i32*, i32** %12, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %53, %20
  ret i32 0
}

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
