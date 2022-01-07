; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgesv_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgesv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SGESV \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgesv_(i64* %0, i64* %1, i32* %2, i64* %3, i64* %4, i32* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i64* %0, i64** %10, align 8
  store i64* %1, i64** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  %23 = load i64*, i64** %13, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %18, align 8
  %25 = load i64, i64* %18, align 8
  %26 = add nsw i64 1, %25
  store i64 %26, i64* %19, align 8
  %27 = load i64, i64* %19, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = sub i64 0, %27
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %12, align 8
  %31 = load i64*, i64** %14, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 -1
  store i64* %32, i64** %14, align 8
  %33 = load i64*, i64** %16, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %20, align 8
  %35 = load i64, i64* %20, align 8
  %36 = add nsw i64 1, %35
  store i64 %36, i64* %21, align 8
  %37 = load i64, i64* %21, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = sub i64 0, %37
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %15, align 8
  %41 = load i64*, i64** %17, align 8
  store i64 0, i64* %41, align 8
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %8
  %46 = load i64*, i64** %17, align 8
  store i64 -1, i64* %46, align 8
  br label %74

47:                                               ; preds = %8
  %48 = load i64*, i64** %11, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64*, i64** %17, align 8
  store i64 -2, i64* %52, align 8
  br label %73

53:                                               ; preds = %47
  %54 = load i64*, i64** %13, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @max(i32 1, i64 %57)
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64*, i64** %17, align 8
  store i64 -4, i64* %61, align 8
  br label %72

62:                                               ; preds = %53
  %63 = load i64*, i64** %16, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @max(i32 1, i64 %66)
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64*, i64** %17, align 8
  store i64 -7, i64* %70, align 8
  br label %71

71:                                               ; preds = %69, %62
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %45
  %75 = load i64*, i64** %17, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i64*, i64** %17, align 8
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 0, %80
  store i64 %81, i64* %22, align 8
  %82 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %22)
  store i32 0, i32* %9, align 4
  br label %113

83:                                               ; preds = %74
  %84 = load i64*, i64** %10, align 8
  %85 = load i64*, i64** %10, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i64, i64* %19, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i64*, i64** %13, align 8
  %90 = load i64*, i64** %14, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64*, i64** %17, align 8
  %93 = call i32 @sgetrf_(i64* %84, i64* %85, i32* %88, i64* %89, i64* %91, i64* %92)
  %94 = load i64*, i64** %17, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %83
  %98 = load i64*, i64** %10, align 8
  %99 = load i64*, i64** %11, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i64, i64* %19, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i64*, i64** %13, align 8
  %104 = load i64*, i64** %14, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  %106 = load i32*, i32** %15, align 8
  %107 = load i64, i64* %21, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i64*, i64** %16, align 8
  %110 = load i64*, i64** %17, align 8
  %111 = call i32 @sgetrs_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* %98, i64* %99, i32* %102, i64* %103, i64* %105, i32* %108, i64* %109, i64* %110)
  br label %112

112:                                              ; preds = %97, %83
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %112, %78
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @xerbla_(i8*, i64*) #1

declare dso_local i32 @sgetrf_(i64*, i64*, i32*, i64*, i64*, i64*) #1

declare dso_local i32 @sgetrs_(i8*, i64*, i64*, i32*, i64*, i64*, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
