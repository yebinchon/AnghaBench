; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"md\00", align 1
@OSSL_MAC_PARAM_DIGEST = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"digestsize\00", align 1
@OSSL_MAC_PARAM_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_mac_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_mac_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x %struct.TYPE_7__], align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_8__* @EVP_PKEY_CTX_get_data(i32* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @EVP_MAC_CTX_mac(i32 %17)
  store i32* %18, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i8*, i8** @OSSL_MAC_PARAM_DIGEST, align 8
  store i8* %23, i8** %6, align 8
  br label %31

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** @OSSL_MAC_PARAM_SIZE, align 8
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %22
  %32 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @EVP_MAC_settable_ctx_params(i32* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %38, 1
  %40 = call i32 @OSSL_PARAM_allocate_from_text(%struct.TYPE_7__* %32, i32 %34, i8* %35, i8* %36, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %59

43:                                               ; preds = %31
  %44 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %10, i64 0, i64 1
  %45 = call i32 (...) @OSSL_PARAM_construct_end()
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = bitcast %struct.TYPE_7__* %44 to i8*
  %48 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %53 = call i32 @EVP_MAC_CTX_set_params(i32 %51, %struct.TYPE_7__* %52)
  store i32 %53, i32* %11, align 4
  %54 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @OPENSSL_free(i32 %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %43, %42
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_8__* @EVP_PKEY_CTX_get_data(i32*) #1

declare dso_local i32* @EVP_MAC_CTX_mac(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OSSL_PARAM_allocate_from_text(%struct.TYPE_7__*, i32, i8*, i8*, i64) #1

declare dso_local i32 @EVP_MAC_settable_ctx_params(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EVP_MAC_CTX_set_params(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @OPENSSL_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
