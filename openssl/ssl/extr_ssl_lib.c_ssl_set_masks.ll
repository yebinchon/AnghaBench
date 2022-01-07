; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_set_masks.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_set_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__*, i64, i32*, i32* }
%struct.TYPE_9__ = type { i32 }

@SSL_PKEY_RSA = common dso_local global i64 0, align 8
@CERT_PKEY_VALID = common dso_local global i32 0, align 4
@SSL_PKEY_DSA_SIGN = common dso_local global i64 0, align 8
@SSL_PKEY_ECC = common dso_local global i64 0, align 8
@TLS_CIPHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"dh_tmp=%d rsa_enc=%d rsa_sign=%d dsa_sign=%d\0A\00", align 1
@SSL_PKEY_GOST12_512 = common dso_local global i64 0, align 8
@SSL_kGOST = common dso_local global i64 0, align 8
@SSL_aGOST12 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST12_256 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST01 = common dso_local global i64 0, align 8
@SSL_aGOST01 = common dso_local global i64 0, align 8
@SSL_kRSA = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_PKEY_RSA_PSS_SIGN = common dso_local global i64 0, align 8
@CERT_PKEY_EXPLICIT_SIGN = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i64 0, align 8
@SSL_aRSA = common dso_local global i64 0, align 8
@SSL_aDSS = common dso_local global i64 0, align 8
@SSL_aNULL = common dso_local global i64 0, align 8
@X509v3_KU_DIGITAL_SIGNATURE = common dso_local global i32 0, align 4
@CERT_PKEY_SIGN = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i64 0, align 8
@SSL_PKEY_ED25519 = common dso_local global i64 0, align 8
@SSL_PKEY_ED448 = common dso_local global i64 0, align 8
@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_kPSK = common dso_local global i64 0, align 8
@SSL_aPSK = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_kDHEPSK = common dso_local global i64 0, align 8
@SSL_kECDHEPSK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssl_set_masks(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = icmp eq %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %292

25:                                               ; preds = %1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %30, %25
  %41 = phi i1 [ true, %30 ], [ true, %25 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i64, i64* @SSL_PKEY_RSA, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CERT_PKEY_VALID, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i64, i64* @SSL_PKEY_RSA, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CERT_PKEY_VALID, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* @SSL_PKEY_DSA_SIGN, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CERT_PKEY_VALID, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i64, i64* @SSL_PKEY_ECC, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CERT_PKEY_VALID, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %11, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %67 = load i32, i32* @TLS_CIPHER, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @OSSL_TRACE4(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = load i64, i64* @SSL_PKEY_GOST12_512, align 8
  %75 = call i64 @ssl_has_cert(%struct.TYPE_12__* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %40
  %78 = load i64, i64* @SSL_kGOST, align 8
  %79 = load i64, i64* %9, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* @SSL_aGOST12, align 8
  %82 = load i64, i64* %10, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %77, %40
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = load i64, i64* @SSL_PKEY_GOST12_256, align 8
  %87 = call i64 @ssl_has_cert(%struct.TYPE_12__* %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i64, i64* @SSL_kGOST, align 8
  %91 = load i64, i64* %9, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* @SSL_aGOST12, align 8
  %94 = load i64, i64* %10, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = load i64, i64* @SSL_PKEY_GOST01, align 8
  %99 = call i64 @ssl_has_cert(%struct.TYPE_12__* %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i64, i64* @SSL_kGOST, align 8
  %103 = load i64, i64* %9, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* @SSL_aGOST01, align 8
  %106 = load i64, i64* %10, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %101, %96
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i64, i64* @SSL_kRSA, align 8
  %113 = load i64, i64* %9, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %9, align 8
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i64, i64* @SSL_kDHE, align 8
  %120 = load i64, i64* %9, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %9, align 8
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %146, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %130 = load i64, i64* @SSL_PKEY_RSA_PSS_SIGN, align 8
  %131 = call i64 @ssl_has_cert(%struct.TYPE_12__* %129, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %128
  %134 = load i32*, i32** %4, align 8
  %135 = load i64, i64* @SSL_PKEY_RSA_PSS_SIGN, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CERT_PKEY_EXPLICIT_SIGN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %133
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %143 = call i64 @TLS1_get_version(%struct.TYPE_12__* %142)
  %144 = load i64, i64* @TLS1_2_VERSION, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %141, %125, %122
  %147 = load i64, i64* @SSL_aRSA, align 8
  %148 = load i64, i64* %10, align 8
  %149 = or i64 %148, %147
  store i64 %149, i64* %10, align 8
  br label %150

150:                                              ; preds = %146, %141, %133, %128
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i64, i64* @SSL_aDSS, align 8
  %155 = load i64, i64* %10, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %10, align 8
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i64, i64* @SSL_aNULL, align 8
  %159 = load i64, i64* %10, align 8
  %160 = or i64 %159, %158
  store i64 %160, i64* %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %191

163:                                              ; preds = %157
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i64, i64* @SSL_PKEY_ECC, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @X509_get_key_usage(i32 %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @X509v3_KU_DIGITAL_SIGNATURE, align 4
  %174 = and i32 %172, %173
  store i32 %174, i32* %12, align 4
  %175 = load i32*, i32** %4, align 8
  %176 = load i64, i64* @SSL_PKEY_ECC, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @CERT_PKEY_SIGN, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %163
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %182, %163
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i64, i64* @SSL_aECDSA, align 8
  %188 = load i64, i64* %10, align 8
  %189 = or i64 %188, %187
  store i64 %189, i64* %10, align 8
  br label %190

190:                                              ; preds = %186, %183
  br label %191

191:                                              ; preds = %190, %157
  %192 = load i64, i64* %10, align 8
  %193 = load i64, i64* @SSL_aECDSA, align 8
  %194 = and i64 %192, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %218, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %198 = load i64, i64* @SSL_PKEY_ED25519, align 8
  %199 = call i64 @ssl_has_cert(%struct.TYPE_12__* %197, i64 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %196
  %202 = load i32*, i32** %4, align 8
  %203 = load i64, i64* @SSL_PKEY_ED25519, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @CERT_PKEY_EXPLICIT_SIGN, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %201
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %211 = call i64 @TLS1_get_version(%struct.TYPE_12__* %210)
  %212 = load i64, i64* @TLS1_2_VERSION, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i64, i64* @SSL_aECDSA, align 8
  %216 = load i64, i64* %10, align 8
  %217 = or i64 %216, %215
  store i64 %217, i64* %10, align 8
  br label %218

218:                                              ; preds = %214, %209, %201, %196, %191
  %219 = load i64, i64* %10, align 8
  %220 = load i64, i64* @SSL_aECDSA, align 8
  %221 = and i64 %219, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %245, label %223

223:                                              ; preds = %218
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %225 = load i64, i64* @SSL_PKEY_ED448, align 8
  %226 = call i64 @ssl_has_cert(%struct.TYPE_12__* %224, i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %223
  %229 = load i32*, i32** %4, align 8
  %230 = load i64, i64* @SSL_PKEY_ED448, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @CERT_PKEY_EXPLICIT_SIGN, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %228
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %238 = call i64 @TLS1_get_version(%struct.TYPE_12__* %237)
  %239 = load i64, i64* @TLS1_2_VERSION, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i64, i64* @SSL_aECDSA, align 8
  %243 = load i64, i64* %10, align 8
  %244 = or i64 %243, %242
  store i64 %244, i64* %10, align 8
  br label %245

245:                                              ; preds = %241, %236, %228, %223, %218
  %246 = load i64, i64* @SSL_kECDHE, align 8
  %247 = load i64, i64* %9, align 8
  %248 = or i64 %247, %246
  store i64 %248, i64* %9, align 8
  %249 = load i64, i64* @SSL_kPSK, align 8
  %250 = load i64, i64* %9, align 8
  %251 = or i64 %250, %249
  store i64 %251, i64* %9, align 8
  %252 = load i64, i64* @SSL_aPSK, align 8
  %253 = load i64, i64* %10, align 8
  %254 = or i64 %253, %252
  store i64 %254, i64* %10, align 8
  %255 = load i64, i64* %9, align 8
  %256 = load i64, i64* @SSL_kRSA, align 8
  %257 = and i64 %255, %256
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %245
  %260 = load i64, i64* @SSL_kRSAPSK, align 8
  %261 = load i64, i64* %9, align 8
  %262 = or i64 %261, %260
  store i64 %262, i64* %9, align 8
  br label %263

263:                                              ; preds = %259, %245
  %264 = load i64, i64* %9, align 8
  %265 = load i64, i64* @SSL_kDHE, align 8
  %266 = and i64 %264, %265
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i64, i64* @SSL_kDHEPSK, align 8
  %270 = load i64, i64* %9, align 8
  %271 = or i64 %270, %269
  store i64 %271, i64* %9, align 8
  br label %272

272:                                              ; preds = %268, %263
  %273 = load i64, i64* %9, align 8
  %274 = load i64, i64* @SSL_kECDHE, align 8
  %275 = and i64 %273, %274
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load i64, i64* @SSL_kECDHEPSK, align 8
  %279 = load i64, i64* %9, align 8
  %280 = or i64 %279, %278
  store i64 %280, i64* %9, align 8
  br label %281

281:                                              ; preds = %277, %272
  %282 = load i64, i64* %9, align 8
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  store i64 %282, i64* %286, align 8
  %287 = load i64, i64* %10, align 8
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 2
  store i64 %287, i64* %291, align 8
  br label %292

292:                                              ; preds = %281, %24
  ret void
}

declare dso_local i32 @OSSL_TRACE4(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @ssl_has_cert(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @TLS1_get_version(%struct.TYPE_12__*) #1

declare dso_local i32 @X509_get_key_usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
