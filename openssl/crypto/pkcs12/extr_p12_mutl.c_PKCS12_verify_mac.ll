; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_mutl.c_PKCS12_verify_mac.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_mutl.c_PKCS12_verify_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@PKCS12_F_PKCS12_VERIFY_MAC = common dso_local global i32 0, align 4
@PKCS12_R_MAC_ABSENT = common dso_local global i32 0, align 4
@PKCS12_key_gen_utf8 = common dso_local global i32 0, align 4
@PKCS12_R_MAC_GENERATION_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS12_verify_mac(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @PKCS12_F_PKCS12_VERIFY_MAC, align 4
  %23 = load i32, i32* @PKCS12_R_MAC_ABSENT, align 4
  %24 = call i32 @PKCS12err(i32 %22, i32 %23)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PKCS12_key_gen_utf8, align 4
  %30 = call i32 @pkcs12_gen_mac(%struct.TYPE_6__* %26, i8* %27, i32 %28, i8* %16, i32* %10, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @PKCS12_F_PKCS12_VERIFY_MAC, align 4
  %34 = load i32, i32* @PKCS12_R_MAC_GENERATION_ERROR, align 4
  %35 = call i32 @PKCS12err(i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

36:                                               ; preds = %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @X509_SIG_get0(i32 %41, i32* null, i32** %11)
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i64 @ASN1_STRING_length(i32* %44)
  %46 = trunc i64 %45 to i32
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @ASN1_STRING_get0_data(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @CRYPTO_memcmp(i8* %16, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %36
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

55:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %54, %32, %21
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PKCS12err(i32, i32) #2

declare dso_local i32 @pkcs12_gen_mac(%struct.TYPE_6__*, i8*, i32, i8*, i32*, i32) #2

declare dso_local i32 @X509_SIG_get0(i32, i32*, i32**) #2

declare dso_local i64 @ASN1_STRING_length(i32*) #2

declare dso_local i64 @CRYPTO_memcmp(i8*, i32, i32) #2

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
