; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ntlm.c_ntlm_phase_3.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ntlm.c_ntlm_phase_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_proxy_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.gc_arena = type { i32 }

@MD4_DIGEST_LENGTH = common dso_local global i32 0, align 4
@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@HTTP_AUTH_NTLM2 = common dso_local global i64 0, align 8
@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Warning: Username or domain too long\00", align 1
@DES_KEY_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"NTLMSSP\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ntlm_phase_3(%struct.http_proxy_info* %0, i8* %1, %struct.gc_arena* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_proxy_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gc_arena*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca [128 x i32], align 16
  %10 = alloca [464 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [8 x i32], align 16
  %14 = alloca [24 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [144 x i32], align 16
  %18 = alloca [256 x i8], align 16
  %19 = alloca [128 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca [16 x i32], align 16
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca [128 x i8], align 16
  %27 = alloca [128 x i8], align 16
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  store %struct.http_proxy_info* %0, %struct.http_proxy_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.gc_arena* %2, %struct.gc_arena** %7, align 8
  %41 = load i32, i32* @MD4_DIGEST_LENGTH, align 4
  %42 = add nsw i32 %41, 5
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %11, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %12, align 8
  %46 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %20, align 8
  %49 = getelementptr inbounds [144 x i32], [144 x i32]* %17, i64 0, i64 0
  %50 = getelementptr inbounds i32, i32* %49, i64 16
  store i32* %50, i32** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 64, i32* %24, align 4
  %51 = load %struct.http_proxy_info*, %struct.http_proxy_info** %5, align 8
  %52 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HTTP_AUTH_NTLM2, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %29, align 4
  %57 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %58 = call i32 @CLEAR(i32* %57)
  %59 = load %struct.http_proxy_info*, %struct.http_proxy_info** %5, align 8
  %60 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = icmp sgt i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.http_proxy_info*, %struct.http_proxy_info** %5, align 8
  %68 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = icmp sgt i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  %75 = load %struct.http_proxy_info*, %struct.http_proxy_info** %5, align 8
  %76 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 92)
  store i8* %79, i8** %28, align 8
  %80 = load i8*, i8** %28, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %3
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %84 = load %struct.http_proxy_info*, %struct.http_proxy_info** %5, align 8
  %85 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strncpy(i8* %83, i8* %87, i64 127)
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 127
  store i8 0, i8* %89, align 1
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  store i8 0, i8* %90, align 16
  br label %118

91:                                               ; preds = %3
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %93 = load i8*, i8** %28, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i32 @strncpy(i8* %92, i8* %94, i64 127)
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 127
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %28, align 8
  %98 = load %struct.http_proxy_info*, %struct.http_proxy_info** %5, align 8
  %99 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %97 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  store i64 %104, i64* %25, align 8
  %105 = load i64, i64* %25, align 8
  %106 = icmp ugt i64 %105, 127
  br i1 %106, label %107, label %108

107:                                              ; preds = %91
  store i64 127, i64* %25, align 8
  br label %108

108:                                              ; preds = %107, %91
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %110 = load %struct.http_proxy_info*, %struct.http_proxy_info** %5, align 8
  %111 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i64, i64* %25, align 8
  %115 = call i32 @strncpy(i8* %109, i8* %113, i64 %114)
  %116 = load i64, i64* %25, align 8
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 %116
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %108, %82
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %120 = load %struct.http_proxy_info*, %struct.http_proxy_info** %5, align 8
  %121 = getelementptr inbounds %struct.http_proxy_info, %struct.http_proxy_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @unicodize(i8* %119, i8* %123)
  %125 = sub nsw i32 %124, 2
  store i32 %125, i32* %30, align 4
  %126 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %127 = bitcast i8* %126 to i32*
  %128 = load i32, i32* %30, align 4
  %129 = call i32 @gen_md4_hash(i32* %127, i32 %128, i32* %45)
  %130 = load i32, i32* @MD4_DIGEST_LENGTH, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %45, i64 %131
  %133 = call i32 @memset(i32* %132, i32 0, i32 5)
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %136 = call i32 @openvpn_base64_decode(i8* %134, i32* %135, i32 -1)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %118
  store i8* null, i8** %4, align 8
  store i32 1, i32* %31, align 4
  br label %353

140:                                              ; preds = %118
  store i32 0, i32* %15, align 4
  br label %141

141:                                              ; preds = %153, %140
  %142 = load i32, i32* %15, align 4
  %143 = icmp slt i32 %142, 8
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 24
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %151
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %144
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %141

156:                                              ; preds = %141
  %157 = load i32, i32* %29, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %271

159:                                              ; preds = %156
  %160 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %161 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %162 = call i32 @strcpy(i8* %160, i8* %161)
  %163 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %164 = call i32 @my_strupr(i8* %163)
  %165 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %166 = call i32 @strlen(i8* %165)
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %168 = call i32 @strlen(i8* %167)
  %169 = add nsw i32 %166, %168
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %170, 128
  br i1 %171, label %172, label %176

172:                                              ; preds = %159
  %173 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %174 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %175 = call i32 @strcat(i8* %173, i8* %174)
  br label %179

176:                                              ; preds = %159
  %177 = load i32, i32* @M_INFO, align 4
  %178 = call i32 @msg(i32 %177, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %172
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %181 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %182 = call i32 @unicodize(i8* %180, i8* %181)
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %184 = bitcast i8* %183 to i32*
  %185 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %186 = call i32 @strlen(i8* %185)
  %187 = mul nsw i32 2, %186
  %188 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %189 = call i32 @gen_hmac_md5(i32* %184, i32 %187, i32* %45, i32 %188, i32* %48)
  %190 = load i32*, i32** %22, align 8
  %191 = call i32 @memset(i32* %190, i32 0, i32 128)
  %192 = load i32*, i32** %22, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 1, i32* %193, align 4
  %194 = load i32*, i32** %22, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 1, i32* %195, align 4
  %196 = load i32*, i32** %22, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  store i32 0, i32* %197, align 4
  %198 = load i32*, i32** %22, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  %200 = call i32 @gen_timestamp(i32* %199)
  %201 = load i32*, i32** %22, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 16
  %203 = call i32 @gen_nonce(i32* %202)
  %204 = load i32*, i32** %22, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 24
  store i32 0, i32* %205, align 4
  store i64 20, i64* %33, align 8
  %206 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 20
  %207 = load i32, i32* %206, align 16
  %208 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 21
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 %209, 8
  %211 = or i32 %207, %210
  %212 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 22
  %213 = load i32, i32* %212, align 8
  %214 = shl i32 %213, 16
  %215 = or i32 %211, %214
  %216 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 23
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 %217, 24
  %219 = or i32 %215, %218
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %34, align 8
  %221 = load i64, i64* %34, align 8
  %222 = and i64 %221, 8388608
  %223 = icmp eq i64 %222, 8388608
  br i1 %223, label %224, label %249

224:                                              ; preds = %179
  %225 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 40
  %226 = load i32, i32* %225, align 16
  store i32 %226, i32* %32, align 4
  %227 = load i32, i32* %32, align 4
  %228 = icmp sgt i32 %227, 96
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  store i32 96, i32* %32, align 4
  br label %230

230:                                              ; preds = %229, %224
  %231 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 44
  %232 = load i32, i32* %231, align 16
  store i32 %232, i32* %36, align 4
  %233 = load i32, i32* %36, align 4
  %234 = load i32, i32* %32, align 4
  %235 = add nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = icmp ugt i64 %236, 512
  br i1 %237, label %238, label %239

238:                                              ; preds = %230
  store i8* null, i8** %4, align 8
  store i32 1, i32* %31, align 4
  br label %353

239:                                              ; preds = %230
  %240 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %241 = load i32, i32* %36, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32* %243, i32** %35, align 8
  %244 = load i32*, i32** %22, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 28
  %246 = load i32*, i32** %35, align 8
  %247 = load i32, i32* %32, align 4
  %248 = call i32 @memcpy(i32* %245, i32* %246, i32 %247)
  br label %250

249:                                              ; preds = %179
  store i32 0, i32* %32, align 4
  br label %250

250:                                              ; preds = %249, %239
  %251 = load i32*, i32** %22, align 8
  %252 = load i32, i32* %32, align 4
  %253 = add nsw i32 28, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  store i32 0, i32* %255, align 4
  %256 = load i32, i32* %32, align 4
  %257 = add nsw i32 32, %256
  store i32 %257, i32* %23, align 4
  %258 = getelementptr inbounds [144 x i32], [144 x i32]* %17, i64 0, i64 8
  %259 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %260 = call i32 @memcpy(i32* %258, i32* %259, i32 8)
  %261 = getelementptr inbounds [144 x i32], [144 x i32]* %17, i64 0, i64 8
  %262 = load i32, i32* %23, align 4
  %263 = add nsw i32 %262, 8
  %264 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %265 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %266 = call i32 @gen_hmac_md5(i32* %261, i32 %263, i32* %48, i32 %264, i32* %265)
  %267 = getelementptr inbounds [144 x i32], [144 x i32]* %17, i64 0, i64 0
  %268 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %269 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %270 = call i32 @memcpy(i32* %267, i32* %268, i32 %269)
  br label %309

271:                                              ; preds = %156
  %272 = load i32, i32* @DES_KEY_LENGTH, align 4
  %273 = zext i32 %272 to i64
  %274 = call i8* @llvm.stacksave()
  store i8* %274, i8** %37, align 8
  %275 = alloca i8, i64 %273, align 16
  store i64 %273, i64* %38, align 8
  %276 = load i32, i32* @DES_KEY_LENGTH, align 4
  %277 = zext i32 %276 to i64
  %278 = alloca i8, i64 %277, align 16
  store i64 %277, i64* %39, align 8
  %279 = load i32, i32* @DES_KEY_LENGTH, align 4
  %280 = zext i32 %279 to i64
  %281 = alloca i8, i64 %280, align 16
  store i64 %280, i64* %40, align 8
  %282 = call i32 @create_des_keys(i32* %45, i8* %275)
  %283 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %284 = getelementptr inbounds [24 x i32], [24 x i32]* %14, i64 0, i64 0
  %285 = call i32 @cipher_des_encrypt_ecb(i8* %275, i32* %283, i32* %284)
  %286 = load i32, i32* @DES_KEY_LENGTH, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %45, i64 %288
  %290 = call i32 @create_des_keys(i32* %289, i8* %278)
  %291 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %292 = load i32, i32* @DES_KEY_LENGTH, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [24 x i32], [24 x i32]* %14, i64 0, i64 %293
  %295 = call i32 @cipher_des_encrypt_ecb(i8* %278, i32* %291, i32* %294)
  %296 = load i32, i32* @DES_KEY_LENGTH, align 4
  %297 = sub nsw i32 %296, 1
  %298 = mul nsw i32 2, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %45, i64 %299
  %301 = call i32 @create_des_keys(i32* %300, i8* %281)
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %303 = load i32, i32* @DES_KEY_LENGTH, align 4
  %304 = mul nsw i32 %303, 2
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [24 x i32], [24 x i32]* %14, i64 0, i64 %305
  %307 = call i32 @cipher_des_encrypt_ecb(i8* %281, i32* %302, i32* %306)
  %308 = load i8*, i8** %37, align 8
  call void @llvm.stackrestore(i8* %308)
  br label %309

309:                                              ; preds = %271, %250
  %310 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 0
  %311 = call i32 @memset(i32* %310, i32 0, i32 1856)
  %312 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 0
  %313 = bitcast i32* %312 to i8*
  %314 = call i32 @strcpy(i8* %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %315 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 8
  store i32 3, i32* %315, align 16
  %316 = load i32, i32* %29, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %309
  %319 = getelementptr inbounds [144 x i32], [144 x i32]* %17, i64 0, i64 0
  %320 = load i32, i32* %23, align 4
  %321 = add nsw i32 %320, 16
  %322 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 0
  %323 = call i32 (i32, ...) @add_security_buffer(i32 20, i32* %319, i32 %321, i32* %322, i32* %24)
  br label %328

324:                                              ; preds = %309
  %325 = getelementptr inbounds [24 x i32], [24 x i32]* %14, i64 0, i64 0
  %326 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 0
  %327 = call i32 (i32, ...) @add_security_buffer(i32 20, i32* %325, i32 24, i32* %326, i32* %24)
  br label %328

328:                                              ; preds = %324, %318
  %329 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %330 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %331 = call i32 @strlen(i8* %330)
  %332 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 0
  %333 = call i32 (i32, ...) @add_security_buffer(i32 36, i8* %329, i32 %331, i32* %332, i32* %24)
  %334 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %335 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %336 = call i32 @strlen(i8* %335)
  %337 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 0
  %338 = call i32 (i32, ...) @add_security_buffer(i32 28, i8* %334, i32 %336, i32* %337, i32* %24)
  %339 = load i32, i32* %24, align 4
  %340 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 16
  store i32 %339, i32* %340, align 16
  %341 = load i32, i32* %24, align 4
  %342 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 48
  store i32 %341, i32* %342, align 16
  %343 = load i32, i32* %24, align 4
  %344 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 56
  store i32 %343, i32* %344, align 16
  %345 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 60
  store i32 2, i32* %345, align 16
  %346 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 61
  store i32 2, i32* %346, align 4
  %347 = getelementptr inbounds [464 x i32], [464 x i32]* %10, i64 0, i64 0
  %348 = bitcast i32* %347 to i8*
  %349 = load i32, i32* %24, align 4
  %350 = load %struct.gc_arena*, %struct.gc_arena** %7, align 8
  %351 = call i64 @make_base64_string2(i8* %348, i32 %349, %struct.gc_arena* %350)
  %352 = inttoptr i64 %351 to i8*
  store i8* %352, i8** %4, align 8
  store i32 1, i32* %31, align 4
  br label %353

353:                                              ; preds = %328, %238, %139
  %354 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %354)
  %355 = load i8*, i8** %4, align 8
  ret i8* %355
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CLEAR(i32*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @unicodize(i8*, i8*) #2

declare dso_local i32 @gen_md4_hash(i32*, i32, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @openvpn_base64_decode(i8*, i32*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @my_strupr(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @msg(i32, i8*) #2

declare dso_local i32 @gen_hmac_md5(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @gen_timestamp(i32*) #2

declare dso_local i32 @gen_nonce(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @create_des_keys(i32*, i8*) #2

declare dso_local i32 @cipher_des_encrypt_ecb(i8*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @add_security_buffer(i32, ...) #2

declare dso_local i64 @make_base64_string2(i8*, i32, %struct.gc_arena*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
