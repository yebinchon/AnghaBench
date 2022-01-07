; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_test.c_api_get_params.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_test.c_api_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_st = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"p1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"p2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"p3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"p4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"p5\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"p6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @api_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_get_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.object_st*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.object_st*
  store %struct.object_st* %9, %struct.object_st** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @OSSL_PARAM_locate(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.object_st*, %struct.object_st** %6, align 8
  %16 = getelementptr inbounds %struct.object_st, %struct.object_st* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @OSSL_PARAM_set_int(i32* %14, i32 %17)
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %88

22:                                               ; preds = %13, %2
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @OSSL_PARAM_locate(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.object_st*, %struct.object_st** %6, align 8
  %29 = getelementptr inbounds %struct.object_st, %struct.object_st* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OSSL_PARAM_set_double(i32* %27, i32 %30)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %88

35:                                               ; preds = %26, %22
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @OSSL_PARAM_locate(i32* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %37, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.object_st*, %struct.object_st** %6, align 8
  %42 = getelementptr inbounds %struct.object_st, %struct.object_st* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @OSSL_PARAM_set_BN(i32* %40, i32 %43)
  %45 = call i32 @TEST_true(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %88

48:                                               ; preds = %39, %35
  %49 = load i32*, i32** %5, align 8
  %50 = call i32* @OSSL_PARAM_locate(i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %50, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.object_st*, %struct.object_st** %6, align 8
  %55 = getelementptr inbounds %struct.object_st, %struct.object_st* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @OSSL_PARAM_set_utf8_string(i32* %53, i32 %56)
  %58 = call i32 @TEST_true(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %88

61:                                               ; preds = %52, %48
  %62 = load i32*, i32** %5, align 8
  %63 = call i32* @OSSL_PARAM_locate(i32* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %63, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.object_st*, %struct.object_st** %6, align 8
  %68 = getelementptr inbounds %struct.object_st, %struct.object_st* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @OSSL_PARAM_set_utf8_string(i32* %66, i32 %69)
  %71 = call i32 @TEST_true(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %88

74:                                               ; preds = %65, %61
  %75 = load i32*, i32** %5, align 8
  %76 = call i32* @OSSL_PARAM_locate(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %76, i32** %7, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.object_st*, %struct.object_st** %6, align 8
  %81 = getelementptr inbounds %struct.object_st, %struct.object_st* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @OSSL_PARAM_set_utf8_ptr(i32* %79, i32 %82)
  %84 = call i32 @TEST_true(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %88

87:                                               ; preds = %78, %74
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86, %73, %60, %47, %34, %21
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32* @OSSL_PARAM_locate(i32*, i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @OSSL_PARAM_set_int(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_double(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_BN(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_utf8_string(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_utf8_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
