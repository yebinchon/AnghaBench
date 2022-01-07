; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bad_dtls_test.c_send_record.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bad_dtls_test.c_send_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@send_record.epoch = internal global [2 x i8] c"\00\01", align 1
@send_record.seq = internal global [6 x i8] zeroinitializer, align 1
@send_record.ver = internal global [2 x i8] c"\01\00", align 1
@SHA_DIGEST_LENGTH = common dso_local global i64 0, align 8
@mac_key = common dso_local global i32 0, align 4
@enc_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8, i32, i8*, i64)* @send_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_record(i32* %0, i8 zeroext %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x i8], align 1
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [16 x i8], align 16
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 40
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 0), align 1
  %22 = load i32, i32* %9, align 4
  %23 = ashr i32 %22, 32
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 1), align 1
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 2), align 1
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 3), align 1
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 4), align 1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 5), align 1
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @SHA_DIGEST_LENGTH, align 8
  %43 = add i64 %41, %42
  %44 = urem i64 %43, 16
  %45 = sub i64 15, %44
  %46 = trunc i64 %45 to i8
  store i8 %46, i8* %16, align 1
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @SHA_DIGEST_LENGTH, align 8
  %49 = add i64 %47, %48
  %50 = add i64 %49, 1
  %51 = load i8, i8* %16, align 1
  %52 = zext i8 %51 to i64
  %53 = add i64 %50, %52
  %54 = call i8* @OPENSSL_malloc(i64 %53)
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %155

58:                                               ; preds = %5
  %59 = load i8*, i8** %17, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  %63 = call i32* (...) @HMAC_CTX_new()
  store i32* %63, i32** %13, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @mac_key, align 4
  %66 = call i32 (...) @EVP_sha1()
  %67 = call i32 @HMAC_Init_ex(i32* %64, i32 %65, i32 20, i32 %66, i32* null)
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @HMAC_Update(i32* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @send_record.epoch, i64 0, i64 0), i64 2)
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @HMAC_Update(i32* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 0), i64 6)
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @HMAC_Update(i32* %72, i8* %8, i64 1)
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @HMAC_Update(i32* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @send_record.ver, i64 0, i64 0), i64 2)
  %76 = load i64, i64* %11, align 8
  %77 = lshr i64 %76, 8
  %78 = trunc i64 %77 to i8
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %78, i8* %79, align 1
  %80 = load i64, i64* %11, align 8
  %81 = trunc i64 %80 to i8
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %81, i8* %82, align 1
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %85 = call i32 @HMAC_Update(i32* %83, i8* %84, i64 2)
  %86 = load i32*, i32** %13, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @HMAC_Update(i32* %86, i8* %87, i64 %88)
  %90 = load i32*, i32** %13, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = call i32 @HMAC_Final(i32* %90, i8* %93, i32* null)
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @HMAC_CTX_free(i32* %95)
  %97 = load i64, i64* @SHA_DIGEST_LENGTH, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %11, align 8
  br label %100

100:                                              ; preds = %106, %58
  %101 = load i8, i8* %16, align 1
  %102 = load i8*, i8** %17, align 8
  %103 = load i64, i64* %11, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %11, align 8
  %105 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 %101, i8* %105, align 1
  br label %106

106:                                              ; preds = %100
  %107 = load i64, i64* %11, align 8
  %108 = urem i64 %107, 16
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %100, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %112 = call i32 @RAND_bytes(i8* %111, i32 16)
  %113 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %113, i32** %14, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 (...) @EVP_aes_128_cbc()
  %116 = load i32, i32* @enc_key, align 4
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %118 = call i32 @EVP_CipherInit_ex(i32* %114, i32 %115, i32* null, i32 %116, i8* %117, i32 1)
  %119 = load i32*, i32** %14, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @EVP_Cipher(i32* %119, i8* %120, i8* %121, i64 %122)
  %124 = load i32*, i32** %14, align 8
  %125 = call i32 @EVP_CIPHER_CTX_free(i32* %124)
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @BIO_write(i32* %126, i8* %8, i64 1)
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @BIO_write(i32* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @send_record.ver, i64 0, i64 0), i64 2)
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @BIO_write(i32* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @send_record.epoch, i64 0, i64 0), i64 2)
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @BIO_write(i32* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 0), i64 6)
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, 16
  %136 = lshr i64 %135, 8
  %137 = trunc i64 %136 to i8
  %138 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %137, i8* %138, align 1
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, 16
  %141 = trunc i64 %140 to i8
  %142 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %141, i8* %142, align 1
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %145 = call i32 @BIO_write(i32* %143, i8* %144, i64 2)
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %148 = call i32 @BIO_write(i32* %146, i8* %147, i64 16)
  %149 = load i32*, i32** %7, align 8
  %150 = load i8*, i8** %17, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @BIO_write(i32* %149, i8* %150, i64 %151)
  %153 = load i8*, i8** %17, align 8
  %154 = call i32 @OPENSSL_free(i8* %153)
  store i32 1, i32* %6, align 4
  br label %155

155:                                              ; preds = %110, %57
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32* @HMAC_CTX_new(...) #1

declare dso_local i32 @HMAC_Init_ex(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @EVP_sha1(...) #1

declare dso_local i32 @HMAC_Update(i32*, i8*, i64) #1

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #1

declare dso_local i32 @HMAC_CTX_free(i32*) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @EVP_aes_128_cbc(...) #1

declare dso_local i32 @EVP_Cipher(i32*, i8*, i8*, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
