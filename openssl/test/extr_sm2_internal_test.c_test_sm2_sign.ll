; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sm2_internal_test.c_test_sm2_sign.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sm2_internal_test.c_test_sm2_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fake_rand_bytes_offset = common dso_local global i32 0, align 4
@fake_rand_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i8*, i8*, i8*)* @test_sm2_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_sm2_sign(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @BN_hex2bn(i32** %17, i8* %27)
  %29 = call i32 @TEST_true(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %7
  br label %131

32:                                               ; preds = %7
  %33 = call i32* (...) @EC_KEY_new()
  store i32* %33, i32** %19, align 8
  %34 = load i32*, i32** %19, align 8
  %35 = call i32 @TEST_ptr(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32*, i32** %19, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @EC_KEY_set_group(i32* %38, i32* %39)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32*, i32** %19, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @EC_KEY_set_private_key(i32* %44, i32* %45)
  %47 = call i32 @TEST_true(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %37, %32
  br label %131

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @EC_POINT_new(i32* %51)
  store i32* %52, i32** %18, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = call i32 @TEST_ptr(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %18, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @EC_POINT_mul(i32* %57, i32* %58, i32* %59, i32* null, i32* null, i32* null)
  %61 = call i32 @TEST_true(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32*, i32** %19, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 @EC_KEY_set_public_key(i32* %64, i32* %65)
  %67 = call i32 @TEST_true(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63, %56, %50
  br label %131

70:                                               ; preds = %63
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @start_fake_rand(i8* %71)
  %73 = load i32*, i32** %19, align 8
  %74 = call i32 (...) @EVP_sm3()
  %75 = load i8*, i8** %9, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = load i8*, i8** %11, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = load i64, i64* %15, align 8
  %82 = call i32* @sm2_do_sign(i32* %73, i32 %74, i32* %76, i64 %78, i32* %80, i64 %81)
  store i32* %82, i32** %20, align 8
  %83 = load i32*, i32** %20, align 8
  %84 = call i32 @TEST_ptr(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %70
  %87 = load i32, i32* @fake_rand_bytes_offset, align 4
  %88 = load i32, i32* @fake_rand_size, align 4
  %89 = call i32 @TEST_size_t_eq(i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86, %70
  %92 = call i32 (...) @restore_rand()
  br label %131

93:                                               ; preds = %86
  %94 = call i32 (...) @restore_rand()
  %95 = load i32*, i32** %20, align 8
  %96 = call i32 @ECDSA_SIG_get0(i32* %95, i32** %21, i32** %22)
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @BN_hex2bn(i32** %23, i8* %97)
  %99 = call i32 @TEST_true(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %93
  %102 = load i8*, i8** %14, align 8
  %103 = call i32 @BN_hex2bn(i32** %24, i8* %102)
  %104 = call i32 @TEST_true(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load i32*, i32** %23, align 8
  %108 = load i32*, i32** %21, align 8
  %109 = call i32 @TEST_BN_eq(i32* %107, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32*, i32** %24, align 8
  %113 = load i32*, i32** %22, align 8
  %114 = call i32 @TEST_BN_eq(i32* %112, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111, %106, %101, %93
  br label %131

117:                                              ; preds = %111
  %118 = load i32*, i32** %19, align 8
  %119 = call i32 (...) @EVP_sm3()
  %120 = load i32*, i32** %20, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load i8*, i8** %9, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = load i8*, i8** %11, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = load i64, i64* %15, align 8
  %128 = call i32 @sm2_do_verify(i32* %118, i32 %119, i32* %120, i32* %122, i64 %124, i32* %126, i64 %127)
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @TEST_true(i32 %129)
  br label %131

131:                                              ; preds = %117, %116, %91, %69, %49, %31
  %132 = load i32*, i32** %20, align 8
  %133 = call i32 @ECDSA_SIG_free(i32* %132)
  %134 = load i32*, i32** %18, align 8
  %135 = call i32 @EC_POINT_free(i32* %134)
  %136 = load i32*, i32** %19, align 8
  %137 = call i32 @EC_KEY_free(i32* %136)
  %138 = load i32*, i32** %17, align 8
  %139 = call i32 @BN_free(i32* %138)
  %140 = load i32*, i32** %23, align 8
  %141 = call i32 @BN_free(i32* %140)
  %142 = load i32*, i32** %24, align 8
  %143 = call i32 @BN_free(i32* %142)
  %144 = load i32, i32* %16, align 4
  ret i32 %144
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32* @EC_KEY_new(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @EC_KEY_set_group(i32*, i32*) #1

declare dso_local i32 @EC_KEY_set_private_key(i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_KEY_set_public_key(i32*, i32*) #1

declare dso_local i32 @start_fake_rand(i8*) #1

declare dso_local i32* @sm2_do_sign(i32*, i32, i32*, i64, i32*, i64) #1

declare dso_local i32 @EVP_sm3(...) #1

declare dso_local i32 @TEST_size_t_eq(i32, i32) #1

declare dso_local i32 @restore_rand(...) #1

declare dso_local i32 @ECDSA_SIG_get0(i32*, i32**, i32**) #1

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #1

declare dso_local i32 @sm2_do_verify(i32*, i32, i32*, i32*, i64, i32*, i64) #1

declare dso_local i32 @ECDSA_SIG_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
