; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sm2_internal_test.c_test_sm2_crypt.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sm2_internal_test.c_test_sm2_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fake_rand_bytes_offset = common dso_local global i32 0, align 4
@fake_rand_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*, i8*, i8*)* @test_sm2_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_sm2_crypt(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i8* @OPENSSL_hexstr2buf(i8* %26, i32* null)
  store i8* %27, i8** %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @TEST_ptr(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %6
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @BN_hex2bn(i32** %14, i8* %33)
  %35 = call i32 @TEST_true(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %6
  br label %159

38:                                               ; preds = %32
  %39 = call i8* (...) @EC_KEY_new()
  store i8* %39, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = call i32 @TEST_ptr(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i8*, i8** %15, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @EC_KEY_set_group(i8* %44, i32* %45)
  %47 = call i32 @TEST_true(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8*, i8** %15, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @EC_KEY_set_private_key(i8* %50, i32* %51)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49, %43, %38
  br label %159

56:                                               ; preds = %49
  %57 = load i32*, i32** %7, align 8
  %58 = call i8* @EC_POINT_new(i32* %57)
  store i8* %58, i8** %16, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @TEST_ptr(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @EC_POINT_mul(i32* %63, i8* %64, i32* %65, i32* null, i32* null, i32* null)
  %67 = call i32 @TEST_true(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %62
  %70 = load i8*, i8** %15, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @EC_KEY_set_public_key(i8* %70, i8* %71)
  %73 = call i32 @TEST_true(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i8*, i8** %15, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @sm2_ciphertext_size(i8* %76, i32* %77, i64 %78, i64* %18)
  %80 = call i32 @TEST_true(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75, %69, %62, %56
  br label %159

83:                                               ; preds = %75
  %84 = load i64, i64* %18, align 8
  %85 = call i8* @OPENSSL_zalloc(i64 %84)
  store i8* %85, i8** %20, align 8
  %86 = load i8*, i8** %20, align 8
  %87 = call i32 @TEST_ptr(i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %159

90:                                               ; preds = %83
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @start_fake_rand(i8* %91)
  %93 = load i8*, i8** %15, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i8*, i8** %20, align 8
  %98 = call i32 @sm2_encrypt(i8* %93, i32* %94, i8* %95, i64 %96, i8* %97, i64* %18)
  %99 = call i32 @TEST_true(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load i32, i32* @fake_rand_bytes_offset, align 4
  %103 = load i32, i32* @fake_rand_size, align 4
  %104 = call i32 @TEST_size_t_eq(i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101, %90
  %107 = call i32 (...) @restore_rand()
  br label %159

108:                                              ; preds = %101
  %109 = call i32 (...) @restore_rand()
  %110 = load i8*, i8** %20, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = load i64, i64* %18, align 8
  %114 = call i32 (i8*, i64, ...) @TEST_mem_eq(i8* %110, i64 %111, i8* %112, i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %159

117:                                              ; preds = %108
  %118 = load i8*, i8** %15, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i64, i64* %18, align 8
  %121 = call i32 @sm2_plaintext_size(i8* %118, i32* %119, i64 %120, i64* %19)
  %122 = call i32 @TEST_true(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @TEST_int_eq(i64 %125, i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124, %117
  br label %159

130:                                              ; preds = %124
  %131 = load i64, i64* %19, align 8
  %132 = call i8* @OPENSSL_zalloc(i64 %131)
  store i8* %132, i8** %21, align 8
  %133 = load i8*, i8** %21, align 8
  %134 = call i32 @TEST_ptr(i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %130
  %137 = load i8*, i8** %15, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = load i64, i64* %18, align 8
  %141 = load i8*, i8** %21, align 8
  %142 = call i32 @sm2_decrypt(i8* %137, i32* %138, i8* %139, i64 %140, i8* %141, i64* %22)
  %143 = call i32 @TEST_true(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %136
  %146 = load i64, i64* %22, align 8
  %147 = load i64, i64* %13, align 8
  %148 = call i32 @TEST_int_eq(i64 %146, i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i8*, i8** %21, align 8
  %152 = load i64, i64* %22, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i32 (i8*, i64, ...) @TEST_mem_eq(i8* %151, i64 %152, i8* %153, i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %150, %145, %136, %130
  br label %159

158:                                              ; preds = %150
  store i32 1, i32* %23, align 4
  br label %159

159:                                              ; preds = %158, %157, %129, %116, %106, %89, %82, %55, %37
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 @BN_free(i32* %160)
  %162 = load i8*, i8** %16, align 8
  %163 = call i32 @EC_POINT_free(i8* %162)
  %164 = load i8*, i8** %20, align 8
  %165 = call i32 @OPENSSL_free(i8* %164)
  %166 = load i8*, i8** %21, align 8
  %167 = call i32 @OPENSSL_free(i8* %166)
  %168 = load i8*, i8** %17, align 8
  %169 = call i32 @OPENSSL_free(i8* %168)
  %170 = load i8*, i8** %15, align 8
  %171 = call i32 @EC_KEY_free(i8* %170)
  %172 = load i32, i32* %23, align 4
  ret i32 %172
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i32*) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i8* @EC_KEY_new(...) #1

declare dso_local i32 @EC_KEY_set_group(i8*, i32*) #1

declare dso_local i32 @EC_KEY_set_private_key(i8*, i32*) #1

declare dso_local i8* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_KEY_set_public_key(i8*, i8*) #1

declare dso_local i32 @sm2_ciphertext_size(i8*, i32*, i64, i64*) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @start_fake_rand(i8*) #1

declare dso_local i32 @sm2_encrypt(i8*, i32*, i8*, i64, i8*, i64*) #1

declare dso_local i32 @TEST_size_t_eq(i32, i32) #1

declare dso_local i32 @restore_rand(...) #1

declare dso_local i32 @TEST_mem_eq(i8*, i64, ...) #1

declare dso_local i32 @sm2_plaintext_size(i8*, i32*, i64, i64*) #1

declare dso_local i32 @TEST_int_eq(i64, i64) #1

declare dso_local i32 @sm2_decrypt(i8*, i32*, i8*, i64, i8*, i64*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EC_KEY_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
