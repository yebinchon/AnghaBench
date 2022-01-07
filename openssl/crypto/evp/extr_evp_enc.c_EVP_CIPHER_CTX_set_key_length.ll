; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_CIPHER_CTX_set_key_length.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_CIPHER_CTX_set_key_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@OSSL_PARAM_END = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@EVP_CTRL_RET_UNSUPPORTED = common dso_local global i32 0, align 4
@EVP_CIPH_CUSTOM_KEY_LENGTH = common dso_local global i32 0, align 4
@EVP_CTRL_SET_KEY_LENGTH = common dso_local global i32 0, align 4
@EVP_CIPH_VARIABLE_LENGTH = common dso_local global i32 0, align 4
@EVP_F_EVP_CIPHER_CTX_SET_KEY_LENGTH = common dso_local global i32 0, align 4
@EVP_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_CIPHER_CTX_set_key_length(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %16 = call i32 @OSSL_PARAM_construct_size_t(i32 %15, i64* %8)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = call i32 @evp_do_ciph_ctx_setparams(%struct.TYPE_7__* %20, i32 %23, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EVP_CTRL_RET_UNSUPPORTED, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EVP_CIPH_CUSTOM_KEY_LENGTH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = load i32, i32* @EVP_CTRL_SET_KEY_LENGTH, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.TYPE_6__* %41, i32 %42, i32 %43, i32* null)
  store i32 %44, i32* %3, align 4
  br label %71

45:                                               ; preds = %31
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = call i32 @EVP_CIPHER_CTX_key_length(%struct.TYPE_6__* %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %71

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EVP_CIPH_VARIABLE_LENGTH, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  store i32 1, i32* %3, align 4
  br label %71

67:                                               ; preds = %54, %51
  %68 = load i32, i32* @EVP_F_EVP_CIPHER_CTX_SET_KEY_LENGTH, align 4
  %69 = load i32, i32* @EVP_R_INVALID_KEY_LENGTH, align 4
  %70 = call i32 @EVPerr(i32 %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %63, %50, %40, %29
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @OSSL_PARAM_construct_size_t(i32, i64*) #1

declare dso_local i32 @evp_do_ciph_ctx_setparams(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_key_length(%struct.TYPE_6__*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
