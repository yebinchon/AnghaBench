; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_rand_range_single.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_rand_range_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, double }

@rand_range_cases = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Chi^2 test negative %.4f > %4.f\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"test case %zu  range %u  iterations %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @test_rand_range_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rand_range_single(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store i64 %0, i64* %2, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rand_range_cases, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rand_range_cases, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rand_range_cases, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load double, double* %28, align 8
  store double %29, double* %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = uitofp i32 %30 to double
  %32 = load i32, i32* %3, align 4
  %33 = uitofp i32 %32 to double
  %34 = fdiv double %31, %33
  store double %34, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store i64* null, i64** %8, align 8
  store i64* null, i64** %9, align 8
  store i32 0, i32* %13, align 4
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i64* @OPENSSL_zalloc(i32 %38)
  store i64* %39, i64** %10, align 8
  %40 = call i32 @TEST_ptr(i64* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %1
  %43 = call i64* (...) @BN_new()
  store i64* %43, i64** %8, align 8
  %44 = call i32 @TEST_ptr(i64* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = call i64* (...) @BN_new()
  store i64* %47, i64** %9, align 8
  %48 = call i32 @TEST_ptr(i64* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @BN_set_word(i64* %51, i32 %52)
  %54 = call i32 @TEST_true(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50, %46, %42, %1
  br label %125

57:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load i64*, i64** %9, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = call i32 @BN_rand_range(i64* %63, i64* %64)
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i64*, i64** %9, align 8
  %70 = call i64 @BN_get_word(i64* %69)
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @TEST_uint_lt(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68, %62
  br label %125

76:                                               ; preds = %68
  %77 = load i64*, i64** %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %58

86:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %105, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load i64*, i64** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = uitofp i64 %96 to double
  %98 = load double, double* %6, align 8
  %99 = fsub double %97, %98
  store double %99, double* %14, align 8
  %100 = load double, double* %14, align 8
  %101 = load double, double* %14, align 8
  %102 = fmul double %100, %101
  %103 = load double, double* %7, align 8
  %104 = fadd double %103, %102
  store double %104, double* %7, align 8
  br label %105

105:                                              ; preds = %91
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %87

108:                                              ; preds = %87
  %109 = load double, double* %6, align 8
  %110 = load double, double* %7, align 8
  %111 = fdiv double %110, %109
  store double %111, double* %7, align 8
  %112 = load double, double* %7, align 8
  %113 = load double, double* %5, align 8
  %114 = fcmp ogt double %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %108
  %116 = load double, double* %7, align 8
  %117 = load double, double* %5, align 8
  %118 = call i32 @TEST_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), double %116, double %117)
  %119 = load i64, i64* %2, align 8
  %120 = add i64 %119, 1
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @TEST_note(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %120, i32 %121, i32 %122)
  br label %125

124:                                              ; preds = %108
  store i32 1, i32* %13, align 4
  br label %125

125:                                              ; preds = %124, %115, %75, %56
  %126 = load i64*, i64** %8, align 8
  %127 = call i32 @BN_free(i64* %126)
  %128 = load i64*, i64** %9, align 8
  %129 = call i32 @BN_free(i64* %128)
  %130 = load i64*, i64** %10, align 8
  %131 = call i32 @OPENSSL_free(i64* %130)
  %132 = load i32, i32* %13, align 4
  ret i32 %132
}

declare dso_local i32 @TEST_ptr(i64*) #1

declare dso_local i64* @OPENSSL_zalloc(i32) #1

declare dso_local i64* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i64*, i32) #1

declare dso_local i32 @BN_rand_range(i64*, i64*) #1

declare dso_local i32 @TEST_uint_lt(i32, i32) #1

declare dso_local i64 @BN_get_word(i64*) #1

declare dso_local i32 @TEST_info(i8*, double, double) #1

declare dso_local i32 @TEST_note(i8*, i64, i32, i32) #1

declare dso_local i32 @BN_free(i64*) #1

declare dso_local i32 @OPENSSL_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
