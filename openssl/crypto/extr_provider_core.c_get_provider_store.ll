; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_get_provider_store.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_get_provider_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.provider_store_st = type { i32 }

@OPENSSL_CTX_PROVIDER_STORE_INDEX = common dso_local global i32 0, align 4
@provider_store_method = common dso_local global i32 0, align 4
@CRYPTO_F_GET_PROVIDER_STORE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.provider_store_st* (i32*)* @get_provider_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.provider_store_st* @get_provider_store(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.provider_store_st*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.provider_store_st* null, %struct.provider_store_st** %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @OPENSSL_CTX_PROVIDER_STORE_INDEX, align 4
  %6 = call %struct.provider_store_st* @openssl_ctx_get_data(i32* %4, i32 %5, i32* @provider_store_method)
  store %struct.provider_store_st* %6, %struct.provider_store_st** %3, align 8
  %7 = load %struct.provider_store_st*, %struct.provider_store_st** %3, align 8
  %8 = icmp eq %struct.provider_store_st* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @CRYPTO_F_GET_PROVIDER_STORE, align 4
  %11 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %12 = call i32 @CRYPTOerr(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.provider_store_st*, %struct.provider_store_st** %3, align 8
  ret %struct.provider_store_st* %14
}

declare dso_local %struct.provider_store_st* @openssl_ctx_get_data(i32*, i32, i32*) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
