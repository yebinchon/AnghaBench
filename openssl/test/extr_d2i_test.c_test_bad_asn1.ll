; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_d2i_test.c_test_bad_asn1.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_d2i_test.c_test_bad_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@expected_error = common dso_local global i64 0, align 8
@ASN1_BIO = common dso_local global i64 0, align 8
@item_type = common dso_local global i32 0, align 4
@ASN1_DECODE = common dso_local global i32 0, align 4
@ASN1_ENCODE = common dso_local global i32 0, align 4
@ASN1_COMPARE = common dso_local global i32 0, align 4
@ASN1_OK = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bad_asn1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bad_asn1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  store i8* %10, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load i32, i32* @test_file, align 4
  %12 = call i32* @BIO_new_file(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @TEST_ptr(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %111

17:                                               ; preds = %0
  %18 = load i64, i64* @expected_error, align 8
  %19 = load i64, i64* @ASN1_BIO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @item_type, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @ASN1_item_d2i_bio(i32 %22, i32* %23, i32* null)
  %25 = call i64 @TEST_ptr_null(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %21
  br label %90

29:                                               ; preds = %17
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %32 = call i32 @BIO_read(i32* %30, i8* %31, i32 2048)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @TEST_int_ge(i32 %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %90

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @item_type, align 4
  %40 = call i32* @ASN1_item_d2i(i32* null, i8** %6, i32 %38, i32 %39)
  store i32* %40, i32** %3, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i64, i64* @expected_error, align 8
  %45 = load i32, i32* @ASN1_DECODE, align 4
  %46 = call i64 @TEST_int_eq(i64 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %90

50:                                               ; preds = %37
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @item_type, align 4
  %53 = call i32 @ASN1_item_i2d(i32* %51, i8** %7, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56, %50
  %60 = load i64, i64* @expected_error, align 8
  %61 = load i32, i32* @ASN1_ENCODE, align 4
  %62 = call i64 @TEST_int_eq(i64 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %59
  br label %90

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @memcmp(i8* %71, i8* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70, %66
  %77 = load i64, i64* @expected_error, align 8
  %78 = load i32, i32* @ASN1_COMPARE, align 4
  %79 = call i64 @TEST_int_eq(i64 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %76
  br label %90

83:                                               ; preds = %70
  %84 = load i64, i64* @expected_error, align 8
  %85 = load i32, i32* @ASN1_OK, align 4
  %86 = call i64 @TEST_int_eq(i64 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %90

90:                                               ; preds = %89, %82, %65, %49, %36, %28
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = call i32 (...) @ERR_peek_error()
  %95 = call i64 @ERR_GET_REASON(i32 %94)
  %96 = load i64, i64* @ERR_R_MALLOC_FAILURE, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @TEST_false(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %93, %90
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @BIO_free(i32* %103)
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @OPENSSL_free(i8* %105)
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* @item_type, align 4
  %109 = call i32 @ASN1_item_free(i32* %107, i32 %108)
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %102, %16
  %112 = load i32, i32* %1, align 4
  ret i32 %112
}

declare dso_local i32* @BIO_new_file(i32, i8*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i64 @TEST_ptr_null(i32) #1

declare dso_local i32 @ASN1_item_d2i_bio(i32, i32*, i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @TEST_int_ge(i32, i32) #1

declare dso_local i32* @ASN1_item_d2i(i32*, i8**, i32, i32) #1

declare dso_local i64 @TEST_int_eq(i64, i32) #1

declare dso_local i32 @ASN1_item_i2d(i32*, i8**, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i64 @ERR_GET_REASON(i32) #1

declare dso_local i32 @ERR_peek_error(...) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_item_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
