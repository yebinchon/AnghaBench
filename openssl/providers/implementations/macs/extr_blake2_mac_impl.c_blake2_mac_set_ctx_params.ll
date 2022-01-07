; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_blake2_mac_impl.c_blake2_mac_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_blake2_mac_impl.c_blake2_mac_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.blake2_mac_data_st = type { i32, i8* }

@OSSL_MAC_PARAM_SIZE = common dso_local global i32 0, align 4
@BLAKE2_OUTBYTES = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_NOT_XOF_OR_INVALID_LENGTH = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@BLAKE2_KEYBYTES = common dso_local global i64 0, align 8
@PROV_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_CUSTOM = common dso_local global i32 0, align 4
@BLAKE2_PERSONALBYTES = common dso_local global i64 0, align 8
@PROV_R_INVALID_CUSTOM_LENGTH = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_SALT = common dso_local global i32 0, align 4
@BLAKE2_SALTBYTES = common dso_local global i64 0, align 8
@PROV_R_INVALID_SALT_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @blake2_mac_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blake2_mac_set_ctx_params(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.blake2_mac_data_st*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.blake2_mac_data_st*
  store %struct.blake2_mac_data_st* %12, %struct.blake2_mac_data_st** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = load i32, i32* @OSSL_MAC_PARAM_SIZE, align 4
  %15 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %13, i32 %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_7__* %18, i64* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @BLAKE2_OUTBYTES, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %21, %17
  %29 = load i32, i32* @ERR_LIB_PROV, align 4
  %30 = load i32, i32* @PROV_R_NOT_XOF_OR_INVALID_LENGTH, align 4
  %31 = call i32 @ERR_raise(i32 %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %121

32:                                               ; preds = %24
  %33 = load %struct.blake2_mac_data_st*, %struct.blake2_mac_data_st** %6, align 8
  %34 = getelementptr inbounds %struct.blake2_mac_data_st, %struct.blake2_mac_data_st* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @BLAKE2_PARAM_SET_DIGEST_LENGTH(i32* %34, i32 %36)
  br label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %41 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %39, i32 %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %7, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load %struct.blake2_mac_data_st*, %struct.blake2_mac_data_st** %6, align 8
  %45 = getelementptr inbounds %struct.blake2_mac_data_st, %struct.blake2_mac_data_st* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %10, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = load i64, i64* @BLAKE2_KEYBYTES, align 8
  %49 = call i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_7__* %47, i8** %10, i64 %48, i64* %9)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ERR_LIB_PROV, align 4
  %53 = load i32, i32* @PROV_R_INVALID_KEY_LENGTH, align 4
  %54 = call i32 @ERR_raise(i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %121

55:                                               ; preds = %43
  %56 = load %struct.blake2_mac_data_st*, %struct.blake2_mac_data_st** %6, align 8
  %57 = getelementptr inbounds %struct.blake2_mac_data_st, %struct.blake2_mac_data_st* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr i8, i8* %58, i64 %59
  %61 = load i64, i64* @BLAKE2_KEYBYTES, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %61, %62
  %64 = call i32 @memset(i8* %60, i32 0, i64 %63)
  %65 = load %struct.blake2_mac_data_st*, %struct.blake2_mac_data_st** %6, align 8
  %66 = getelementptr inbounds %struct.blake2_mac_data_st, %struct.blake2_mac_data_st* %65, i32 0, i32 0
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @BLAKE2_PARAM_SET_KEY_LENGTH(i32* %66, i32 %68)
  br label %70

70:                                               ; preds = %55, %38
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = load i32, i32* @OSSL_MAC_PARAM_CUSTOM, align 4
  %73 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %71, i32 %72)
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %7, align 8
  %74 = icmp ne %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BLAKE2_PERSONALBYTES, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @ERR_LIB_PROV, align 4
  %83 = load i32, i32* @PROV_R_INVALID_CUSTOM_LENGTH, align 4
  %84 = call i32 @ERR_raise(i32 %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %121

85:                                               ; preds = %75
  %86 = load %struct.blake2_mac_data_st*, %struct.blake2_mac_data_st** %6, align 8
  %87 = getelementptr inbounds %struct.blake2_mac_data_st, %struct.blake2_mac_data_st* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @BLAKE2_PARAM_SET_PERSONAL(i32* %87, i32 %90, i64 %93)
  br label %95

95:                                               ; preds = %85, %70
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = load i32, i32* @OSSL_MAC_PARAM_SALT, align 4
  %98 = call %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__* %96, i32 %97)
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %7, align 8
  %99 = icmp ne %struct.TYPE_7__* %98, null
  br i1 %99, label %100, label %120

100:                                              ; preds = %95
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BLAKE2_SALTBYTES, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @ERR_LIB_PROV, align 4
  %108 = load i32, i32* @PROV_R_INVALID_SALT_LENGTH, align 4
  %109 = call i32 @ERR_raise(i32 %107, i32 %108)
  store i32 0, i32* %3, align 4
  br label %121

110:                                              ; preds = %100
  %111 = load %struct.blake2_mac_data_st*, %struct.blake2_mac_data_st** %6, align 8
  %112 = getelementptr inbounds %struct.blake2_mac_data_st, %struct.blake2_mac_data_st* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @BLAKE2_PARAM_SET_SALT(i32* %112, i32 %115, i64 %118)
  br label %120

120:                                              ; preds = %110, %95
  store i32 1, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %106, %81, %51, %28
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_7__* @OSSL_PARAM_locate_const(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.TYPE_7__*, i64*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @BLAKE2_PARAM_SET_DIGEST_LENGTH(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_7__*, i8**, i64, i64*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @BLAKE2_PARAM_SET_KEY_LENGTH(i32*, i32) #1

declare dso_local i32 @BLAKE2_PARAM_SET_PERSONAL(i32*, i32, i64) #1

declare dso_local i32 @BLAKE2_PARAM_SET_SALT(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
