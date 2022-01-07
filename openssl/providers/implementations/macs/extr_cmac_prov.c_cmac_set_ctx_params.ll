; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_cmac_prov.c_cmac_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_cmac_prov.c_cmac_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.cmac_data_st = type { i32, i32, i32 }

@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @cmac_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmac_set_ctx_params(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.cmac_data_st*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.cmac_data_st*
  store %struct.cmac_data_st* %10, %struct.cmac_data_st** %6, align 8
  %11 = load %struct.cmac_data_st*, %struct.cmac_data_st** %6, align 8
  %12 = getelementptr inbounds %struct.cmac_data_st, %struct.cmac_data_st* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = load %struct.cmac_data_st*, %struct.cmac_data_st** %6, align 8
  %16 = getelementptr inbounds %struct.cmac_data_st, %struct.cmac_data_st* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @ossl_prov_cipher_load_from_params(i32* %16, %struct.TYPE_6__* %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %25 = call %struct.TYPE_6__* @OSSL_PARAM_locate_const(%struct.TYPE_6__* %23, i32 %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %8, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %58

34:                                               ; preds = %27
  %35 = load %struct.cmac_data_st*, %struct.cmac_data_st** %6, align 8
  %36 = getelementptr inbounds %struct.cmac_data_st, %struct.cmac_data_st* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cmac_data_st*, %struct.cmac_data_st** %6, align 8
  %45 = getelementptr inbounds %struct.cmac_data_st, %struct.cmac_data_st* %44, i32 0, i32 0
  %46 = call i32 @ossl_prov_cipher_cipher(i32* %45)
  %47 = load %struct.cmac_data_st*, %struct.cmac_data_st** %6, align 8
  %48 = getelementptr inbounds %struct.cmac_data_st, %struct.cmac_data_st* %47, i32 0, i32 0
  %49 = call i32 @ossl_prov_cipher_engine(i32* %48)
  %50 = call i32 @CMAC_Init(i32 %37, i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %58

53:                                               ; preds = %34
  %54 = load %struct.cmac_data_st*, %struct.cmac_data_st** %6, align 8
  %55 = getelementptr inbounds %struct.cmac_data_st, %struct.cmac_data_st* %54, i32 0, i32 0
  %56 = call i32 @ossl_prov_cipher_reset(i32* %55)
  br label %57

57:                                               ; preds = %53, %22
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %52, %33, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_cipher_load_from_params(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local %struct.TYPE_6__* @OSSL_PARAM_locate_const(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @CMAC_Init(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ossl_prov_cipher_cipher(i32*) #1

declare dso_local i32 @ossl_prov_cipher_engine(i32*) #1

declare dso_local i32 @ossl_prov_cipher_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
