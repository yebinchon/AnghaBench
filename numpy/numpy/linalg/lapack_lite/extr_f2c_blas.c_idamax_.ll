; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_idamax_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_idamax_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idamax_.i__ = internal global i32 0, align 4
@idamax_.ix = internal global i32 0, align 4
@idamax_.dmax__ = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idamax_(i32* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = getelementptr inbounds i64, i64* %11, i32 -1
  store i64* %12, i64** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %115

22:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %115

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %78

33:                                               ; preds = %28
  store i32 1, i32* @idamax_.ix, align 4
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @abs(i64 %36)
  store i64 %37, i64* @idamax_.dmax__, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @idamax_.ix, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* @idamax_.ix, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  store i32 2, i32* @idamax_.i__, align 4
  br label %44

44:                                               ; preds = %73, %33
  %45 = load i32, i32* @idamax_.i__, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load i64*, i64** %6, align 8
  %50 = load i32, i32* @idamax_.ix, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @abs(i64 %54)
  %56 = load i64, i64* @idamax_.dmax__, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %68

59:                                               ; preds = %48
  %60 = load i32, i32* @idamax_.i__, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i64*, i64** %6, align 8
  %62 = load i32, i32* @idamax_.ix, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @abs(i64 %66)
  store i64 %67, i64* @idamax_.dmax__, align 8
  br label %68

68:                                               ; preds = %59, %58
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @idamax_.ix, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* @idamax_.ix, align 4
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @idamax_.i__, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @idamax_.i__, align 4
  br label %44

76:                                               ; preds = %44
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %115

78:                                               ; preds = %32
  %79 = load i64*, i64** %6, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @abs(i64 %81)
  store i64 %82, i64* @idamax_.dmax__, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %9, align 4
  store i32 2, i32* @idamax_.i__, align 4
  br label %85

85:                                               ; preds = %110, %78
  %86 = load i32, i32* @idamax_.i__, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load i64*, i64** %6, align 8
  %91 = load i32, i32* @idamax_.i__, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i64 @abs(i64 %95)
  %97 = load i64, i64* @idamax_.dmax__, align 8
  %98 = icmp sle i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %109

100:                                              ; preds = %89
  %101 = load i32, i32* @idamax_.i__, align 4
  store i32 %101, i32* %8, align 4
  %102 = load i64*, i64** %6, align 8
  %103 = load i32, i32* @idamax_.i__, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @abs(i64 %107)
  store i64 %108, i64* @idamax_.dmax__, align 8
  br label %109

109:                                              ; preds = %100, %99
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* @idamax_.i__, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @idamax_.i__, align 4
  br label %85

113:                                              ; preds = %85
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %76, %26, %20
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
