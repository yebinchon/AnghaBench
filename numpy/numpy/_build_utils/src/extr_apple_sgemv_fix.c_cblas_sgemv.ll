; ModuleID = '/home/carl/AnghaBench/numpy/numpy/_build_utils/src/extr_apple_sgemv_fix.c_cblas_sgemv.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/_build_utils/src/extr_apple_sgemv_fix.c_cblas_sgemv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CblasColMajor = common dso_local global i32 0, align 4
@CblasNoTrans = common dso_local global i32 0, align 4
@CblasTrans = common dso_local global i32 0, align 4
@CblasConjTrans = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cblas_sgemv\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Illegal TransA setting, %d\0A\00", align 1
@CblasRowMajor = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Illegal Order setting, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cblas_sgemv(i32 %0, i32 %1, i32 %2, i32 %3, float %4, float* %5, i32 %6, float* %7, i32 %8, float %9, float* %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store float %4, float* %17, align 4
  store float* %5, float** %18, align 8
  store i32 %6, i32* %19, align 4
  store float* %7, float** %20, align 8
  store i32 %8, i32* %21, align 4
  store float %9, float* %22, align 4
  store float* %10, float** %23, align 8
  store i32 %11, i32* %24, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @CblasColMajor, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %12
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @CblasNoTrans, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8 78, i8* %25, align 1
  br label %49

34:                                               ; preds = %29
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @CblasTrans, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8 84, i8* %25, align 1
  br label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @CblasConjTrans, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8 67, i8* %25, align 1
  br label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @cblas_xerbla(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %43
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %33
  %50 = load float*, float** %18, align 8
  %51 = load float*, float** %20, align 8
  %52 = load float*, float** %23, align 8
  %53 = call i32 @sgemv_(i8* %25, i32* %15, i32* %16, float* %17, float* %50, i32* %19, float* %51, i32* %21, float* %22, float* %52, i32* %24)
  br label %87

54:                                               ; preds = %12
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @CblasRowMajor, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @CblasNoTrans, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i8 84, i8* %25, align 1
  br label %78

63:                                               ; preds = %58
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @CblasTrans, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i8 78, i8* %25, align 1
  br label %77

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @CblasConjTrans, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i8 78, i8* %25, align 1
  br label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @cblas_xerbla(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %87

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %67
  br label %78

78:                                               ; preds = %77, %62
  %79 = load float*, float** %18, align 8
  %80 = load float*, float** %20, align 8
  %81 = load float*, float** %23, align 8
  %82 = call i32 @sgemv_(i8* %25, i32* %16, i32* %15, float* %17, float* %79, i32* %19, float* %80, i32* %21, float* %22, float* %81, i32* %24)
  br label %86

83:                                               ; preds = %54
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @cblas_xerbla(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %73, %86, %49
  ret void
}

declare dso_local i32 @cblas_xerbla(i32, i8*, i8*, i32) #1

declare dso_local i32 @sgemv_(i8*, i32*, i32*, float*, float*, i32*, float*, i32*, float*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
