; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_mutl.c_PKCS12_set_mac.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_mutl.c_PKCS12_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@PKCS12_ERROR = common dso_local global i64 0, align 8
@PKCS12_F_PKCS12_SET_MAC = common dso_local global i32 0, align 4
@PKCS12_R_MAC_SETUP_ERROR = common dso_local global i32 0, align 4
@PKCS12_key_gen_utf8 = common dso_local global i32 0, align 4
@PKCS12_R_MAC_GENERATION_ERROR = common dso_local global i32 0, align 4
@PKCS12_R_MAC_STRING_SET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS12_set_mac(%struct.TYPE_7__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %7
  %28 = call i32* (...) @EVP_sha1()
  store i32* %28, i32** %15, align 8
  br label %29

29:                                               ; preds = %27, %7
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32*, i32** %15, align 8
  %35 = call i64 @PKCS12_setup_mac(%struct.TYPE_7__* %30, i32 %31, i8* %32, i32 %33, i32* %34)
  %36 = load i64, i64* @PKCS12_ERROR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @PKCS12_F_PKCS12_SET_MAC, align 4
  %40 = load i32, i32* @PKCS12_R_MAC_SETUP_ERROR, align 4
  %41 = call i32 @PKCS12err(i32 %39, i32 %40)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %69

42:                                               ; preds = %29
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @PKCS12_key_gen_utf8, align 4
  %47 = call i32 @pkcs12_gen_mac(%struct.TYPE_7__* %43, i8* %44, i32 %45, i8* %24, i32* %18, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @PKCS12_F_PKCS12_SET_MAC, align 4
  %51 = load i32, i32* @PKCS12_R_MAC_GENERATION_ERROR, align 4
  %52 = call i32 @PKCS12err(i32 %50, i32 %51)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %69

53:                                               ; preds = %42
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @X509_SIG_getm(i32 %58, i32* null, i32** %19)
  %60 = load i32*, i32** %19, align 8
  %61 = load i32, i32* %18, align 4
  %62 = call i32 @ASN1_OCTET_STRING_set(i32* %60, i8* %24, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* @PKCS12_F_PKCS12_SET_MAC, align 4
  %66 = load i32, i32* @PKCS12_R_MAC_STRING_SET_ERROR, align 4
  %67 = call i32 @PKCS12err(i32 %65, i32 %66)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %69

68:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %69

69:                                               ; preds = %68, %64, %49, %38
  %70 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_sha1(...) #2

declare dso_local i64 @PKCS12_setup_mac(%struct.TYPE_7__*, i32, i8*, i32, i32*) #2

declare dso_local i32 @PKCS12err(i32, i32) #2

declare dso_local i32 @pkcs12_gen_mac(%struct.TYPE_7__*, i8*, i32, i8*, i32*, i32) #2

declare dso_local i32 @X509_SIG_getm(i32, i32*, i32**) #2

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
