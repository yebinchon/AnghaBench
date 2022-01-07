; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_pmeth.c_pkey_ec_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_pmeth.c_pkey_ec_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i8*, i32, i32*, i32*, i32*, i32* }

@EC_F_PKEY_EC_CTRL = common dso_local global i32 0, align 4
@EC_R_INVALID_CURVE = common dso_local global i32 0, align 4
@EC_R_NO_PARAMETERS_SET = common dso_local global i32 0, align 4
@EC_FLAG_COFACTOR_ECDH = common dso_local global i32 0, align 4
@EVP_PKEY_ECDH_KDF_NONE = common dso_local global i32 0, align 4
@EVP_PKEY_ECDH_KDF_X9_63 = common dso_local global i32 0, align 4
@NID_sha1 = common dso_local global i32 0, align 4
@NID_ecdsa_with_SHA1 = common dso_local global i32 0, align 4
@NID_sha224 = common dso_local global i32 0, align 4
@NID_sha256 = common dso_local global i32 0, align 4
@NID_sha384 = common dso_local global i32 0, align 4
@NID_sha512 = common dso_local global i32 0, align 4
@NID_sha3_224 = common dso_local global i32 0, align 4
@NID_sha3_256 = common dso_local global i32 0, align 4
@NID_sha3_384 = common dso_local global i32 0, align 4
@NID_sha3_512 = common dso_local global i32 0, align 4
@NID_sm3 = common dso_local global i32 0, align 4
@EC_R_INVALID_DIGEST_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i8*)* @pkey_ec_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_ec_ctrl(%struct.TYPE_13__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %10, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %307 [
    i32 136, label %18
    i32 135, label %35
    i32 141, label %50
    i32 138, label %151
    i32 140, label %171
    i32 134, label %176
    i32 139, label %182
    i32 133, label %191
    i32 137, label %198
    i32 132, label %216
    i32 130, label %225
    i32 131, label %300
    i32 129, label %306
    i32 142, label %306
    i32 128, label %306
    i32 143, label %306
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i32* @EC_GROUP_new_by_curve_name(i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @EC_F_PKEY_EC_CTRL, align 4
  %25 = load i32, i32* @EC_R_INVALID_CURVE, align 4
  %26 = call i32 @ECerr(i32 %24, i32 %25)
  store i32 0, i32* %5, align 4
  br label %308

27:                                               ; preds = %18
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @EC_GROUP_free(i32* %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 8
  store i32* %32, i32** %34, align 8
  store i32 1, i32* %5, align 4
  br label %308

35:                                               ; preds = %4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EC_F_PKEY_EC_CTRL, align 4
  %42 = load i32, i32* @EC_R_NO_PARAMETERS_SET, align 4
  %43 = call i32 @ECerr(i32 %41, i32 %42)
  store i32 0, i32* %5, align 4
  br label %308

44:                                               ; preds = %35
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @EC_GROUP_set_asn1_flag(i32* %47, i32 %48)
  store i32 1, i32* %5, align 4
  br label %308

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, -2
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %5, align 4
  br label %308

62:                                               ; preds = %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %12, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %70 = call i32 @EC_KEY_get_flags(%struct.TYPE_15__* %69)
  %71 = load i32, i32* @EC_FLAG_COFACTOR_ECDH, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  store i32 %75, i32* %5, align 4
  br label %308

76:                                               ; preds = %50
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, -1
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %76
  store i32 -2, i32* %5, align 4
  br label %308

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %143

90:                                               ; preds = %84
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %13, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = icmp ne %struct.TYPE_12__* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  store i32 -2, i32* %5, align 4
  br label %308

102:                                              ; preds = %90
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @BN_is_one(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 1, i32* %5, align 4
  br label %308

111:                                              ; preds = %102
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 7
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %127, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %118 = call i32* @EC_KEY_dup(%struct.TYPE_15__* %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 7
  store i32* %118, i32** %120, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %308

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %111
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @EC_FLAG_COFACTOR_ECDH, align 4
  %135 = call i32 @EC_KEY_set_flags(i32* %133, i32 %134)
  br label %142

136:                                              ; preds = %127
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 7
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @EC_FLAG_COFACTOR_ECDH, align 4
  %141 = call i32 @EC_KEY_clear_flags(i32* %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %130
  br label %150

143:                                              ; preds = %84
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 7
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @EC_KEY_free(i32* %146)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 7
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %143, %142
  store i32 1, i32* %5, align 4
  br label %308

151:                                              ; preds = %4
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, -2
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %5, align 4
  br label %308

158:                                              ; preds = %151
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @EVP_PKEY_ECDH_KDF_NONE, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @EVP_PKEY_ECDH_KDF_X9_63, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 -2, i32* %5, align 4
  br label %308

167:                                              ; preds = %162, %158
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  store i32 1, i32* %5, align 4
  br label %308

171:                                              ; preds = %4
  %172 = load i8*, i8** %9, align 8
  %173 = bitcast i8* %172 to i32*
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 6
  store i32* %173, i32** %175, align 8
  store i32 1, i32* %5, align 4
  br label %308

176:                                              ; preds = %4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = bitcast i8* %180 to i32**
  store i32* %179, i32** %181, align 8
  store i32 1, i32* %5, align 4
  br label %308

182:                                              ; preds = %4
  %183 = load i32, i32* %8, align 4
  %184 = icmp sle i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 -2, i32* %5, align 4
  br label %308

186:                                              ; preds = %182
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  store i32 1, i32* %5, align 4
  br label %308

191:                                              ; preds = %4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = load i8*, i8** %9, align 8
  %197 = bitcast i8* %196 to i32*
  store i32 %195, i32* %197, align 4
  store i32 1, i32* %5, align 4
  br label %308

198:                                              ; preds = %4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @OPENSSL_free(i8* %201)
  %203 = load i8*, i8** %9, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 3
  store i8* %203, i8** %205, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %198
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 8
  br label %215

212:                                              ; preds = %198
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 4
  store i32 0, i32* %214, align 8
  br label %215

215:                                              ; preds = %212, %208
  store i32 1, i32* %5, align 4
  br label %308

216:                                              ; preds = %4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = bitcast i8* %220 to i8**
  store i8* %219, i8** %221, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* %5, align 4
  br label %308

225:                                              ; preds = %4
  %226 = load i8*, i8** %9, align 8
  %227 = bitcast i8* %226 to i32*
  %228 = call i32 @EVP_MD_type(i32* %227)
  %229 = load i32, i32* @NID_sha1, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %295

231:                                              ; preds = %225
  %232 = load i8*, i8** %9, align 8
  %233 = bitcast i8* %232 to i32*
  %234 = call i32 @EVP_MD_type(i32* %233)
  %235 = load i32, i32* @NID_ecdsa_with_SHA1, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %295

237:                                              ; preds = %231
  %238 = load i8*, i8** %9, align 8
  %239 = bitcast i8* %238 to i32*
  %240 = call i32 @EVP_MD_type(i32* %239)
  %241 = load i32, i32* @NID_sha224, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %295

243:                                              ; preds = %237
  %244 = load i8*, i8** %9, align 8
  %245 = bitcast i8* %244 to i32*
  %246 = call i32 @EVP_MD_type(i32* %245)
  %247 = load i32, i32* @NID_sha256, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %295

249:                                              ; preds = %243
  %250 = load i8*, i8** %9, align 8
  %251 = bitcast i8* %250 to i32*
  %252 = call i32 @EVP_MD_type(i32* %251)
  %253 = load i32, i32* @NID_sha384, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %295

255:                                              ; preds = %249
  %256 = load i8*, i8** %9, align 8
  %257 = bitcast i8* %256 to i32*
  %258 = call i32 @EVP_MD_type(i32* %257)
  %259 = load i32, i32* @NID_sha512, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %295

261:                                              ; preds = %255
  %262 = load i8*, i8** %9, align 8
  %263 = bitcast i8* %262 to i32*
  %264 = call i32 @EVP_MD_type(i32* %263)
  %265 = load i32, i32* @NID_sha3_224, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %295

267:                                              ; preds = %261
  %268 = load i8*, i8** %9, align 8
  %269 = bitcast i8* %268 to i32*
  %270 = call i32 @EVP_MD_type(i32* %269)
  %271 = load i32, i32* @NID_sha3_256, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %295

273:                                              ; preds = %267
  %274 = load i8*, i8** %9, align 8
  %275 = bitcast i8* %274 to i32*
  %276 = call i32 @EVP_MD_type(i32* %275)
  %277 = load i32, i32* @NID_sha3_384, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %295

279:                                              ; preds = %273
  %280 = load i8*, i8** %9, align 8
  %281 = bitcast i8* %280 to i32*
  %282 = call i32 @EVP_MD_type(i32* %281)
  %283 = load i32, i32* @NID_sha3_512, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %279
  %286 = load i8*, i8** %9, align 8
  %287 = bitcast i8* %286 to i32*
  %288 = call i32 @EVP_MD_type(i32* %287)
  %289 = load i32, i32* @NID_sm3, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %285
  %292 = load i32, i32* @EC_F_PKEY_EC_CTRL, align 4
  %293 = load i32, i32* @EC_R_INVALID_DIGEST_TYPE, align 4
  %294 = call i32 @ECerr(i32 %292, i32 %293)
  store i32 0, i32* %5, align 4
  br label %308

295:                                              ; preds = %285, %279, %273, %267, %261, %255, %249, %243, %237, %231, %225
  %296 = load i8*, i8** %9, align 8
  %297 = bitcast i8* %296 to i32*
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 5
  store i32* %297, i32** %299, align 8
  store i32 1, i32* %5, align 4
  br label %308

300:                                              ; preds = %4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 5
  %303 = load i32*, i32** %302, align 8
  %304 = load i8*, i8** %9, align 8
  %305 = bitcast i8* %304 to i32**
  store i32* %303, i32** %305, align 8
  store i32 1, i32* %5, align 4
  br label %308

306:                                              ; preds = %4, %4, %4, %4
  store i32 1, i32* %5, align 4
  br label %308

307:                                              ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %308

308:                                              ; preds = %307, %306, %300, %295, %291, %216, %215, %191, %186, %185, %176, %171, %167, %166, %154, %150, %125, %110, %101, %82, %62, %58, %44, %40, %27, %23
  %309 = load i32, i32* %5, align 4
  ret i32 %309
}

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @EC_GROUP_set_asn1_flag(i32*, i32) #1

declare dso_local i32 @EC_KEY_get_flags(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_is_one(i32) #1

declare dso_local i32* @EC_KEY_dup(%struct.TYPE_15__*) #1

declare dso_local i32 @EC_KEY_set_flags(i32*, i32) #1

declare dso_local i32 @EC_KEY_clear_flags(i32*, i32) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
