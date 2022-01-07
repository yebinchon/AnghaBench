; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_final_finish_mac.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_final_finish_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NID_md5_sha1 = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_FINAL_FINISH_MAC = common dso_local global i32 0, align 4
@SSL_R_NO_REQUIRED_DIGEST = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ssl3_final_finish_mac(%struct.TYPE_7__* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [3 x i32], align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = call i32 @ssl3_digest_cached_records(%struct.TYPE_7__* %13, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %103

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @EVP_MD_CTX_type(i32 %21)
  %23 = load i64, i64* @NID_md5_sha1, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %28 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %29 = load i32, i32* @SSL_R_NO_REQUIRED_DIGEST, align 4
  %30 = call i32 @SSLfatal(%struct.TYPE_7__* %26, i32 %27, i32 %28, i32 %29)
  store i64 0, i64* %5, align 8
  br label %103

31:                                               ; preds = %17
  %32 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %38 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %39 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %40 = call i32 @SSLfatal(%struct.TYPE_7__* %36, i32 %37, i32 %38, i32 %39)
  store i64 0, i64* %5, align 8
  br label %103

41:                                               ; preds = %31
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @EVP_MD_CTX_copy_ex(i32* %42, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %52 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %53 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %54 = call i32 @SSLfatal(%struct.TYPE_7__* %50, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %10, align 4
  br label %98

55:                                               ; preds = %41
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @EVP_MD_CTX_size(i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %63 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %64 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %65 = call i32 @SSLfatal(%struct.TYPE_7__* %61, i32 %62, i32 %63, i32 %64)
  store i32 0, i32* %10, align 4
  br label %98

66:                                               ; preds = %55
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %74 = call i32 @ssl3_digest_master_key_set_params(i32 %72, i32* %73)
  %75 = load i32*, i32** %11, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @EVP_DigestUpdate(i32* %75, i8* %76, i64 %77)
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %69
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %83 = call i64 @EVP_MD_CTX_set_params(i32* %81, i32* %82)
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32*, i32** %11, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i64 @EVP_DigestFinal_ex(i32* %86, i8* %87, i32* null)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85, %80, %69
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %93 = load i32, i32* @SSL_F_SSL3_FINAL_FINISH_MAC, align 4
  %94 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %95 = call i32 @SSLfatal(%struct.TYPE_7__* %91, i32 %92, i32 %93, i32 %94)
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %90, %85
  br label %97

97:                                               ; preds = %96, %66
  br label %98

98:                                               ; preds = %97, %60, %49
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @EVP_MD_CTX_free(i32* %99)
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %98, %35, %25, %16
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @EVP_MD_CTX_type(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32*, i32) #1

declare dso_local i32 @EVP_MD_CTX_size(i32*) #1

declare dso_local i32 @ssl3_digest_master_key_set_params(i32, i32*) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i64 @EVP_MD_CTX_set_params(i32*, i32*) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
