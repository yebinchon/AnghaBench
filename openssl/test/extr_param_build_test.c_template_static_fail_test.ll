; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_param_build_test.c_template_static_fail_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_param_build_test.c_template_static_fail_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ABCDEF78901234567890ABCDEF0987987654321\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"bn\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"utf8_s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @template_static_fail_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @template_static_fail_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10000 x i8], align 16
  %4 = alloca [500 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca [20 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @ossl_param_bld_init(i32* %5)
  %10 = call i32 @ossl_param_bld_push_uint(i32* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 6)
  %11 = call i32 @TEST_true(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32* (...) @BN_new()
  br label %21

19:                                               ; preds = %13
  %20 = call i32* (...) @BN_secure_new()
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32* [ %18, %17 ], [ %20, %19 ]
  store i32* %22, i32** %7, align 8
  %23 = call i32 @TEST_ptr(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %21
  %26 = call i32 @BN_hex2bn(i32** %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @TEST_true(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @ossl_param_bld_push_BN(i32* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %30)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %29
  %35 = call i32 @ossl_param_bld_push_utf8_string(i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 1000)
  %36 = call i32 @TEST_true(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0
  %40 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0
  %41 = call i32 @ossl_param_bld_to_param_ex(i32* %5, i32* null, i32 0, i8* %39, i32 10000, i8* %40, i32 500)
  %42 = call i32 @TEST_ptr_null(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %38
  %45 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %46 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0
  %47 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0
  %48 = call i32 @ossl_param_bld_to_param_ex(i32* %5, i32* %45, i32 2, i8* %46, i32 10000, i8* %47, i32 500)
  %49 = call i32 @TEST_ptr_null(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %53 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %54 = call i32 @OSSL_NELEM(i32* %53)
  %55 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0
  %56 = call i32 @ossl_param_bld_to_param_ex(i32* %5, i32* %52, i32 %54, i8* null, i32 0, i8* %55, i32 500)
  %57 = call i32 @TEST_ptr_null(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %61 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %62 = call i32 @OSSL_NELEM(i32* %61)
  %63 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0
  %64 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0
  %65 = call i32 @ossl_param_bld_to_param_ex(i32* %5, i32* %60, i32 %62, i8* %63, i32 50, i8* %64, i32 500)
  %66 = call i32 @TEST_ptr_null(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59, %51, %44, %38, %34, %29, %25, %21, %1
  br label %93

69:                                               ; preds = %59
  %70 = load i32, i32* %2, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %75 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %76 = call i32 @OSSL_NELEM(i32* %75)
  %77 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0
  %78 = call i32 @ossl_param_bld_to_param_ex(i32* %5, i32* %74, i32 %76, i8* %77, i32 10000, i8* null, i32 0)
  %79 = call i32 @TEST_ptr_null(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %83 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %84 = call i32 @OSSL_NELEM(i32* %83)
  %85 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0
  %86 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0
  %87 = call i32 @ossl_param_bld_to_param_ex(i32* %5, i32* %82, i32 %84, i8* %85, i32 10000, i8* %86, i32 4)
  %88 = call i32 @TEST_ptr_null(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81, %73
  br label %93

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %69
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %90, %68
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @BN_free(i32* %94)
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @ossl_param_bld_init(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @ossl_param_bld_push_uint(i32*, i8*, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_secure_new(...) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @ossl_param_bld_push_BN(i32*, i8*, i32*) #1

declare dso_local i32 @ossl_param_bld_push_utf8_string(i32*, i8*, i8*, i32) #1

declare dso_local i32 @TEST_ptr_null(i32) #1

declare dso_local i32 @ossl_param_bld_to_param_ex(i32*, i32*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @OSSL_NELEM(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
