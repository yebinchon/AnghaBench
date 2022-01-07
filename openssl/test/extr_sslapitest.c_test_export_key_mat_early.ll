; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_export_key_mat_early.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_export_key_mat_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_export_key_mat_early.label = internal constant [11 x i8] c"test label\00", align 1
@test_export_key_mat_early.context = internal constant [8 x i8] c"context\00", align 1
@SSL_READ_EARLY_DATA_ERROR = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i32 0, align 4
@clientpsk = common dso_local global i32* null, align 8
@serverpsk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_export_key_mat_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_export_key_mat_early(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [80 x i8], align 16
  %11 = alloca [80 x i8], align 16
  %12 = alloca [80 x i8], align 16
  %13 = alloca [80 x i8], align 16
  %14 = alloca [1 x i8], align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @setupearly_data_test(i32** %4, i32** %5, i32** %6, i32** %7, i32** %8, i32 %17)
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %84

22:                                               ; preds = %1
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @SSL_write_early_data(i32* %23, i32* null, i32 0, i64* %16)
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds [1 x i8], [1 x i8]* %14, i64 0, i64 0
  %30 = call i32 @SSL_read_early_data(i32* %28, i8* %29, i32 1, i64* %15)
  %31 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  %32 = call i32 @TEST_int_eq(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @SSL_get_early_data_status(i32* %35)
  %37 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %38 = call i32 @TEST_int_eq(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %27, %22
  br label %84

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %44 = call i32 @SSL_export_keying_material_early(i32* %42, i8* %43, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_export_key_mat_early.label, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_export_key_mat_early.context, i64 0, i64 0), i32 7)
  %45 = call i32 @TEST_int_eq(i32 %44, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @SSL_export_keying_material_early(i32* %48, i8* %49, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_export_key_mat_early.label, i64 0, i64 0), i32 10, i8* %50, i32 0)
  %52 = call i32 @TEST_int_eq(i32 %51, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %47
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %57 = call i32 @SSL_export_keying_material_early(i32* %55, i8* %56, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_export_key_mat_early.label, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_export_key_mat_early.context, i64 0, i64 0), i32 7)
  %58 = call i32 @TEST_int_eq(i32 %57, i32 1)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @SSL_export_keying_material_early(i32* %61, i8* %62, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_export_key_mat_early.label, i64 0, i64 0), i32 10, i8* %63, i32 0)
  %65 = call i32 @TEST_int_eq(i32 %64, i32 1)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %60
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %70 = call i32 @TEST_mem_eq(i8* %68, i32 80, i8* %69, i32 80)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %74 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %75 = call i32 @TEST_mem_eq(i8* %73, i32 80, i8* %74, i32 80)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %79 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %80 = call i32 @TEST_mem_ne(i8* %78, i32 80, i8* %79, i32 80)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %72, %67, %60, %54, %47, %41
  br label %84

83:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %82, %40, %21
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @SSL_SESSION_free(i32* %85)
  %87 = load i32*, i32** @clientpsk, align 8
  %88 = call i32 @SSL_SESSION_free(i32* %87)
  %89 = load i32*, i32** @serverpsk, align 8
  %90 = call i32 @SSL_SESSION_free(i32* %89)
  store i32* null, i32** @serverpsk, align 8
  store i32* null, i32** @clientpsk, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @SSL_free(i32* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @SSL_free(i32* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @SSL_CTX_free(i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @SSL_CTX_free(i32* %97)
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @setupearly_data_test(i32**, i32**, i32**, i32**, i32**, i32) #1

declare dso_local i32 @SSL_write_early_data(i32*, i32*, i32, i64*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_read_early_data(i32*, i8*, i32, i64*) #1

declare dso_local i32 @SSL_get_early_data_status(i32*) #1

declare dso_local i32 @SSL_export_keying_material_early(i32*, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @TEST_mem_ne(i8*, i32, i8*, i32) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
