; ModuleID = '/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_pbm.c_OSSL_CRMF_pbm_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_pbm.c_OSSL_CRMF_pbm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }

@NID_undef = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@OSSL_PARAM_END = common dso_local global i32 0, align 4
@CRMF_F_OSSL_CRMF_PBM_NEW = common dso_local global i32 0, align 4
@CRMF_R_NULL_ARGUMENT = common dso_local global i32 0, align 4
@CRMF_R_UNSUPPORTED_ALGORITHM = common dso_local global i32 0, align 4
@OSSL_CRMF_PBM_MAX_ITERATION_COUNT = common dso_local global i32 0, align 4
@CRMF_R_BAD_PBM_ITERATIONCOUNT = common dso_local global i32 0, align 4
@EVP_PBE_TYPE_PRF = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_DIGEST = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_CRMF_pbm_new(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca [3 x i32], align 4
  %30 = alloca i32, align 4
  %31 = alloca [128 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8** %5, i8*** %14, align 8
  store i64* %6, i64** %15, align 8
  %32 = load i32, i32* @NID_undef, align 4
  store i32 %32, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %33 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %21, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %22, align 8
  %37 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  store i32 %37, i32* %23, align 4
  store i8* null, i8** %25, align 8
  store i32 0, i32* %26, align 4
  store i32* null, i32** %27, align 8
  store i32* null, i32** %28, align 8
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 0, i64 0
  %39 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %40, i64 1
  %43 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %43, i32* %42, align 4
  %44 = load i8**, i8*** %14, align 8
  %45 = icmp eq i8** %44, null
  br i1 %45, label %67, label %46

46:                                               ; preds = %7
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = icmp eq %struct.TYPE_9__* %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = icmp eq %struct.TYPE_8__* %52, null
  br i1 %53, label %67, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = load i8*, i8** %10, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64, %61, %54, %49, %46, %7
  %68 = load i32, i32* @CRMF_F_OSSL_CRMF_PBM_NEW, align 4
  %69 = load i32, i32* @CRMF_R_NULL_ARGUMENT, align 4
  %70 = call i32 @CRMFerr(i32 %68, i32 %69)
  br label %224

71:                                               ; preds = %64
  %72 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %73 = call i8* @OPENSSL_malloc(i32 %72)
  store i8* %73, i8** %25, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %224

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @EVP_get_digestbyobj(i32 %81)
  store i32* %82, i32** %19, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load i32, i32* @CRMF_F_OSSL_CRMF_PBM_NEW, align 4
  %86 = load i32, i32* @CRMF_R_UNSUPPORTED_ALGORITHM, align 4
  %87 = call i32 @CRMFerr(i32 %85, i32 %86)
  br label %224

88:                                               ; preds = %76
  %89 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %89, i32** %20, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %224

92:                                               ; preds = %88
  %93 = load i32*, i32** %20, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @EVP_DigestInit_ex(i32* %93, i32* %94, i32* null)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %224

98:                                               ; preds = %92
  %99 = load i32*, i32** %20, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @EVP_DigestUpdate(i32* %99, i8* %100, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  br label %224

106:                                              ; preds = %98
  %107 = load i32*, i32** %20, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @EVP_DigestUpdate(i32* %107, i8* %112, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %106
  br label %224

121:                                              ; preds = %106
  %122 = load i32*, i32** %20, align 8
  %123 = call i32 @EVP_DigestFinal_ex(i32* %122, i8* %36, i32* %23)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  br label %224

126:                                              ; preds = %121
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ASN1_INTEGER_get_int64(i32* %24, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load i32, i32* %24, align 4
  %134 = icmp slt i32 %133, 100
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* @OSSL_CRMF_PBM_MAX_ITERATION_COUNT, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135, %132, %126
  %140 = load i32, i32* @CRMF_F_OSSL_CRMF_PBM_NEW, align 4
  %141 = load i32, i32* @CRMF_R_BAD_PBM_ITERATIONCOUNT, align 4
  %142 = call i32 @CRMFerr(i32 %140, i32 %141)
  br label %224

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %165, %143
  %145 = load i32, i32* %24, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %24, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load i32*, i32** %20, align 8
  %150 = load i32*, i32** %19, align 8
  %151 = call i32 @EVP_DigestInit_ex(i32* %149, i32* %150, i32* null)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  br label %224

154:                                              ; preds = %148
  %155 = load i32*, i32** %20, align 8
  %156 = load i32, i32* %23, align 4
  %157 = call i32 @EVP_DigestUpdate(i32* %155, i8* %36, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  br label %224

160:                                              ; preds = %154
  %161 = load i32*, i32** %20, align 8
  %162 = call i32 @EVP_DigestFinal_ex(i32* %161, i8* %36, i32* %23)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  br label %224

165:                                              ; preds = %160
  br label %144

166:                                              ; preds = %144
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @OBJ_obj2nid(i32* %171)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* @EVP_PBE_TYPE_PRF, align 4
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @EVP_PBE_find(i32 %173, i32 %174, i32* null, i32* %17, i32* null)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %166
  %178 = load i32, i32* %17, align 4
  %179 = call i8* @OBJ_nid2sn(i32 %178)
  store i8* %179, i8** %18, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %177, %166
  %182 = load i32, i32* @CRMF_F_OSSL_CRMF_PBM_NEW, align 4
  %183 = load i32, i32* @CRMF_R_UNSUPPORTED_ALGORITHM, align 4
  %184 = call i32 @CRMFerr(i32 %182, i32 %183)
  br label %224

185:                                              ; preds = %177
  %186 = load i32, i32* @OSSL_MAC_PARAM_DIGEST, align 4
  %187 = load i8*, i8** %18, align 8
  %188 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %186, i8* %187, i32 0)
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 0, i64 0
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %191 = load i32, i32* %23, align 4
  %192 = call i32 @OSSL_PARAM_construct_octet_string(i32 %190, i8* %36, i32 %191)
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 0, i64 1
  store i32 %192, i32* %193, align 4
  %194 = call i32* @EVP_MAC_fetch(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %194, i32** %27, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %222, label %196

196:                                              ; preds = %185
  %197 = load i32*, i32** %27, align 8
  %198 = call i32* @EVP_MAC_CTX_new(i32* %197)
  store i32* %198, i32** %28, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %222, label %200

200:                                              ; preds = %196
  %201 = load i32*, i32** %28, align 8
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 0, i64 0
  %203 = call i32 @EVP_MAC_CTX_set_params(i32* %201, i32* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %222

205:                                              ; preds = %200
  %206 = load i32*, i32** %28, align 8
  %207 = call i32 @EVP_MAC_init(i32* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %205
  %210 = load i32*, i32** %28, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = load i64, i64* %11, align 8
  %213 = call i32 @EVP_MAC_update(i32* %210, i8* %211, i64 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %209
  %216 = load i32*, i32** %28, align 8
  %217 = load i8*, i8** %25, align 8
  %218 = load i64*, i64** %15, align 8
  %219 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %220 = call i32 @EVP_MAC_final(i32* %216, i8* %217, i64* %218, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %215, %209, %205, %200, %196, %185
  br label %224

223:                                              ; preds = %215
  store i32 1, i32* %26, align 4
  br label %224

224:                                              ; preds = %223, %222, %181, %164, %159, %153, %139, %125, %120, %105, %97, %91, %84, %75, %67
  %225 = load i32, i32* %23, align 4
  %226 = call i32 @OPENSSL_cleanse(i8* %36, i32 %225)
  %227 = load i32*, i32** %28, align 8
  %228 = call i32 @EVP_MAC_CTX_free(i32* %227)
  %229 = load i32*, i32** %27, align 8
  %230 = call i32 @EVP_MAC_free(i32* %229)
  %231 = load i32*, i32** %20, align 8
  %232 = call i32 @EVP_MD_CTX_free(i32* %231)
  %233 = load i32, i32* %26, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %238

235:                                              ; preds = %224
  %236 = load i8*, i8** %25, align 8
  %237 = load i8**, i8*** %14, align 8
  store i8* %236, i8** %237, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %262

238:                                              ; preds = %224
  %239 = load i8*, i8** %25, align 8
  %240 = call i32 @OPENSSL_free(i8* %239)
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %242 = icmp ne %struct.TYPE_9__* %241, null
  br i1 %242, label %243, label %261

243:                                              ; preds = %238
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = icmp ne %struct.TYPE_8__* %246, null
  br i1 %247, label %248, label %261

248:                                              ; preds = %243
  %249 = getelementptr inbounds [128 x i8], [128 x i8]* %31, i64 0, i64 0
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = call i64 @OBJ_obj2txt(i8* %249, i32 128, i32* %254, i32 0)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %248
  %258 = getelementptr inbounds [128 x i8], [128 x i8]* %31, i64 0, i64 0
  %259 = call i32 @ERR_add_error_data(i32 1, i8* %258)
  br label %260

260:                                              ; preds = %257, %248
  br label %261

261:                                              ; preds = %260, %243, %238
  store i32 0, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %262

262:                                              ; preds = %261, %235
  %263 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %263)
  %264 = load i32, i32* %8, align 4
  ret i32 %264
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CRMFerr(i32, i32) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i32* @EVP_get_digestbyobj(i32) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @ASN1_INTEGER_get_int64(i32*, i32) #2

declare dso_local i32 @OBJ_obj2nid(i32*) #2

declare dso_local i32 @EVP_PBE_find(i32, i32, i32*, i32*, i32*) #2

declare dso_local i8* @OBJ_nid2sn(i32) #2

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i8*, i32) #2

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i32) #2

declare dso_local i32* @EVP_MAC_fetch(i32*, i8*, i32*) #2

declare dso_local i32* @EVP_MAC_CTX_new(i32*) #2

declare dso_local i32 @EVP_MAC_CTX_set_params(i32*, i32*) #2

declare dso_local i32 @EVP_MAC_init(i32*) #2

declare dso_local i32 @EVP_MAC_update(i32*, i8*, i64) #2

declare dso_local i32 @EVP_MAC_final(i32*, i8*, i64*, i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @EVP_MAC_CTX_free(i32*) #2

declare dso_local i32 @EVP_MAC_free(i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i64 @OBJ_obj2txt(i8*, i32, i32*, i32) #2

declare dso_local i32 @ERR_add_error_data(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
