; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_tls1_prf.c_kdf_tls1_prf_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_tls1_prf.c_kdf_tls1_prf_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i8*, i32, i32*, i32, i32, i32 }

@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@SN_md5_sha1 = common dso_local global i32 0, align 4
@OSSL_MAC_NAME_HMAC = common dso_local global i32 0, align 4
@SN_md5 = common dso_local global i32* null, align 8
@SN_sha1 = common dso_local global i32* null, align 8
@OSSL_KDF_PARAM_SECRET = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SEED = common dso_local global i32 0, align 4
@TLS1_PRF_MAXBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__*)* @kdf_tls1_prf_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdf_tls1_prf_set_ctx_params(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %19 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %17, i32 %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %63

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @SN_md5_sha1, align 4
  %26 = call i64 @strcasecmp(i32* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = load i32, i32* @OSSL_MAC_NAME_HMAC, align 4
  %33 = load i32*, i32** @SN_md5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @ossl_prov_macctx_load_from_params(i32* %30, %struct.TYPE_9__* %31, i32 %32, i32* null, i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load i32, i32* @OSSL_MAC_NAME_HMAC, align 4
  %42 = load i32*, i32** @SN_sha1, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @ossl_prov_macctx_load_from_params(i32* %39, %struct.TYPE_9__* %40, i32 %41, i32* null, i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37, %28
  store i32 0, i32* %3, align 4
  br label %149

47:                                               ; preds = %37
  br label %62

48:                                               ; preds = %21
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @EVP_MAC_CTX_free(i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = load i32, i32* @OSSL_MAC_NAME_HMAC, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @ossl_prov_macctx_load_from_params(i32* %54, %struct.TYPE_9__* %55, i32 %56, i32* null, i32* null, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %149

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = load i32, i32* @OSSL_KDF_PARAM_SECRET, align 4
  %66 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %64, i32 %65)
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %6, align 8
  %67 = icmp ne %struct.TYPE_9__* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @OPENSSL_clear_free(i32* %71, i64 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = bitcast i32** %80 to i8**
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_9__* %78, i8** %81, i32 0, i64* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %149

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %63
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %91 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %89, i32 %90)
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %6, align 8
  %92 = icmp ne %struct.TYPE_9__* %91, null
  br i1 %92, label %93, label %148

93:                                               ; preds = %88
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @OPENSSL_cleanse(i8* %96, i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %142, %93
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = icmp ne %struct.TYPE_9__* %104, null
  br i1 %105, label %106, label %147

106:                                              ; preds = %103
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr i8, i8* %109, i64 %113
  store i8* %114, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %106
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = load i32, i32* @TLS1_PRF_MAXBUF, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %126, %129
  %131 = call i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_9__* %125, i8** %9, i32 %130, i64* %10)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %149

134:                                              ; preds = %124, %119, %106
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, %135
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 8
  br label %142

142:                                              ; preds = %134
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 1
  %145 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %146 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %144, i32 %145)
  store %struct.TYPE_9__* %146, %struct.TYPE_9__** %6, align 8
  br label %103

147:                                              ; preds = %103
  br label %148

148:                                              ; preds = %147, %88
  store i32 1, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %133, %86, %60, %46
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @strcasecmp(i32*, i32) #1

declare dso_local i32 @ossl_prov_macctx_load_from_params(i32*, %struct.TYPE_9__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_MAC_CTX_free(i32) #1

declare dso_local i32 @OPENSSL_clear_free(i32*, i64) #1

declare dso_local i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_9__*, i8**, i32, i64*) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
