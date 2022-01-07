; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_kmac_prov.c_kmac_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_kmac_prov.c_kmac_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.kmac_data_st = type { i32, i32, i32, i32, i32, i32, i32 }

@OSSL_MAC_PARAM_XOF = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_SIZE = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@KMAC_MAX_KEY = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_CUSTOM = common dso_local global i32 0, align 4
@KMAC_MAX_CUSTOM = common dso_local global i32 0, align 4
@PROV_R_INVALID_CUSTOM_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @kmac_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmac_set_ctx_params(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.kmac_data_st*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.kmac_data_st*
  store %struct.kmac_data_st* %10, %struct.kmac_data_st** %6, align 8
  %11 = load %struct.kmac_data_st*, %struct.kmac_data_st** %6, align 8
  %12 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %11, i32 0, i32 6
  %13 = call i32* @ossl_prov_digest_md(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = load i32, i32* @OSSL_MAC_PARAM_XOF, align 4
  %16 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %14, i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %7, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.kmac_data_st*, %struct.kmac_data_st** %6, align 8
  %21 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %20, i32 0, i32 5
  %22 = call i32 @OSSL_PARAM_get_int(%struct.TYPE_7__* %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %107

25:                                               ; preds = %18, %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = load i32, i32* @OSSL_MAC_PARAM_SIZE, align 4
  %28 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %26, i32 %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %7, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = load %struct.kmac_data_st*, %struct.kmac_data_st** %6, align 8
  %33 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %32, i32 0, i32 4
  %34 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_7__* %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %107

37:                                               ; preds = %30, %25
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %40 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %38, i32 %39)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %7, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %75

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @KMAC_MAX_KEY, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47, %42
  %54 = load i32, i32* @ERR_LIB_PROV, align 4
  %55 = load i32, i32* @PROV_R_INVALID_KEY_LENGTH, align 4
  %56 = call i32 @ERR_raise(i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %107

57:                                               ; preds = %47
  %58 = load %struct.kmac_data_st*, %struct.kmac_data_st** %6, align 8
  %59 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.kmac_data_st*, %struct.kmac_data_st** %6, align 8
  %62 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @EVP_MD_block_size(i32* %69)
  %71 = call i32 @kmac_bytepad_encode_key(i32 %60, i32* %62, i32 %65, i32 %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %107

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %37
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = load i32, i32* @OSSL_MAC_PARAM_CUSTOM, align 4
  %78 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %76, i32 %77)
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %7, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %106

80:                                               ; preds = %75
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @KMAC_MAX_CUSTOM, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @ERR_LIB_PROV, align 4
  %88 = load i32, i32* @PROV_R_INVALID_CUSTOM_LENGTH, align 4
  %89 = call i32 @ERR_raise(i32 %87, i32 %88)
  store i32 0, i32* %3, align 4
  br label %107

90:                                               ; preds = %80
  %91 = load %struct.kmac_data_st*, %struct.kmac_data_st** %6, align 8
  %92 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.kmac_data_st*, %struct.kmac_data_st** %6, align 8
  %95 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @encode_string(i32 %93, i32* %95, i32 %98, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %107

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %75
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %104, %86, %73, %53, %36, %24
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32* @ossl_prov_digest_md(i32*) #1

declare dso_local %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_int(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @kmac_bytepad_encode_key(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @EVP_MD_block_size(i32*) #1

declare dso_local i32 @encode_string(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
