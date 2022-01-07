; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_tls13encryptiontest.c_test_tls13_encryption.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_tls13encryptiontest.c_test_tls13_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i8*, i32, i32 }

@SSL3_RT_APPLICATION_DATA = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed creating SSL_CTX\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed creating SSL\00", align 1
@TLS13_AES_128_GCM_SHA256_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to find cipher\00", align 1
@refdata = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed loading key into EVP_CIPHER_CTX\00", align 1
@SEQ_NUM_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed loading key into EVP_CIPHER_CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to encrypt record %zu\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Record %zu encryption test failed\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to decrypt record %zu\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Record %zu decryption test failed\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"PASS: %zu records tested\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_tls13_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tls13_encryption() #0 {
  %1 = alloca %struct.TYPE_21__*, align 8
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %1, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = call i32* (...) @EVP_aes_128_gcm()
  store i32* %11, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  store i8* null, i8** %12, align 8
  %13 = load i32, i32* @SSL3_RT_APPLICATION_DATA, align 4
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @TLS1_2_VERSION, align 4
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = call i32 (...) @TLS_method()
  %18 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %17)
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %1, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %20 = call i32 @TEST_ptr(%struct.TYPE_21__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %0
  %23 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %181

24:                                               ; preds = %0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %26 = call %struct.TYPE_21__* @SSL_new(%struct.TYPE_21__* %25)
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %2, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = call i32 @TEST_ptr(%struct.TYPE_21__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %181

32:                                               ; preds = %24
  %33 = call i8* (...) @EVP_CIPHER_CTX_new()
  %34 = bitcast i8* %33 to %struct.TYPE_21__*
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %36, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %40 = call i32 @TEST_ptr(%struct.TYPE_21__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %181

43:                                               ; preds = %32
  %44 = call i8* (...) @EVP_CIPHER_CTX_new()
  %45 = bitcast i8* %44 to %struct.TYPE_21__*
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = call i32 @TEST_ptr(%struct.TYPE_21__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %181

54:                                               ; preds = %43
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %56 = load i32, i32* @TLS13_AES_128_GCM_SHA256_BYTES, align 4
  %57 = call %struct.TYPE_21__* @SSL_CIPHER_find(%struct.TYPE_21__* %55, i32 %56)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = call i32 @TEST_ptr(%struct.TYPE_21__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %54
  %70 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %181

71:                                               ; preds = %54
  store i64 0, i64* %10, align 8
  br label %72

72:                                               ; preds = %175, %71
  %73 = load i64, i64* %10, align 8
  %74 = load i32*, i32** @refdata, align 8
  %75 = call i64 @OSSL_NELEM(i32* %74)
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %77, label %178

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @EVP_CIPHER_iv_length(i32* %78)
  store i64 %79, i64* %9, align 8
  %80 = load i32*, i32** @refdata, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 4
  %89 = call i32 @RECORD_LAYER_get_read_sequence(i32* %88)
  %90 = call i32 @load_record(%struct.TYPE_22__* %3, i32* %82, i8** %4, i32 %85, i64 %86, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %77
  %93 = call i32 @TEST_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %181

94:                                               ; preds = %77
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 4
  %97 = call i32 @RECORD_LAYER_get_write_sequence(i32* %96)
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 4
  %100 = call i32 @RECORD_LAYER_get_read_sequence(i32* %99)
  %101 = load i64, i64* @SEQ_NUM_SIZE, align 8
  %102 = call i32 @memcpy(i32 %97, i32 %100, i64 %101)
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @memcpy(i32 %105, i32 %108, i64 %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = call i64 @EVP_CipherInit_ex(%struct.TYPE_21__* %113, i32* %114, i32* null, i8* %115, i32* null, i32 1)
  %117 = icmp sle i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %94
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = call i64 @EVP_CipherInit_ex(%struct.TYPE_21__* %121, i32* %122, i32* null, i8* %123, i32* null, i32 0)
  %125 = icmp sle i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118, %94
  %127 = call i32 @TEST_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %181

128:                                              ; preds = %118
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %130 = call i32 @tls13_enc(%struct.TYPE_21__* %129, %struct.TYPE_22__* %3, i32 1, i32 1)
  %131 = call i32 @TEST_size_t_eq(i32 %130, i32 1)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = load i64, i64* %10, align 8
  %135 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %134)
  br label %181

136:                                              ; preds = %128
  %137 = load i32*, i32** @refdata, align 8
  %138 = load i64, i64* %10, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = call i32 @test_record(%struct.TYPE_22__* %3, i32* %139, i32 1)
  %141 = call i32 @TEST_true(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %136
  %144 = load i64, i64* %10, align 8
  %145 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %144)
  br label %181

146:                                              ; preds = %136
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %148 = call i32 @tls13_enc(%struct.TYPE_21__* %147, %struct.TYPE_22__* %3, i32 1, i32 0)
  %149 = call i32 @TEST_int_eq(i32 %148, i32 1)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i64, i64* %10, align 8
  %153 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %152)
  br label %181

154:                                              ; preds = %146
  %155 = load i32*, i32** @refdata, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = call i32 @test_record(%struct.TYPE_22__* %3, i32* %157, i32 0)
  %159 = call i32 @TEST_true(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  %162 = load i64, i64* %10, align 8
  %163 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %162)
  br label %181

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @OPENSSL_free(i8* %166)
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 @OPENSSL_free(i8* %168)
  %170 = load i8*, i8** %5, align 8
  %171 = call i32 @OPENSSL_free(i8* %170)
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @OPENSSL_free(i8* %172)
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  store i8* null, i8** %174, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %175

175:                                              ; preds = %164
  %176 = load i64, i64* %10, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %10, align 8
  br label %72

178:                                              ; preds = %72
  %179 = load i64, i64* %10, align 8
  %180 = call i32 @TEST_note(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i64 %179)
  store i32 1, i32* %8, align 4
  br label %181

181:                                              ; preds = %178, %161, %151, %143, %133, %126, %92, %69, %53, %42, %30, %22
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @OPENSSL_free(i8* %183)
  %185 = load i8*, i8** %4, align 8
  %186 = call i32 @OPENSSL_free(i8* %185)
  %187 = load i8*, i8** %5, align 8
  %188 = call i32 @OPENSSL_free(i8* %187)
  %189 = load i8*, i8** %6, align 8
  %190 = call i32 @OPENSSL_free(i8* %189)
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %192 = call i32 @SSL_free(%struct.TYPE_21__* %191)
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %194 = call i32 @SSL_CTX_free(%struct.TYPE_21__* %193)
  %195 = load i32, i32* %8, align 4
  ret i32 %195
}

declare dso_local i32* @EVP_aes_128_gcm(...) #1

declare dso_local %struct.TYPE_21__* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_method(...) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_21__*) #1

declare dso_local i32 @TEST_info(i8*, ...) #1

declare dso_local %struct.TYPE_21__* @SSL_new(%struct.TYPE_21__*) #1

declare dso_local i8* @EVP_CIPHER_CTX_new(...) #1

declare dso_local %struct.TYPE_21__* @SSL_CIPHER_find(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @OSSL_NELEM(i32*) #1

declare dso_local i64 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local i32 @load_record(%struct.TYPE_22__*, i32*, i8**, i32, i64, i32) #1

declare dso_local i32 @RECORD_LAYER_get_read_sequence(i32*) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @RECORD_LAYER_get_write_sequence(i32*) #1

declare dso_local i64 @EVP_CipherInit_ex(%struct.TYPE_21__*, i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @TEST_size_t_eq(i32, i32) #1

declare dso_local i32 @tls13_enc(%struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @test_record(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @TEST_note(i8*, i64) #1

declare dso_local i32 @SSL_free(%struct.TYPE_21__*) #1

declare dso_local i32 @SSL_CTX_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
