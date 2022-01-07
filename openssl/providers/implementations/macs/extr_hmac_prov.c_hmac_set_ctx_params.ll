; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_hmac_prov.c_hmac_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_hmac_prov.c_hmac_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.hmac_data_st = type { i32, i32, i32 }

@OSSL_MAC_PARAM_FLAGS = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @hmac_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_set_ctx_params(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.hmac_data_st*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.hmac_data_st*
  store %struct.hmac_data_st* %11, %struct.hmac_data_st** %6, align 8
  %12 = load %struct.hmac_data_st*, %struct.hmac_data_st** %6, align 8
  %13 = getelementptr inbounds %struct.hmac_data_st, %struct.hmac_data_st* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load %struct.hmac_data_st*, %struct.hmac_data_st** %6, align 8
  %17 = getelementptr inbounds %struct.hmac_data_st, %struct.hmac_data_st* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @ossl_prov_digest_load_from_params(i32* %17, %struct.TYPE_7__* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = load i32, i32* @OSSL_MAC_PARAM_FLAGS, align 4
  %26 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %24, i32 %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %8, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = call i32 @OSSL_PARAM_get_int(%struct.TYPE_7__* %29, i32* %9)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %72

33:                                               ; preds = %28
  %34 = load %struct.hmac_data_st*, %struct.hmac_data_st** %6, align 8
  %35 = getelementptr inbounds %struct.hmac_data_st, %struct.hmac_data_st* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @HMAC_CTX_set_flags(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %23
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %42 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %40, i32 %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %8, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %71

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %72

51:                                               ; preds = %44
  %52 = load %struct.hmac_data_st*, %struct.hmac_data_st** %6, align 8
  %53 = getelementptr inbounds %struct.hmac_data_st, %struct.hmac_data_st* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hmac_data_st*, %struct.hmac_data_st** %6, align 8
  %62 = getelementptr inbounds %struct.hmac_data_st, %struct.hmac_data_st* %61, i32 0, i32 0
  %63 = call i32 @ossl_prov_digest_md(i32* %62)
  %64 = call i32 @HMAC_Init_ex(i32 %54, i32 %57, i32 %60, i32 %63, i32* null)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %72

67:                                               ; preds = %51
  %68 = load %struct.hmac_data_st*, %struct.hmac_data_st** %6, align 8
  %69 = getelementptr inbounds %struct.hmac_data_st, %struct.hmac_data_st* %68, i32 0, i32 0
  %70 = call i32 @ossl_prov_digest_reset(i32* %69)
  br label %71

71:                                               ; preds = %67, %39
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %66, %50, %32, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_digest_load_from_params(i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_int(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @HMAC_CTX_set_flags(i32, i32) #1

declare dso_local i32 @HMAC_Init_ex(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ossl_prov_digest_md(i32*) #1

declare dso_local i32 @ossl_prov_digest_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
