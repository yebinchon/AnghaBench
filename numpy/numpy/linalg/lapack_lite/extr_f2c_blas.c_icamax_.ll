; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_icamax_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_icamax_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@icamax_.i__ = internal global i32 0, align 4
@icamax_.ix = internal global i32 0, align 4
@icamax_.smax = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icamax_(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 -1
  store i32* %11, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %110

21:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %110

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %75

32:                                               ; preds = %27
  store i32 1, i32* @icamax_.ix, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = call i8* @scabs1_(i32* %34)
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* @icamax_.smax, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @icamax_.ix, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* @icamax_.ix, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  store i32 2, i32* @icamax_.i__, align 4
  br label %43

43:                                               ; preds = %70, %32
  %44 = load i32, i32* @icamax_.i__, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @icamax_.ix, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i8* @scabs1_(i32* %51)
  %53 = load i64, i64* @icamax_.smax, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = icmp ule i8* %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %65

57:                                               ; preds = %47
  %58 = load i32, i32* @icamax_.i__, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @icamax_.ix, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i8* @scabs1_(i32* %62)
  %64 = ptrtoint i8* %63 to i64
  store i64 %64, i64* @icamax_.smax, align 8
  br label %65

65:                                               ; preds = %57, %56
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @icamax_.ix, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* @icamax_.ix, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @icamax_.i__, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @icamax_.i__, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %110

75:                                               ; preds = %31
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = call i8* @scabs1_(i32* %77)
  %79 = ptrtoint i8* %78 to i64
  store i64 %79, i64* @icamax_.smax, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  store i32 2, i32* @icamax_.i__, align 4
  br label %82

82:                                               ; preds = %105, %75
  %83 = load i32, i32* @icamax_.i__, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @icamax_.i__, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i8* @scabs1_(i32* %90)
  %92 = load i64, i64* @icamax_.smax, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = icmp ule i8* %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %104

96:                                               ; preds = %86
  %97 = load i32, i32* @icamax_.i__, align 4
  store i32 %97, i32* %8, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* @icamax_.i__, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i8* @scabs1_(i32* %101)
  %103 = ptrtoint i8* %102 to i64
  store i64 %103, i64* @icamax_.smax, align 8
  br label %104

104:                                              ; preds = %96, %95
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* @icamax_.i__, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @icamax_.i__, align 4
  br label %82

108:                                              ; preds = %82
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %73, %25, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i8* @scabs1_(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
