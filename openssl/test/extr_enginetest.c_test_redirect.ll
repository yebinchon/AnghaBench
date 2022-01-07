; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_enginetest.c_test_redirect.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_enginetest.c_test_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_redirect.pt = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@.str = private unnamed_addr constant [38 x i8] c"EVP_PKEY_encrypt test: no redirection\00", align 1
@called_encrypt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Test redirect engine\00", align 1
@EVP_PKEY_RSA = common dso_local global i32 0, align 4
@test_rsa = common dso_local global i8* null, align 8
@test_pkey_meths = common dso_local global i32 0, align 4
@test_encrypt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_encrypt test: redirection via EVP_PKEY_CTX_new()\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"EVP_PKEY_encrypt test: redirection via EVP_PKEY_set1_engine()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_redirect() #0 {
  %1 = alloca [13 x i8], align 1
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast [13 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.test_redirect.pt, i32 0, i32 0), i64 13, i1 false)
  store i8* null, i8** %2, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i8* (...) @get_test_pkey()
  store i8* %9, i8** %6, align 8
  %10 = call i32 @TEST_ptr(i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %184

13:                                               ; preds = %0
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @EVP_PKEY_size(i8* %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i8* @OPENSSL_malloc(i64 %16)
  store i8* %17, i8** %2, align 8
  %18 = call i32 @TEST_ptr(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %184

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @EVP_PKEY_CTX_new(i8* %22, i8* null)
  store i8* %23, i8** %4, align 8
  %24 = call i32 @TEST_ptr(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %184

27:                                               ; preds = %21
  %28 = call i32 @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @EVP_PKEY_encrypt_init(i8* %29)
  %31 = call i32 @TEST_int_gt(i64 %30, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %37 = call i64 @EVP_PKEY_encrypt(i8* %34, i8* %35, i64* %3, i8* %36, i32 13)
  %38 = call i32 @TEST_int_gt(i64 %37, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i64, i64* @called_encrypt, align 8
  %42 = call i32 @TEST_false(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %33, %27
  br label %184

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @EVP_PKEY_CTX_free(i8* %46)
  store i8* null, i8** %4, align 8
  %48 = call i8* (...) @ENGINE_new()
  store i8* %48, i8** %5, align 8
  %49 = call i32 @TEST_ptr(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @ENGINE_set_id(i8* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @TEST_true(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @ENGINE_set_name(i8* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 @TEST_true(i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56, %51, %45
  br label %184

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i8* @EVP_PKEY_CTX_new(i8* %63, i8* %64)
  store i8* %65, i8** %4, align 8
  %66 = call i32 @TEST_ptr_null(i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @EVP_PKEY_set1_engine(i8* %69, i8* %70)
  %72 = call i32 @TEST_int_le(i64 %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %62
  br label %184

75:                                               ; preds = %68
  %76 = load i32, i32* @EVP_PKEY_RSA, align 4
  %77 = call i8* @EVP_PKEY_meth_new(i32 %76, i32 0)
  store i8* %77, i8** @test_rsa, align 8
  %78 = call i32 @TEST_ptr(i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %184

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* @test_pkey_meths, align 4
  %84 = call i32 @ENGINE_set_pkey_meths(i8* %82, i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i8* @EVP_PKEY_CTX_new(i8* %85, i8* %86)
  store i8* %87, i8** %4, align 8
  %88 = call i32 @TEST_ptr(i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %184

91:                                               ; preds = %81
  %92 = load i8*, i8** %4, align 8
  %93 = call i64 @EVP_PKEY_encrypt_init(i8* %92)
  %94 = call i32 @TEST_int_le(i64 %93, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %184

97:                                               ; preds = %91
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @EVP_PKEY_CTX_free(i8* %98)
  store i8* null, i8** %4, align 8
  %100 = load i8*, i8** @test_rsa, align 8
  %101 = load i32, i32* @test_encrypt, align 4
  %102 = call i32 @EVP_PKEY_meth_set_encrypt(i8* %100, i32 0, i32 %101)
  %103 = call i32 @TEST_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i8* @EVP_PKEY_CTX_new(i8* %104, i8* %105)
  store i8* %106, i8** %4, align 8
  %107 = call i32 @TEST_ptr(i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %97
  br label %184

110:                                              ; preds = %97
  %111 = load i8*, i8** %4, align 8
  %112 = call i64 @EVP_PKEY_encrypt_init(i8* %111)
  %113 = call i32 @TEST_int_gt(i64 %112, i32 0)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load i8*, i8** %4, align 8
  %117 = load i8*, i8** %2, align 8
  %118 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %119 = call i64 @EVP_PKEY_encrypt(i8* %116, i8* %117, i64* %3, i8* %118, i32 13)
  %120 = call i32 @TEST_int_gt(i64 %119, i32 0)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i64, i64* @called_encrypt, align 8
  %124 = call i32 @TEST_true(i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122, %115, %110
  br label %184

127:                                              ; preds = %122
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @EVP_PKEY_CTX_free(i8* %128)
  store i8* null, i8** %4, align 8
  store i64 0, i64* @called_encrypt, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = call i8* @EVP_PKEY_CTX_new(i8* %130, i8* null)
  store i8* %131, i8** %4, align 8
  %132 = call i32 @TEST_ptr(i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %127
  %135 = load i8*, i8** %4, align 8
  %136 = call i64 @EVP_PKEY_encrypt_init(i8* %135)
  %137 = call i32 @TEST_int_gt(i64 %136, i32 0)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = load i8*, i8** %4, align 8
  %141 = load i8*, i8** %2, align 8
  %142 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %143 = call i64 @EVP_PKEY_encrypt(i8* %140, i8* %141, i64* %3, i8* %142, i32 13)
  %144 = call i32 @TEST_int_gt(i64 %143, i32 0)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i64, i64* @called_encrypt, align 8
  %148 = call i32 @TEST_false(i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146, %139, %134, %127
  br label %184

151:                                              ; preds = %146
  %152 = load i8*, i8** %4, align 8
  %153 = call i32 @EVP_PKEY_CTX_free(i8* %152)
  store i8* null, i8** %4, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = call i64 @EVP_PKEY_set1_engine(i8* %154, i8* %155)
  %157 = call i32 @TEST_true(i64 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %151
  br label %184

160:                                              ; preds = %151
  %161 = call i32 @TEST_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %162 = load i8*, i8** %6, align 8
  %163 = call i8* @EVP_PKEY_CTX_new(i8* %162, i8* null)
  store i8* %163, i8** %4, align 8
  %164 = call i32 @TEST_ptr(i8* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %160
  %167 = load i8*, i8** %4, align 8
  %168 = call i64 @EVP_PKEY_encrypt_init(i8* %167)
  %169 = call i32 @TEST_int_gt(i64 %168, i32 0)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %166
  %172 = load i8*, i8** %4, align 8
  %173 = load i8*, i8** %2, align 8
  %174 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %175 = call i64 @EVP_PKEY_encrypt(i8* %172, i8* %173, i64* %3, i8* %174, i32 13)
  %176 = call i32 @TEST_int_gt(i64 %175, i32 0)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load i64, i64* @called_encrypt, align 8
  %180 = call i32 @TEST_true(i64 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178, %171, %166, %160
  br label %184

183:                                              ; preds = %178
  store i32 1, i32* %7, align 4
  br label %184

184:                                              ; preds = %183, %182, %159, %150, %126, %109, %96, %90, %80, %74, %61, %44, %26, %20, %12
  %185 = load i8*, i8** %4, align 8
  %186 = call i32 @EVP_PKEY_CTX_free(i8* %185)
  %187 = load i8*, i8** %6, align 8
  %188 = call i32 @EVP_PKEY_free(i8* %187)
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 @ENGINE_free(i8* %189)
  %191 = load i8*, i8** %2, align 8
  %192 = call i32 @OPENSSL_free(i8* %191)
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i8*) #2

declare dso_local i8* @get_test_pkey(...) #2

declare dso_local i64 @EVP_PKEY_size(i8*) #2

declare dso_local i8* @OPENSSL_malloc(i64) #2

declare dso_local i8* @EVP_PKEY_CTX_new(i8*, i8*) #2

declare dso_local i32 @TEST_info(i8*) #2

declare dso_local i32 @TEST_int_gt(i64, i32) #2

declare dso_local i64 @EVP_PKEY_encrypt_init(i8*) #2

declare dso_local i64 @EVP_PKEY_encrypt(i8*, i8*, i64*, i8*, i32) #2

declare dso_local i32 @TEST_false(i64) #2

declare dso_local i32 @EVP_PKEY_CTX_free(i8*) #2

declare dso_local i8* @ENGINE_new(...) #2

declare dso_local i32 @TEST_true(i64) #2

declare dso_local i64 @ENGINE_set_id(i8*, i8*) #2

declare dso_local i64 @ENGINE_set_name(i8*, i8*) #2

declare dso_local i32 @TEST_ptr_null(i8*) #2

declare dso_local i32 @TEST_int_le(i64, i32) #2

declare dso_local i64 @EVP_PKEY_set1_engine(i8*, i8*) #2

declare dso_local i8* @EVP_PKEY_meth_new(i32, i32) #2

declare dso_local i32 @ENGINE_set_pkey_meths(i8*, i32) #2

declare dso_local i32 @EVP_PKEY_meth_set_encrypt(i8*, i32, i32) #2

declare dso_local i32 @EVP_PKEY_free(i8*) #2

declare dso_local i32 @ENGINE_free(i8*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
