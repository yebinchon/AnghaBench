; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_fn.c_evp_pkey_signature_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_fn.c_evp_pkey_signature_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__, i32*, i32*, i32, i32, i32* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)*, i32*, i32*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (i32*, i8*)*, i32 (i32*, i8*)*, i32 (i32*, i8*)*, i32 (i32*)*, i32, i32* (i32)* }

@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4
@EVP_R_INITIALIZATION_ERROR = common dso_local global i32 0, align 4
@EVP_PKEY_OP_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32)* @evp_pkey_signature_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evp_pkey_signature_init(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = icmp eq %struct.TYPE_19__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %14 = call i32 @EVPerr(i32 0, i32 %13)
  store i32 -2, i32* %3, align 4
  br label %304

15:                                               ; preds = %2
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = call i32 @evp_pkey_ctx_free_old_ops(%struct.TYPE_19__* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %202

26:                                               ; preds = %15
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_18__* @EVP_SIGNATURE_fetch(i32 %29, i32* %32, i32 %35)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %8, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %26
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = call i32 @EVP_SIGNATURE_number(%struct.TYPE_18__* %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32* @evp_keymgmt_fetch_by_number(i32 %49, i32 %50, i32 %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %44, %39, %26
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = icmp eq %struct.TYPE_18__* %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @EVP_KEYMGMT_provider(i32* %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = call i64 @EVP_SIGNATURE_provider(%struct.TYPE_18__* %70)
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65, %62, %57
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = call i32 @EVP_SIGNATURE_free(%struct.TYPE_18__* %74)
  br label %202

76:                                               ; preds = %65
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %76
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i8* @evp_keymgmt_export_to_provider(i32* %89, i32* %92, i32 0)
  store i8* %93, i8** %7, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %98 = call i32 @EVPerr(i32 0, i32 %97)
  br label %299

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %76
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 5
  %103 = load i32* (i32)*, i32* (i32)** %102, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ossl_provider_ctx(i32 %106)
  %108 = call i32* %103(i32 %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i32* %108, i32** %112, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %100
  %120 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %121 = call i32 @EVPerr(i32 0, i32 %120)
  br label %299

122:                                              ; preds = %100
  %123 = load i32, i32* %5, align 4
  switch i32 %123, label %181 [
    i32 130, label %124
    i32 129, label %143
    i32 128, label %162
  ]

124:                                              ; preds = %122
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %126, align 8
  %128 = icmp eq i32 (i32*, i8*)* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %131 = call i32 @EVPerr(i32 0, i32 %130)
  store i32 -2, i32* %6, align 4
  br label %299

132:                                              ; preds = %124
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %134, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 %135(i32* %140, i8* %141)
  store i32 %142, i32* %6, align 4
  br label %184

143:                                              ; preds = %122
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %145, align 8
  %147 = icmp eq i32 (i32*, i8*)* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %150 = call i32 @EVPerr(i32 0, i32 %149)
  store i32 -2, i32* %6, align 4
  br label %299

151:                                              ; preds = %143
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %153, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 %154(i32* %159, i8* %160)
  store i32 %161, i32* %6, align 4
  br label %184

162:                                              ; preds = %122
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 2
  %165 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %164, align 8
  %166 = icmp eq i32 (i32*, i8*)* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %169 = call i32 @EVPerr(i32 0, i32 %168)
  store i32 -2, i32* %6, align 4
  br label %299

170:                                              ; preds = %162
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  %173 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %172, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = call i32 %173(i32* %178, i8* %179)
  store i32 %180, i32* %6, align 4
  br label %184

181:                                              ; preds = %122
  %182 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %183 = call i32 @EVPerr(i32 0, i32 %182)
  br label %299

184:                                              ; preds = %170, %151, %132
  %185 = load i32, i32* %6, align 4
  %186 = icmp sle i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %184
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 3
  %190 = load i32 (i32*)*, i32 (i32*)** %189, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 %190(i32* %195)
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  store i32* null, i32** %200, align 8
  br label %299

201:                                              ; preds = %184
  store i32 1, i32* %3, align 4
  br label %304

202:                                              ; preds = %73, %25
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %204, align 8
  %206 = icmp eq %struct.TYPE_17__* %205, null
  br i1 %206, label %237, label %207

207:                                              ; preds = %202
  %208 = load i32, i32* %5, align 4
  %209 = icmp eq i32 %208, 130
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %237, label %217

217:                                              ; preds = %210, %207
  %218 = load i32, i32* %5, align 4
  %219 = icmp eq i32 %218, 129
  br i1 %219, label %220, label %227

220:                                              ; preds = %217
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %237, label %227

227:                                              ; preds = %220, %217
  %228 = load i32, i32* %5, align 4
  %229 = icmp eq i32 %228, 128
  br i1 %229, label %230, label %240

230:                                              ; preds = %227
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = icmp eq i32* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %230, %220, %210, %202
  %238 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %239 = call i32 @EVPerr(i32 0, i32 %238)
  store i32 -2, i32* %3, align 4
  br label %304

240:                                              ; preds = %230, %227
  %241 = load i32, i32* %5, align 4
  switch i32 %241, label %290 [
    i32 130, label %242
    i32 129, label %258
    i32 128, label %274
  ]

242:                                              ; preds = %240
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %246, align 8
  %248 = icmp eq i32 (%struct.TYPE_19__*)* %247, null
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  store i32 1, i32* %3, align 4
  br label %304

250:                                              ; preds = %242
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  %255 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %254, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %257 = call i32 %255(%struct.TYPE_19__* %256)
  store i32 %257, i32* %6, align 4
  br label %293

258:                                              ; preds = %240
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 1
  %263 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %262, align 8
  %264 = icmp eq i32 (%struct.TYPE_19__*)* %263, null
  br i1 %264, label %265, label %266

265:                                              ; preds = %258
  store i32 1, i32* %3, align 4
  br label %304

266:                                              ; preds = %258
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 1
  %271 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %270, align 8
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %273 = call i32 %271(%struct.TYPE_19__* %272)
  store i32 %273, i32* %6, align 4
  br label %293

274:                                              ; preds = %240
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 2
  %279 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %278, align 8
  %280 = icmp eq i32 (%struct.TYPE_19__*)* %279, null
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  store i32 1, i32* %3, align 4
  br label %304

282:                                              ; preds = %274
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 2
  %287 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %286, align 8
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %289 = call i32 %287(%struct.TYPE_19__* %288)
  store i32 %289, i32* %6, align 4
  br label %293

290:                                              ; preds = %240
  %291 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %292 = call i32 @EVPerr(i32 0, i32 %291)
  br label %299

293:                                              ; preds = %282, %266, %250
  %294 = load i32, i32* %6, align 4
  %295 = icmp sle i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  br label %299

297:                                              ; preds = %293
  %298 = load i32, i32* %6, align 4
  store i32 %298, i32* %3, align 4
  br label %304

299:                                              ; preds = %296, %290, %187, %181, %167, %148, %129, %119, %96
  %300 = load i32, i32* @EVP_PKEY_OP_UNDEFINED, align 4
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* %6, align 4
  store i32 %303, i32* %3, align 4
  br label %304

304:                                              ; preds = %299, %297, %281, %265, %249, %237, %201, %12
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @evp_pkey_ctx_free_old_ops(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @EVP_SIGNATURE_fetch(i32, i32*, i32) #1

declare dso_local i32 @EVP_SIGNATURE_number(%struct.TYPE_18__*) #1

declare dso_local i32* @evp_keymgmt_fetch_by_number(i32, i32, i32) #1

declare dso_local i64 @EVP_KEYMGMT_provider(i32*) #1

declare dso_local i64 @EVP_SIGNATURE_provider(%struct.TYPE_18__*) #1

declare dso_local i32 @EVP_SIGNATURE_free(%struct.TYPE_18__*) #1

declare dso_local i8* @evp_keymgmt_export_to_provider(i32*, i32*, i32) #1

declare dso_local i32 @ossl_provider_ctx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
