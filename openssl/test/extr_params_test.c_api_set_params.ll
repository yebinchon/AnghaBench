; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_test.c_api_set_params.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_test.c_api_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_st = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"p1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"p2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"p3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"p4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"p5\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"p6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @api_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_set_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.object_st*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.object_st*
  store %struct.object_st* %10, %struct.object_st** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @OSSL_PARAM_locate_const(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.object_st*, %struct.object_st** %6, align 8
  %17 = getelementptr inbounds %struct.object_st, %struct.object_st* %16, i32 0, i32 7
  %18 = call i32 @OSSL_PARAM_get_int(i32* %15, i32* %17)
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %107

22:                                               ; preds = %14, %2
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @OSSL_PARAM_locate_const(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.object_st*, %struct.object_st** %6, align 8
  %29 = getelementptr inbounds %struct.object_st, %struct.object_st* %28, i32 0, i32 6
  %30 = call i32 @OSSL_PARAM_get_double(i32* %27, i32* %29)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %107

34:                                               ; preds = %26, %22
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @OSSL_PARAM_locate_const(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.object_st*, %struct.object_st** %6, align 8
  %41 = getelementptr inbounds %struct.object_st, %struct.object_st* %40, i32 0, i32 5
  %42 = call i32 @OSSL_PARAM_get_BN(i32* %39, i32* %41)
  %43 = call i32 @TEST_true(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %107

46:                                               ; preds = %38, %34
  %47 = load i32*, i32** %5, align 8
  %48 = call i32* @OSSL_PARAM_locate_const(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %48, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.object_st*, %struct.object_st** %6, align 8
  %52 = getelementptr inbounds %struct.object_st, %struct.object_st* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @OPENSSL_free(i8* %53)
  %55 = load %struct.object_st*, %struct.object_st** %6, align 8
  %56 = getelementptr inbounds %struct.object_st, %struct.object_st* %55, i32 0, i32 0
  store i8* null, i8** %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.object_st*, %struct.object_st** %6, align 8
  %59 = getelementptr inbounds %struct.object_st, %struct.object_st* %58, i32 0, i32 0
  %60 = call i32 @OSSL_PARAM_get_utf8_string(i32* %57, i8** %59, i32 0)
  %61 = call i32 @TEST_true(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %107

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i32*, i32** %5, align 8
  %67 = call i32* @OSSL_PARAM_locate_const(i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %67, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.object_st*, %struct.object_st** %6, align 8
  %71 = getelementptr inbounds %struct.object_st, %struct.object_st* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @OSSL_PARAM_get_utf8_string(i32* %73, i8** %8, i32 8)
  %75 = call i32 @TEST_true(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %107

78:                                               ; preds = %69
  %79 = load %struct.object_st*, %struct.object_st** %6, align 8
  %80 = getelementptr inbounds %struct.object_st, %struct.object_st* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strlen(i8* %81)
  %83 = getelementptr i8, i8* %82, i64 1
  %84 = load %struct.object_st*, %struct.object_st** %6, align 8
  %85 = getelementptr inbounds %struct.object_st, %struct.object_st* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %78, %65
  %87 = load i32*, i32** %5, align 8
  %88 = call i32* @OSSL_PARAM_locate_const(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %88, i32** %7, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.object_st*, %struct.object_st** %6, align 8
  %93 = getelementptr inbounds %struct.object_st, %struct.object_st* %92, i32 0, i32 2
  %94 = call i32 @OSSL_PARAM_get_utf8_ptr(i32* %91, i8** %93)
  %95 = call i32 @TEST_true(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %107

98:                                               ; preds = %90
  %99 = load %struct.object_st*, %struct.object_st** %6, align 8
  %100 = getelementptr inbounds %struct.object_st, %struct.object_st* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @strlen(i8* %101)
  %103 = getelementptr i8, i8* %102, i64 1
  %104 = load %struct.object_st*, %struct.object_st** %6, align 8
  %105 = getelementptr inbounds %struct.object_st, %struct.object_st* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %98, %86
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %97, %77, %63, %45, %33, %21
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @OSSL_PARAM_get_int(i32*, i32*) #1

declare dso_local i32 @OSSL_PARAM_get_double(i32*, i32*) #1

declare dso_local i32 @OSSL_PARAM_get_BN(i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OSSL_PARAM_get_utf8_string(i32*, i8**, i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @OSSL_PARAM_get_utf8_ptr(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
