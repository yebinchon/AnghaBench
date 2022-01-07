; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_hkdf.c_kdf_hkdf_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_hkdf.c_kdf_hkdf_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32* }
%struct.TYPE_10__ = type { i32, i64, i64, i32, i8*, i32*, i32*, i32, i32 }

@OSSL_KDF_PARAM_MODE = common dso_local global i32 0, align 4
@OSSL_PARAM_UTF8_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"EXTRACT_AND_EXPAND\00", align 1
@EVP_KDF_HKDF_MODE_EXTRACT_AND_EXPAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"EXTRACT_ONLY\00", align 1
@EVP_KDF_HKDF_MODE_EXTRACT_ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"EXPAND_ONLY\00", align 1
@EVP_KDF_HKDF_MODE_EXPAND_ONLY = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_INVALID_MODE = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_INFO = common dso_local global i32 0, align 4
@HKDF_MAXBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__*)* @kdf_hkdf_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdf_hkdf_set_ctx_params(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @ossl_prov_digest_load_from_params(i32* %19, %struct.TYPE_9__* %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %215

25:                                               ; preds = %2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i32, i32* @OSSL_KDF_PARAM_MODE, align 4
  %28 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %26, i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %6, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %103

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OSSL_PARAM_UTF8_STRING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %73

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @strcasecmp(i32* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @EVP_KDF_HKDF_MODE_EXTRACT_AND_EXPAND, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %72

46:                                               ; preds = %36
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @strcasecmp(i32* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @EVP_KDF_HKDF_MODE_EXTRACT_ONLY, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %71

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @strcasecmp(i32* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @EVP_KDF_HKDF_MODE_EXPAND_ONLY, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @ERR_LIB_PROV, align 4
  %68 = load i32, i32* @PROV_R_INVALID_MODE, align 4
  %69 = call i32 @ERR_raise(i32 %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %215

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %42
  br label %102

73:                                               ; preds = %30
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = call i64 @OSSL_PARAM_get_int(%struct.TYPE_9__* %74, i32* %9)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @EVP_KDF_HKDF_MODE_EXTRACT_AND_EXPAND, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @EVP_KDF_HKDF_MODE_EXTRACT_ONLY, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @EVP_KDF_HKDF_MODE_EXPAND_ONLY, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @ERR_LIB_PROV, align 4
  %91 = load i32, i32* @PROV_R_INVALID_MODE, align 4
  %92 = call i32 @ERR_raise(i32 %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %215

93:                                               ; preds = %85, %81, %77
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %101

97:                                               ; preds = %73
  %98 = load i32, i32* @ERR_LIB_PROV, align 4
  %99 = load i32, i32* @PROV_R_INVALID_MODE, align 4
  %100 = call i32 @ERR_raise(i32 %98, i32 %99)
  store i32 0, i32* %3, align 4
  br label %215

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %72
  br label %103

103:                                              ; preds = %102, %25
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %106 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %104, i32 %105)
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %6, align 8
  %107 = icmp ne %struct.TYPE_9__* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @OPENSSL_clear_free(i32* %111, i64 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  store i32* null, i32** %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 6
  %121 = bitcast i32** %120 to i8**
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = call i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_9__* %118, i8** %121, i32 0, i64* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %215

127:                                              ; preds = %108
  br label %128

128:                                              ; preds = %127, %103
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %131 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %129, i32 %130)
  store %struct.TYPE_9__* %131, %struct.TYPE_9__** %6, align 8
  %132 = icmp ne %struct.TYPE_9__* %131, null
  br i1 %132, label %133, label %161

133:                                              ; preds = %128
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %133
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %160

143:                                              ; preds = %138
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @OPENSSL_free(i32* %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 5
  store i32* null, i32** %149, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 5
  %153 = bitcast i32** %152 to i8**
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = call i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_9__* %150, i8** %153, i32 0, i64* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %215

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159, %138, %133
  br label %161

161:                                              ; preds = %160, %128
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = load i32, i32* @OSSL_KDF_PARAM_INFO, align 4
  %164 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %162, i32 %163)
  store %struct.TYPE_9__* %164, %struct.TYPE_9__** %6, align 8
  %165 = icmp ne %struct.TYPE_9__* %164, null
  br i1 %165, label %166, label %214

166:                                              ; preds = %161
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  store i32 0, i32* %168, align 8
  br label %169

169:                                              ; preds = %208, %166
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %171 = icmp ne %struct.TYPE_9__* %170, null
  br i1 %171, label %172, label %213

172:                                              ; preds = %169
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr i8, i8* %175, i64 %179
  store i8* %180, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %172
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %192 = load i32, i32* @HKDF_MAXBUF, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %192, %195
  %197 = call i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_9__* %191, i8** %10, i32 %196, i64* %11)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %215

200:                                              ; preds = %190, %185, %172
  %201 = load i64, i64* %11, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = add i64 %205, %201
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %203, align 8
  br label %208

208:                                              ; preds = %200
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i64 1
  %211 = load i32, i32* @OSSL_KDF_PARAM_INFO, align 4
  %212 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %210, i32 %211)
  store %struct.TYPE_9__* %212, %struct.TYPE_9__** %6, align 8
  br label %169

213:                                              ; preds = %169
  br label %214

214:                                              ; preds = %213, %161
  store i32 1, i32* %3, align 4
  br label %215

215:                                              ; preds = %214, %199, %158, %126, %97, %89, %66, %24
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_digest_load_from_params(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i64 @OSSL_PARAM_get_int(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i32*, i64) #1

declare dso_local i32 @OSSL_PARAM_get_octet_string(%struct.TYPE_9__*, i8**, i32, i64*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
