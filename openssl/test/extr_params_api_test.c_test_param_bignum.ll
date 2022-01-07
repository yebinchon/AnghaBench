; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_bignum.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_bignum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i8*, i64, i64 }

@MAX_LEN = common dso_local global i32 0, align 4
@raw_values = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"bn\00", align 1
@OSSL_PARAM_UNSIGNED_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_param_bignum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_param_bignum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @MAX_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @MAX_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @raw_values, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %24 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  call void @OSSL_PARAM_DEFN(%struct.TYPE_6__* sret %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24, i32* null, i32 0)
  store i32 0, i32* %10, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %17, i8** %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @raw_values, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @le_copy(i8* %14, i32 %33, i64 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @raw_values, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32* @BN_lebin2bn(i32 %41, i32 %43, i32* null)
  store i32* %44, i32** %7, align 8
  %45 = call i32 @TEST_ptr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %1
  br label %75

48:                                               ; preds = %1
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @OSSL_PARAM_set_BN(%struct.TYPE_6__* %9, i32* %49)
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @TEST_mem_eq(i8* %17, i64 %55, i8* %14, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53, %48
  br label %75

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = call i32 @OSSL_PARAM_get_BN(%struct.TYPE_6__* %9, i32** %8)
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @TEST_BN_eq(i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68, %61
  br label %75

74:                                               ; preds = %68
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %73, %60, %47
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @BN_free(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @BN_free(i32* %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %81)
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local void @OSSL_PARAM_DEFN(%struct.TYPE_6__* sret, i8*, i32, i32*, i32) #2

declare dso_local i32 @le_copy(i8*, i32, i64) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @BN_lebin2bn(i32, i32, i32*) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @OSSL_PARAM_set_BN(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @TEST_mem_eq(i8*, i64, i8*, i64) #2

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.TYPE_6__*, i32**) #2

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #2

declare dso_local i32 @BN_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
