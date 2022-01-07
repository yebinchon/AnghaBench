; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_not_expected.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_not_expected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG1 = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_REJECTED = common dso_local global i32 0, align 4
@MSG2 = common dso_local global i32 0, align 4
@clientpsk = common dso_local global i32* null, align 8
@serverpsk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_early_data_not_expected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_early_data_not_expected(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @setupearly_data_test(i32** %3, i32** %4, i32** %5, i32** %6, i32** %8, i32 %12)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %85

17:                                               ; preds = %1
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @MSG1, align 4
  %20 = load i32, i32* @MSG1, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = call i32 @SSL_write_early_data(i32* %18, i32 %19, i32 %21, i64* %11)
  %23 = call i32 @TEST_true(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %85

26:                                               ; preds = %17
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @SSL_accept(i32* %27)
  %29 = call i32 @TEST_int_le(i32 %28, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @SSL_connect(i32* %32)
  %34 = call i32 @TEST_int_gt(i32 %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @SSL_get_early_data_status(i32* %37)
  %39 = load i32, i32* @SSL_EARLY_DATA_REJECTED, align 4
  %40 = call i32 @TEST_int_eq(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @SSL_accept(i32* %43)
  %45 = call i32 @TEST_int_gt(i32 %44, i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @SSL_get_early_data_status(i32* %48)
  %50 = load i32, i32* @SSL_EARLY_DATA_REJECTED, align 4
  %51 = call i32 @TEST_int_eq(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47, %42, %36, %31, %26
  br label %85

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @MSG2, align 4
  %57 = load i32, i32* @MSG2, align 4
  %58 = call i32 @strlen(i32 %57)
  %59 = call i32 @SSL_write_ex(i32* %55, i32 %56, i32 %58, i64* %11)
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* @MSG2, align 4
  %65 = call i32 @strlen(i32 %64)
  %66 = call i32 @TEST_size_t_eq(i64 %63, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62, %54
  br label %85

69:                                               ; preds = %62
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %72 = call i32 @SSL_read_ex(i32* %70, i8* %71, i32 20, i64* %10)
  %73 = call i32 @TEST_true(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* @MSG2, align 4
  %79 = load i32, i32* @MSG2, align 4
  %80 = call i32 @strlen(i32 %79)
  %81 = call i32 @TEST_mem_eq(i8* %76, i64 %77, i32 %78, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75, %69
  br label %85

84:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %83, %68, %53, %25, %16
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @SSL_SESSION_free(i32* %86)
  %88 = load i32*, i32** @clientpsk, align 8
  %89 = call i32 @SSL_SESSION_free(i32* %88)
  %90 = load i32*, i32** @serverpsk, align 8
  %91 = call i32 @SSL_SESSION_free(i32* %90)
  store i32* null, i32** @serverpsk, align 8
  store i32* null, i32** @clientpsk, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @SSL_free(i32* %92)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @SSL_free(i32* %94)
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @SSL_CTX_free(i32* %96)
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @SSL_CTX_free(i32* %98)
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @setupearly_data_test(i32**, i32**, i32**, i32**, i32**, i32) #1

declare dso_local i32 @SSL_write_early_data(i32*, i32, i32, i64*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i32 @SSL_accept(i32*) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @SSL_connect(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_get_early_data_status(i32*) #1

declare dso_local i32 @SSL_write_ex(i32*, i32, i32, i64*) #1

declare dso_local i32 @TEST_size_t_eq(i64, i32) #1

declare dso_local i32 @SSL_read_ex(i32*, i8*, i32, i64*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i64, i32, i32) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
