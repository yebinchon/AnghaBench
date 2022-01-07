; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_params.c_OSSL_PARAM_get_double.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_params.c_OSSL_PARAM_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@OSSL_PARAM_REAL = common dso_local global i64 0, align 8
@OSSL_PARAM_UNSIGNED_INTEGER = common dso_local global i64 0, align 8
@OSSL_PARAM_INTEGER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_PARAM_get_double(%struct.TYPE_3__* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store double* %1, double** %5, align 8
  %8 = load double*, double** %5, align 8
  %9 = icmp eq double* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %109

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OSSL_PARAM_REAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %31 [
    i32 8, label %24
  ]

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to double*
  %29 = load double, double* %28, align 8
  %30 = load double*, double** %5, align 8
  store double %29, double* %30, align 8
  store i32 1, i32* %3, align 4
  br label %109

31:                                               ; preds = %20
  br label %108

32:                                               ; preds = %14
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OSSL_PARAM_UNSIGNED_INTEGER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %63 [
    i32 8, label %42
    i32 4, label %49
  ]

42:                                               ; preds = %38
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to double*
  %47 = load double, double* %46, align 8
  %48 = load double*, double** %5, align 8
  store double %47, double* %48, align 8
  store i32 1, i32* %3, align 4
  br label %109

49:                                               ; preds = %38
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %55, 53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = sitofp i32 %59 to double
  %61 = load double*, double** %5, align 8
  store double %60, double* %61, align 8
  store i32 1, i32* %3, align 4
  br label %109

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %38, %62
  br label %107

64:                                               ; preds = %32
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @OSSL_PARAM_INTEGER, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %105 [
    i32 8, label %74
    i32 4, label %81
  ]

74:                                               ; preds = %70
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to double*
  %79 = load double, double* %78, align 8
  %80 = load double*, double** %5, align 8
  store double %79, double* %80, align 8
  store i32 1, i32* %3, align 4
  br label %109

81:                                               ; preds = %70
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 0, %90
  br label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i32 [ %91, %89 ], [ %93, %92 ]
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = ashr i32 %96, 53
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = sitofp i32 %100 to double
  %102 = fadd double 0.000000e+00, %101
  %103 = load double*, double** %5, align 8
  store double %102, double* %103, align 8
  store i32 1, i32* %3, align 4
  br label %109

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %70, %104
  br label %106

106:                                              ; preds = %105, %64
  br label %107

107:                                              ; preds = %106, %63
  br label %108

108:                                              ; preds = %107, %31
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %99, %74, %58, %42, %24, %13
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
