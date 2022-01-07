; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_e_des3.c_des_ede3_unwrap.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_e_des3.c_des_ede3_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@wrap_iv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_ede3_unwrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_ede3_unwrap(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca [8 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i32 -1, i32* %14, align 4
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %20, 24
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %120

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 16
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %120

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = call i8* @EVP_CIPHER_CTX_iv_noconst(i32* %31)
  %33 = load i32, i32* @wrap_iv, align 4
  %34 = call i32 @memcpy(i8* %32, i32 %33, i32 8)
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @des_ede_cbc_cipher(i32* %35, i8* %36, i8* %37, i32 8)
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, 8
  %48 = call i32 @memmove(i8* %43, i8* %45, i64 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -8
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %42, %30
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %56, 16
  %58 = trunc i64 %57 to i32
  %59 = call i32 @des_ede_cbc_cipher(i32* %52, i8* %53, i8* %55, i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 -8
  %66 = call i32 @des_ede_cbc_cipher(i32* %60, i8* %61, i8* %65, i32 8)
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %68 = call i32 @BUF_reverse(i8* %67, i8* null, i32 8)
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub i64 %70, 16
  %72 = trunc i64 %71 to i32
  %73 = call i32 @BUF_reverse(i8* %69, i8* null, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i8* @EVP_CIPHER_CTX_iv_noconst(i32* %74)
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %77 = call i32 @BUF_reverse(i8* %75, i8* %76, i32 8)
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = sub i64 %81, 16
  %83 = trunc i64 %82 to i32
  %84 = call i32 @des_ede_cbc_cipher(i32* %78, i8* %79, i8* %80, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %88 = call i32 @des_ede_cbc_cipher(i32* %85, i8* %86, i8* %87, i32 8)
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* %9, align 8
  %91 = sub i64 %90, 16
  %92 = call i32 @SHA1(i8* %89, i64 %91, i8* %19)
  %93 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %94 = call i32 @CRYPTO_memcmp(i8* %19, i8* %93, i32 8)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %51
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %97, 16
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %96, %51
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %102 = call i32 @OPENSSL_cleanse(i8* %101, i64 8)
  %103 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %104 = sext i32 %103 to i64
  %105 = call i32 @OPENSSL_cleanse(i8* %19, i64 %104)
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %107 = call i32 @OPENSSL_cleanse(i8* %106, i64 8)
  %108 = load i32*, i32** %6, align 8
  %109 = call i8* @EVP_CIPHER_CTX_iv_noconst(i32* %108)
  %110 = call i32 @OPENSSL_cleanse(i8* %109, i64 8)
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load i8*, i8** %7, align 8
  %115 = load i64, i64* %9, align 8
  %116 = sub i64 %115, 16
  %117 = call i32 @OPENSSL_cleanse(i8* %114, i64 %116)
  br label %118

118:                                              ; preds = %113, %100
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %120

120:                                              ; preds = %118, %26, %22
  %121 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i8* @EVP_CIPHER_CTX_iv_noconst(i32*) #2

declare dso_local i32 @des_ede_cbc_cipher(i32*, i8*, i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @BUF_reverse(i8*, i8*, i32) #2

declare dso_local i32 @SHA1(i8*, i64, i8*) #2

declare dso_local i32 @CRYPTO_memcmp(i8*, i8*, i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
