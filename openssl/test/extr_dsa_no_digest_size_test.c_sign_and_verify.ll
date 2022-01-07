; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_dsa_no_digest_size_test.c_sign_and_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_dsa_no_digest_size_test.c_sign_and_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsakey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to get signature length, len=%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to sign, len=%d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"EVP verify with unpadded length %d failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"EVP verify with length %d failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Verification with unpadded data failed, len=%d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"verify with length %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sign_and_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sign_and_verify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @dsakey, align 4
  %12 = call i32 @DSA_get0_q(i32 %11)
  %13 = call i32 @BN_num_bytes(i32 %12)
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = call i8* @OPENSSL_malloc(i64 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = call i8* @OPENSSL_malloc(i64 %18)
  store i8* %19, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @TEST_ptr(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @TEST_ptr(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @RAND_bytes(i8* %28, i32 %29)
  %31 = call i32 @TEST_int_eq(i32 %30, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %23, %1
  br label %154

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @memset(i8* %35, i32 0, i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @memcpy(i8* %42, i8* %43, i32 %44)
  br label %58

46:                                               ; preds = %34
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @memcpy(i8* %54, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %46, %41
  %59 = call i8* (...) @EVP_PKEY_new()
  store i8* %59, i8** %10, align 8
  %60 = call i32 @TEST_ptr(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %154

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* @dsakey, align 4
  %66 = call i32 @EVP_PKEY_set1_DSA(i8* %64, i32 %65)
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @EVP_PKEY_CTX_new(i8* %67, i32* null)
  store i8* %68, i8** %9, align 8
  %69 = call i32 @TEST_ptr(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %154

72:                                               ; preds = %63
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @EVP_PKEY_sign_init(i8* %73)
  %75 = call i32 @TEST_int_eq(i32 %74, i32 1)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %154

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @EVP_PKEY_sign(i8* %79, i8* null, i64* %3, i8* %80, i32 %81)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @TEST_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %154

87:                                               ; preds = %78
  %88 = load i64, i64* %3, align 8
  %89 = call i8* @OPENSSL_malloc(i64 %88)
  store i8* %89, i8** %8, align 8
  %90 = call i32 @TEST_ptr(i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %154

93:                                               ; preds = %87
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @EVP_PKEY_sign(i8* %94, i8* %95, i64* %3, i8* %96, i32 %97)
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @TEST_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %154

103:                                              ; preds = %93
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @EVP_PKEY_verify_init(i8* %104)
  %106 = call i32 @TEST_int_eq(i32 %105, i32 1)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %154

109:                                              ; preds = %103
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i64, i64* %3, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @EVP_PKEY_verify(i8* %110, i8* %111, i64 %112, i8* %113, i32 %114)
  %116 = icmp ne i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @TEST_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %154

120:                                              ; preds = %109
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i64, i64* %3, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @EVP_PKEY_verify(i8* %121, i8* %122, i64 %123, i8* %124, i32 %125)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* %2, align 4
  %130 = call i32 @TEST_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  br label %154

131:                                              ; preds = %120
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %2, align 4
  %134 = load i8*, i8** %8, align 8
  %135 = load i64, i64* %3, align 8
  %136 = load i32, i32* @dsakey, align 4
  %137 = call i32 @DSA_verify(i32 0, i8* %132, i32 %133, i8* %134, i64 %135, i32 %136)
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @TEST_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %154

142:                                              ; preds = %131
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i8*, i8** %8, align 8
  %146 = load i64, i64* %3, align 8
  %147 = load i32, i32* @dsakey, align 4
  %148 = call i32 @DSA_verify(i32 0, i8* %143, i32 %144, i8* %145, i64 %146, i32 %147)
  %149 = icmp ne i32 %148, 1
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* %2, align 4
  %152 = call i32 @TEST_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %151)
  br label %154

153:                                              ; preds = %142
  store i32 1, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %150, %139, %128, %117, %108, %100, %92, %84, %77, %71, %62, %33
  %155 = load i8*, i8** %9, align 8
  %156 = call i32 @EVP_PKEY_CTX_free(i8* %155)
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @EVP_PKEY_free(i8* %157)
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 @OPENSSL_free(i8* %159)
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 @OPENSSL_free(i8* %161)
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 @OPENSSL_free(i8* %163)
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @BN_num_bytes(i32) #1

declare dso_local i32 @DSA_get0_q(i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_DSA(i8*, i32) #1

declare dso_local i8* @EVP_PKEY_CTX_new(i8*, i32*) #1

declare dso_local i32 @EVP_PKEY_sign_init(i8*) #1

declare dso_local i32 @EVP_PKEY_sign(i8*, i8*, i64*, i8*, i32) #1

declare dso_local i32 @TEST_error(i8*, i32) #1

declare dso_local i32 @EVP_PKEY_verify_init(i8*) #1

declare dso_local i32 @EVP_PKEY_verify(i8*, i8*, i64, i8*, i32) #1

declare dso_local i32 @DSA_verify(i32, i8*, i32, i8*, i64, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i8*) #1

declare dso_local i32 @EVP_PKEY_free(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
