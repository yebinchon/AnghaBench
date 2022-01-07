; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_e_des3.c_des_ede3_wrap.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_e_des3.c_des_ede3_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@wrap_iv = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_ede3_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_ede3_wrap(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %20, 16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %74

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @memmove(i8* %25, i8* %26, i64 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @SHA1(i8* %29, i64 %30, i8* %16)
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 8
  %36 = call i32 @memcpy(i8* %35, i8* %16, i32 8)
  %37 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %38 = call i32 @OPENSSL_cleanse(i8* %16, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i8* @EVP_CIPHER_CTX_iv_noconst(i32* %39)
  %41 = call i64 @RAND_bytes(i8* %40, i32 8)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %74

44:                                               ; preds = %23
  %45 = load i8*, i8** %7, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i8* @EVP_CIPHER_CTX_iv_noconst(i32* %46)
  %48 = call i32 @memcpy(i8* %45, i8* %47, i32 8)
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 8
  %56 = call i32 @des_ede_cbc_cipher(i32* %49, i8* %51, i8* %53, i64 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 16
  %60 = call i32 @BUF_reverse(i8* %57, i32* null, i64 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i8* @EVP_CIPHER_CTX_iv_noconst(i32* %61)
  %63 = load i8*, i8** @wrap_iv, align 8
  %64 = call i32 @memcpy(i8* %62, i8* %63, i32 8)
  %65 = load i32*, i32** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 16
  %70 = call i32 @des_ede_cbc_cipher(i32* %65, i8* %66, i8* %67, i64 %69)
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 16
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %44, %43, %19
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @SHA1(i8*, i64, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i64 @RAND_bytes(i8*, i32) #2

declare dso_local i8* @EVP_CIPHER_CTX_iv_noconst(i32*) #2

declare dso_local i32 @des_ede_cbc_cipher(i32*, i8*, i8*, i64) #2

declare dso_local i32 @BUF_reverse(i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
