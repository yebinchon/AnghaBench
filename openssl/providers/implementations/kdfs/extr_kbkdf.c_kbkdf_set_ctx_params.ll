; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_kbkdf.c_kbkdf_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_kbkdf.c_kbkdf_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i32*, i32, i32, i32, i32, i32, i32 }

@OSSL_MAC_NAME_HMAC = common dso_local global i32 0, align 4
@OSSL_MAC_NAME_CMAC = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_INVALID_MAC = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@COUNTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"feedback\00", align 1
@FEEDBACK = common dso_local global i32 0, align 4
@PROV_R_INVALID_MODE = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_INFO = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SEED = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_11__*)* @kbkdf_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbkdf_set_ctx_params(i8* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca [2 x %struct.TYPE_11__], align 16
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @ossl_prov_macctx_load_from_params(i32** %19, %struct.TYPE_11__* %20, i32* null, i32* null, i32* null, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %198

25:                                               ; preds = %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @EVP_MAC_CTX_mac(i32* %33)
  %35 = load i32, i32* @OSSL_MAC_NAME_HMAC, align 4
  %36 = call i32 @EVP_MAC_is_a(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %30
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @EVP_MAC_CTX_mac(i32* %41)
  %43 = load i32, i32* @OSSL_MAC_NAME_CMAC, align 4
  %44 = call i32 @EVP_MAC_is_a(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ERR_LIB_PROV, align 4
  %48 = load i32, i32* @PROV_R_INVALID_MAC, align 4
  %49 = call i32 @ERR_raise(i32 %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %198

50:                                               ; preds = %38, %30, %25
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = load i32, i32* @OSSL_KDF_PARAM_MODE, align 4
  %54 = call %struct.TYPE_11__* @OSSL_PARAM_locate_const(%struct.TYPE_11__* %52, i32 %53)
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %8, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = icmp ne %struct.TYPE_11__* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @COUNTER, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 8
  br label %95

70:                                               ; preds = %57, %51
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = icmp ne %struct.TYPE_11__* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @strncasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @FEEDBACK, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 9
  store i32 %83, i32* %85, align 8
  br label %94

86:                                               ; preds = %73, %70
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @ERR_LIB_PROV, align 4
  %91 = load i32, i32* @PROV_R_INVALID_MODE, align 4
  %92 = call i32 @ERR_raise(i32 %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %198

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %94, %66
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %98 = call %struct.TYPE_11__* @OSSL_PARAM_locate_const(%struct.TYPE_11__* %96, i32 %97)
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %8, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = icmp ne %struct.TYPE_11__* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = call i32 @kbkdf_set_buffer(i32* %103, i64* %105, %struct.TYPE_11__* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %198

110:                                              ; preds = %101, %95
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %113 = call %struct.TYPE_11__* @OSSL_PARAM_locate_const(%struct.TYPE_11__* %111, i32 %112)
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %8, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = icmp ne %struct.TYPE_11__* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = call i32 @kbkdf_set_buffer(i32* %118, i64* %120, %struct.TYPE_11__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %198

125:                                              ; preds = %116, %110
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = load i32, i32* @OSSL_KDF_PARAM_INFO, align 4
  %128 = call %struct.TYPE_11__* @OSSL_PARAM_locate_const(%struct.TYPE_11__* %126, i32 %127)
  store %struct.TYPE_11__* %128, %struct.TYPE_11__** %8, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = icmp ne %struct.TYPE_11__* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 7
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %137 = call i32 @kbkdf_set_buffer(i32* %133, i64* %135, %struct.TYPE_11__* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %198

140:                                              ; preds = %131, %125
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %143 = call %struct.TYPE_11__* @OSSL_PARAM_locate_const(%struct.TYPE_11__* %141, i32 %142)
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %8, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %145 = icmp ne %struct.TYPE_11__* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 6
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %152 = call i32 @kbkdf_set_buffer(i32* %148, i64* %150, %struct.TYPE_11__* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %198

155:                                              ; preds = %146, %140
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %197

160:                                              ; preds = %155
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %197

165:                                              ; preds = %160
  %166 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %167 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @OSSL_PARAM_construct_octet_string(i32 %167, i32 %170, i64 %173)
  %175 = bitcast %struct.TYPE_11__* %10 to i64*
  store i64 %174, i64* %175, align 4
  %176 = bitcast %struct.TYPE_11__* %166 to i8*
  %177 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %176, i8* align 4 %177, i64 8, i1 false)
  %178 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %9, i64 0, i64 1
  %179 = call i64 (...) @OSSL_PARAM_construct_end()
  %180 = bitcast %struct.TYPE_11__* %11 to i64*
  store i64 %179, i64* %180, align 4
  %181 = bitcast %struct.TYPE_11__* %178 to i8*
  %182 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 4 %182, i64 8, i1 false)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %187 = call i32 @EVP_MAC_CTX_set_params(i32* %185, %struct.TYPE_11__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %165
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @EVP_MAC_init(i32* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %189, %165
  store i32 0, i32* %3, align 4
  br label %198

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %160, %155
  store i32 1, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %195, %154, %139, %124, %109, %89, %46, %24
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_macctx_load_from_params(i32**, %struct.TYPE_11__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_MAC_is_a(i32, i32) #1

declare dso_local i32 @EVP_MAC_CTX_mac(i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local %struct.TYPE_11__* @OSSL_PARAM_locate_const(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @kbkdf_set_buffer(i32*, i64*, %struct.TYPE_11__*) #1

declare dso_local i64 @OSSL_PARAM_construct_octet_string(i32, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @OSSL_PARAM_construct_end(...) #1

declare dso_local i32 @EVP_MAC_CTX_set_params(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @EVP_MAC_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
