; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_DigestInit_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_DigestInit_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32, i32*, i32*, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_18__ = type { i64, i64, i32 (i32*)*, i32 (%struct.TYPE_17__*)*, i32, i32*, i32* (i32)*, i32 (i32*)* }

@EVP_MD_CTX_FLAG_CLEANED = common dso_local global i32 0, align 4
@EVP_F_EVP_DIGESTINIT_EX = common dso_local global i32 0, align 4
@EVP_R_INITIALIZATION_ERROR = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_NO_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EVP_R_NO_DIGEST_SET = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_TYPE_SIG = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_DIGESTINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DigestInit_ex(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = load i32, i32* @EVP_MD_CTX_FLAG_CLEANED, align 4
  %14 = call i32 @EVP_MD_CTX_clear_flags(%struct.TYPE_17__* %12, i32 %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = icmp ne %struct.TYPE_18__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ossl_assert(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %29 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %30 = call i32 @EVPerr(i32 %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %451

31:                                               ; preds = %19
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 7
  %36 = load i32 (i32*)*, i32 (i32*)** %35, align 8
  %37 = icmp ne i32 (i32*)* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 7
  %43 = load i32 (i32*)*, i32 (i32*)** %42, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 %43(i32* %46)
  br label %48

48:                                               ; preds = %38, %31
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 6
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %48, %3
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = icmp ne %struct.TYPE_18__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 8
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %57, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = icmp ne %struct.TYPE_18__* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %70 = icmp eq %struct.TYPE_18__* %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %74, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71, %68
  br label %400

82:                                               ; preds = %71, %63, %58
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = icmp ne %struct.TYPE_18__* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @ENGINE_finish(i32* %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 5
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %85, %82
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %94 = icmp ne %struct.TYPE_18__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32*, i32** %7, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32* @ENGINE_get_digest_engine(i64 %101)
  store i32* %102, i32** %8, align 8
  br label %103

103:                                              ; preds = %98, %95, %92
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %121, label %108

108:                                              ; preds = %103
  %109 = load i32*, i32** %7, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %121, label %111

111:                                              ; preds = %108
  %112 = load i32*, i32** %8, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @EVP_MD_CTX_FLAG_NO_INIT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %114, %111, %108, %103
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 7
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = icmp eq %struct.TYPE_18__* %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %131, align 8
  br label %132

132:                                              ; preds = %129, %121
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = call i32 @EVP_MD_free(%struct.TYPE_18__* %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 7
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %138, align 8
  br label %276

139:                                              ; preds = %114
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = icmp ne %struct.TYPE_18__* %142, null
  br i1 %143, label %144, label %163

144:                                              ; preds = %139
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %144
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @OPENSSL_clear_free(i32* %154, i64 %159)
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  store i32* null, i32** %162, align 8
  br label %163

163:                                              ; preds = %151, %144, %139
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %189

168:                                              ; preds = %163
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @OBJ_nid2sn(i64 %171)
  %173 = call %struct.TYPE_18__* @EVP_MD_fetch(i32* null, i32 %172, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_18__* %173, %struct.TYPE_18__** %9, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %175 = icmp eq %struct.TYPE_18__* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %178 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %179 = call i32 @EVPerr(i32 %177, i32 %178)
  store i32 0, i32* %4, align 4
  br label %451

180:                                              ; preds = %168
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %181, %struct.TYPE_18__** %6, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 7
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = call i32 @EVP_MD_free(%struct.TYPE_18__* %184)
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 7
  store %struct.TYPE_18__* %186, %struct.TYPE_18__** %188, align 8
  br label %189

189:                                              ; preds = %180, %163
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 6
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %225

194:                                              ; preds = %189
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = icmp ne %struct.TYPE_18__* %197, null
  br i1 %198, label %199, label %225

199:                                              ; preds = %194
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %201, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %204 = icmp ne %struct.TYPE_18__* %202, %203
  br i1 %204, label %205, label %225

205:                                              ; preds = %199
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 7
  %210 = load i32 (i32*)*, i32 (i32*)** %209, align 8
  %211 = icmp ne i32 (i32*)* %210, null
  br i1 %211, label %212, label %222

212:                                              ; preds = %205
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 7
  %217 = load i32 (i32*)*, i32 (i32*)** %216, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 %217(i32* %220)
  br label %222

222:                                              ; preds = %212, %205
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 6
  store i32* null, i32** %224, align 8
  br label %225

225:                                              ; preds = %222, %199, %194, %189
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 1
  store %struct.TYPE_18__* %226, %struct.TYPE_18__** %228, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 6
  %231 = load i32*, i32** %230, align 8
  %232 = icmp eq i32* %231, null
  br i1 %232, label %233, label %255

233:                                              ; preds = %225
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 6
  %238 = load i32* (i32)*, i32* (i32)** %237, align 8
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @ossl_provider_ctx(i32* %241)
  %243 = call i32* %238(i32 %242)
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 6
  store i32* %243, i32** %245, align 8
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 6
  %248 = load i32*, i32** %247, align 8
  %249 = icmp eq i32* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %233
  %251 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %252 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %253 = call i32 @EVPerr(i32 %251, i32 %252)
  store i32 0, i32* %4, align 4
  br label %451

254:                                              ; preds = %233
  br label %255

255:                                              ; preds = %254, %225
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 2
  %260 = load i32 (i32*)*, i32 (i32*)** %259, align 8
  %261 = icmp eq i32 (i32*)* %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %264 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %265 = call i32 @EVPerr(i32 %263, i32 %264)
  store i32 0, i32* %4, align 4
  br label %451

266:                                              ; preds = %255
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 2
  %271 = load i32 (i32*)*, i32 (i32*)** %270, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 6
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 %271(i32* %274)
  store i32 %275, i32* %4, align 4
  br label %451

276:                                              ; preds = %132
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %278 = icmp ne %struct.TYPE_18__* %277, null
  br i1 %278, label %279, label %319

279:                                              ; preds = %276
  %280 = load i32*, i32** %7, align 8
  %281 = icmp ne i32* %280, null
  br i1 %281, label %282, label %291

282:                                              ; preds = %279
  %283 = load i32*, i32** %7, align 8
  %284 = call i32 @ENGINE_init(i32* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %288 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %289 = call i32 @EVPerr(i32 %287, i32 %288)
  store i32 0, i32* %4, align 4
  br label %451

290:                                              ; preds = %282
  br label %293

291:                                              ; preds = %279
  %292 = load i32*, i32** %8, align 8
  store i32* %292, i32** %7, align 8
  br label %293

293:                                              ; preds = %291, %290
  %294 = load i32*, i32** %7, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %296, label %315

296:                                              ; preds = %293
  %297 = load i32*, i32** %7, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = call %struct.TYPE_18__* @ENGINE_get_digest(i32* %297, i64 %300)
  store %struct.TYPE_18__* %301, %struct.TYPE_18__** %10, align 8
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %303 = icmp eq %struct.TYPE_18__* %302, null
  br i1 %303, label %304, label %310

304:                                              ; preds = %296
  %305 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %306 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %307 = call i32 @EVPerr(i32 %305, i32 %306)
  %308 = load i32*, i32** %7, align 8
  %309 = call i32 @ENGINE_finish(i32* %308)
  store i32 0, i32* %4, align 4
  br label %451

310:                                              ; preds = %296
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %311, %struct.TYPE_18__** %6, align 8
  %312 = load i32*, i32** %7, align 8
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 5
  store i32* %312, i32** %314, align 8
  br label %318

315:                                              ; preds = %293
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 5
  store i32* null, i32** %317, align 8
  br label %318

318:                                              ; preds = %315, %310
  br label %332

319:                                              ; preds = %276
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %321, align 8
  %323 = icmp ne %struct.TYPE_18__* %322, null
  br i1 %323, label %328, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %326 = load i32, i32* @EVP_R_NO_DIGEST_SET, align 4
  %327 = call i32 @EVPerr(i32 %325, i32 %326)
  store i32 0, i32* %4, align 4
  br label %451

328:                                              ; preds = %319
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %330, align 8
  store %struct.TYPE_18__* %331, %struct.TYPE_18__** %6, align 8
  br label %332

332:                                              ; preds = %328, %318
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %334, align 8
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %337 = icmp ne %struct.TYPE_18__* %335, %336
  br i1 %337, label %338, label %399

338:                                              ; preds = %332
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %340, align 8
  %342 = icmp ne %struct.TYPE_18__* %341, null
  br i1 %342, label %343, label %362

343:                                              ; preds = %338
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %362

350:                                              ; preds = %343
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 3
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 1
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = call i32 @OPENSSL_clear_free(i32* %353, i64 %358)
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 3
  store i32* null, i32** %361, align 8
  br label %362

362:                                              ; preds = %350, %343, %338
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 1
  store %struct.TYPE_18__* %363, %struct.TYPE_18__** %365, align 8
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @EVP_MD_CTX_FLAG_NO_INIT, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %398, label %372

372:                                              ; preds = %362
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %398

377:                                              ; preds = %372
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %381, i32 0, i32 4
  store i32 %380, i32* %382, align 8
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = call i32* @OPENSSL_zalloc(i64 %385)
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 3
  store i32* %386, i32** %388, align 8
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 3
  %391 = load i32*, i32** %390, align 8
  %392 = icmp eq i32* %391, null
  br i1 %392, label %393, label %397

393:                                              ; preds = %377
  %394 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %395 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %396 = call i32 @EVPerr(i32 %394, i32 %395)
  store i32 0, i32* %4, align 4
  br label %451

397:                                              ; preds = %377
  br label %398

398:                                              ; preds = %397, %372, %362
  br label %399

399:                                              ; preds = %398, %332
  br label %400

400:                                              ; preds = %399, %81
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 2
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %402, align 8
  %404 = icmp ne %struct.TYPE_19__* %403, null
  br i1 %404, label %405, label %435

405:                                              ; preds = %400
  %406 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 2
  %408 = load %struct.TYPE_19__*, %struct.TYPE_19__** %407, align 8
  %409 = call i32 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_19__* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %420

411:                                              ; preds = %405
  %412 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %412, i32 0, i32 2
  %414 = load %struct.TYPE_19__*, %struct.TYPE_19__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 0
  %418 = load i32*, i32** %417, align 8
  %419 = icmp eq i32* %418, null
  br i1 %419, label %420, label %435

420:                                              ; preds = %411, %405
  %421 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 2
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %422, align 8
  %424 = load i32, i32* @EVP_PKEY_OP_TYPE_SIG, align 4
  %425 = load i32, i32* @EVP_PKEY_CTRL_DIGESTINIT, align 4
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %427 = call i32 @EVP_PKEY_CTX_ctrl(%struct.TYPE_19__* %423, i32 -1, i32 %424, i32 %425, i32 0, %struct.TYPE_17__* %426)
  store i32 %427, i32* %11, align 4
  %428 = load i32, i32* %11, align 4
  %429 = icmp sle i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %420
  %431 = load i32, i32* %11, align 4
  %432 = icmp ne i32 %431, -2
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  store i32 0, i32* %4, align 4
  br label %451

434:                                              ; preds = %430, %420
  br label %435

435:                                              ; preds = %434, %411, %400
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @EVP_MD_CTX_FLAG_NO_INIT, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %435
  store i32 1, i32* %4, align 4
  br label %451

443:                                              ; preds = %435
  %444 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 3
  %448 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %447, align 8
  %449 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %450 = call i32 %448(%struct.TYPE_17__* %449)
  store i32 %450, i32* %4, align 4
  br label %451

451:                                              ; preds = %443, %442, %433, %393, %324, %304, %286, %266, %262, %250, %176, %27
  %452 = load i32, i32* %4, align 4
  ret i32 %452
}

declare dso_local i32 @EVP_MD_CTX_clear_flags(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32* @ENGINE_get_digest_engine(i64) #1

declare dso_local i32 @EVP_MD_free(%struct.TYPE_18__*) #1

declare dso_local i32 @OPENSSL_clear_free(i32*, i64) #1

declare dso_local %struct.TYPE_18__* @EVP_MD_fetch(i32*, i32, i8*) #1

declare dso_local i32 @OBJ_nid2sn(i64) #1

declare dso_local i32 @ossl_provider_ctx(i32*) #1

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local %struct.TYPE_18__* @ENGINE_get_digest(i32*, i64) #1

declare dso_local i32* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_19__*) #1

declare dso_local i32 @EVP_PKEY_CTX_ctrl(%struct.TYPE_19__*, i32, i32, i32, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
