; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_parse_crypt_info.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_parse_crypt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32* }

@False = common dso_local global i32 0, align 4
@SEC_RANDOM_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"random len %d, expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"We're going for the RDP4-style encryption\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Got Public key, RDP4-style\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"crypt tag 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"We're going for the RDP5-style encryption\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Server didn't send enough X509 certificates\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Ignored certs left: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Ignored Certificate length is %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"got a bad cert: this will probably screw up the rest of the communication\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"CA Certificate length is %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Couldn't load CA Certificate from server\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Certificate length is %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Couldn't load Certificate from server\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Security error CA Certificate invalid\0A\00", align 1
@g_server_public_key_len = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"Didn't parse X509 correctly\0A\00", align 1
@SEC_MODULUS_SIZE = common dso_local global i32 0, align 4
@SEC_MAX_MODULUS_SIZE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [38 x i8] c"Bad server public key size (%u bits)\0A\00", align 1
@SEC_EXPONENT_SIZE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"Problem extracting RSA exponent, modulus\00", align 1
@True = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64*, i32**, i32*, i32*)* @sec_parse_crypt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_parse_crypt_info(%struct.TYPE_10__* %0, i64* %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @in_uint32_le(%struct.TYPE_10__* %28, i64 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @in_uint32_le(%struct.TYPE_10__* %32, i64 %33)
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @False, align 4
  store i32 %38, i32* %6, align 4
  br label %279

39:                                               ; preds = %5
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @in_uint32_le(%struct.TYPE_10__* %40, i64 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @in_uint32_le(%struct.TYPE_10__* %43, i64 %44)
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @SEC_RANDOM_SIZE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @SEC_RANDOM_SIZE, align 8
  %52 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load i32, i32* @False, align 4
  store i32 %53, i32* %6, align 4
  br label %279

54:                                               ; preds = %39
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = load i32**, i32*** %9, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @in_uint8p(%struct.TYPE_10__* %55, i32* %57, i64 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %24, align 8
  %65 = load i32*, i32** %24, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ugt i32* %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* @False, align 4
  store i32 %71, i32* %6, align 4
  br label %279

72:                                               ; preds = %54
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = load i64, i64* %17, align 8
  %75 = call i32 @in_uint32_le(%struct.TYPE_10__* %73, i64 %74)
  %76 = load i64, i64* %17, align 8
  %77 = and i64 %76, 1
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %131

79:                                               ; preds = %72
  %80 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = call i32 @in_uint8s(%struct.TYPE_10__* %81, i32 8)
  br label %83

83:                                               ; preds = %126, %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %24, align 8
  %88 = icmp ult i32* %86, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %83
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = load i32, i32* %21, align 4
  %92 = call i32 @in_uint16_le(%struct.TYPE_10__* %90, i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = load i32, i32* %22, align 4
  %95 = call i32 @in_uint16_le(%struct.TYPE_10__* %93, i32 %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32* %101, i32** %23, align 8
  %102 = load i32, i32* %21, align 4
  switch i32 %102, label %123 [
    i32 128, label %103
    i32 129, label %113
  ]

103:                                              ; preds = %89
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @sec_parse_public_key(%struct.TYPE_10__* %104, i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @False, align 4
  store i32 %110, i32* %6, align 4
  br label %279

111:                                              ; preds = %103
  %112 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %126

113:                                              ; preds = %89
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = load i32, i32* %22, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @sec_parse_public_sig(%struct.TYPE_10__* %114, i32 %115, i32* %116, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* @False, align 4
  store i32 %121, i32* %6, align 4
  br label %279

122:                                              ; preds = %113
  br label %126

123:                                              ; preds = %89
  %124 = load i32, i32* %21, align 4
  %125 = call i32 @unimpl(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %122, %111
  %127 = load i32*, i32** %23, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32* %127, i32** %129, align 8
  br label %83

130:                                              ; preds = %83
  br label %276

131:                                              ; preds = %72
  %132 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = load i64, i64* %25, align 8
  %135 = call i32 @in_uint32_le(%struct.TYPE_10__* %133, i64 %134)
  %136 = load i64, i64* %25, align 8
  %137 = icmp slt i64 %136, 2
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32, i32* @False, align 4
  store i32 %140, i32* %6, align 4
  br label %279

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %169, %141
  %143 = load i64, i64* %25, align 8
  %144 = icmp sgt i64 %143, 2
  br i1 %144, label %145, label %172

145:                                              ; preds = %142
  %146 = load i64, i64* %25, align 8
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @DEBUG_RDP5(i8* %147)
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = load i64, i64* %26, align 8
  %151 = call i32 @in_uint32_le(%struct.TYPE_10__* %149, i64 %150)
  %152 = load i64, i64* %26, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = call i32 @DEBUG_RDP5(i8* %153)
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %26, align 8
  %159 = call i32* @rdssl_cert_read(i32* %157, i64 %158)
  store i32* %159, i32** %27, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = load i64, i64* %26, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @in_uint8s(%struct.TYPE_10__* %160, i32 %162)
  %164 = load i32*, i32** %27, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %145
  %167 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %145
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %25, align 8
  %171 = add nsw i64 %170, -1
  store i64 %171, i64* %25, align 8
  br label %142

172:                                              ; preds = %142
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %174 = load i64, i64* %15, align 8
  %175 = call i32 @in_uint32_le(%struct.TYPE_10__* %173, i64 %174)
  %176 = load i64, i64* %15, align 8
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 @DEBUG_RDP5(i8* %177)
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* %15, align 8
  %183 = call i32* @rdssl_cert_read(i32* %181, i64 %182)
  store i32* %183, i32** %18, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %185 = load i64, i64* %15, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @in_uint8s(%struct.TYPE_10__* %184, i32 %186)
  %188 = load i32*, i32** %18, align 8
  %189 = icmp eq i32* null, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %172
  %191 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %192 = load i32, i32* @False, align 4
  store i32 %192, i32* %6, align 4
  br label %279

193:                                              ; preds = %172
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %195 = load i64, i64* %16, align 8
  %196 = call i32 @in_uint32_le(%struct.TYPE_10__* %194, i64 %195)
  %197 = load i64, i64* %16, align 8
  %198 = inttoptr i64 %197 to i8*
  %199 = call i32 @DEBUG_RDP5(i8* %198)
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* %16, align 8
  %204 = call i32* @rdssl_cert_read(i32* %202, i64 %203)
  store i32* %204, i32** %19, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %206 = load i64, i64* %16, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 @in_uint8s(%struct.TYPE_10__* %205, i32 %207)
  %209 = load i32*, i32** %19, align 8
  %210 = icmp eq i32* null, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %193
  %212 = load i32*, i32** %18, align 8
  %213 = call i32 @rdssl_cert_free(i32* %212)
  %214 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %215 = load i32, i32* @False, align 4
  store i32 %215, i32* %6, align 4
  br label %279

216:                                              ; preds = %193
  %217 = load i32*, i32** %19, align 8
  %218 = load i32*, i32** %18, align 8
  %219 = call i32 @rdssl_certs_ok(i32* %217, i32* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %216
  %222 = load i32*, i32** %19, align 8
  %223 = call i32 @rdssl_cert_free(i32* %222)
  %224 = load i32*, i32** %18, align 8
  %225 = call i32 @rdssl_cert_free(i32* %224)
  %226 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %227 = load i32, i32* @False, align 4
  store i32 %227, i32* %6, align 4
  br label %279

228:                                              ; preds = %216
  %229 = load i32*, i32** %18, align 8
  %230 = call i32 @rdssl_cert_free(i32* %229)
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %232 = call i32 @in_uint8s(%struct.TYPE_10__* %231, i32 16)
  %233 = load i32*, i32** %19, align 8
  %234 = call i32* @rdssl_cert_to_rkey(i32* %233, i32* @g_server_public_key_len)
  store i32* %234, i32** %20, align 8
  %235 = load i32*, i32** %20, align 8
  %236 = icmp eq i32* null, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %228
  %238 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %239 = load i32*, i32** %19, align 8
  %240 = call i32 @rdssl_cert_free(i32* %239)
  %241 = load i32, i32* @False, align 4
  store i32 %241, i32* %6, align 4
  br label %279

242:                                              ; preds = %228
  %243 = load i32*, i32** %19, align 8
  %244 = call i32 @rdssl_cert_free(i32* %243)
  %245 = load i32, i32* @g_server_public_key_len, align 4
  %246 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %252, label %248

248:                                              ; preds = %242
  %249 = load i32, i32* @g_server_public_key_len, align 4
  %250 = load i32, i32* @SEC_MAX_MODULUS_SIZE, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %248, %242
  %253 = load i32, i32* @g_server_public_key_len, align 4
  %254 = mul nsw i32 %253, 8
  %255 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %254)
  %256 = load i32*, i32** %20, align 8
  %257 = call i32 @rdssl_rkey_free(i32* %256)
  %258 = load i32, i32* @False, align 4
  store i32 %258, i32* %6, align 4
  br label %279

259:                                              ; preds = %248
  %260 = load i32*, i32** %20, align 8
  %261 = load i32*, i32** %11, align 8
  %262 = load i32, i32* @SEC_EXPONENT_SIZE, align 4
  %263 = load i32*, i32** %10, align 8
  %264 = load i32, i32* @SEC_MAX_MODULUS_SIZE, align 4
  %265 = call i64 @rdssl_rkey_get_exp_mod(i32* %260, i32* %261, i32 %262, i32* %263, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %259
  %268 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %269 = load i32*, i32** %20, align 8
  %270 = call i32 @rdssl_rkey_free(i32* %269)
  %271 = load i32, i32* @False, align 4
  store i32 %271, i32* %6, align 4
  br label %279

272:                                              ; preds = %259
  %273 = load i32*, i32** %20, align 8
  %274 = call i32 @rdssl_rkey_free(i32* %273)
  %275 = load i32, i32* @True, align 4
  store i32 %275, i32* %6, align 4
  br label %279

276:                                              ; preds = %130
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %278 = call i32 @s_check_end(%struct.TYPE_10__* %277)
  store i32 %278, i32* %6, align 4
  br label %279

279:                                              ; preds = %276, %272, %267, %252, %237, %221, %211, %190, %138, %120, %109, %70, %49, %37
  %280 = load i32, i32* %6, align 4
  ret i32 %280
}

declare dso_local i32 @in_uint32_le(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @in_uint8p(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @in_uint8s(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @in_uint16_le(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sec_parse_public_key(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @sec_parse_public_sig(%struct.TYPE_10__*, i32, i32*, i32*) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32* @rdssl_cert_read(i32*, i64) #1

declare dso_local i32 @rdssl_cert_free(i32*) #1

declare dso_local i32 @rdssl_certs_ok(i32*, i32*) #1

declare dso_local i32* @rdssl_cert_to_rkey(i32*, i32*) #1

declare dso_local i32 @rdssl_rkey_free(i32*) #1

declare dso_local i64 @rdssl_rkey_get_exp_mod(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @s_check_end(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
