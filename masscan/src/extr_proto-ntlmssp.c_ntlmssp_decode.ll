; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ntlmssp.c_ntlmssp_decode.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ntlmssp.c_ntlmssp_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NtlmsspDecode = type { i64, i64, i8* }
%struct.BannerOutput = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"NTLMSSP\00", align 1
@PROTO_SMB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" version=%u.%u.%u ntlm-ver=%u\00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"name-dns\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"domain-dns\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"forest\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"target\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntlmssp_decode(%struct.NtlmsspDecode* %0, i8* %1, i64 %2, %struct.BannerOutput* %3) #0 {
  %5 = alloca %struct.NtlmsspDecode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.BannerOutput*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.NtlmsspDecode* %0, %struct.NtlmsspDecode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.BannerOutput* %3, %struct.BannerOutput** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %20 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %23 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %21, %24
  %26 = icmp ugt i64 %18, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %29 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %32 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %27, %4
  %36 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %37 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %42 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %48 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @MALLOC(i64 %49)
  %51 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %52 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %54 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = zext i32 %60 to i64
  %62 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %63 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %411

64:                                               ; preds = %40, %35
  %65 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %66 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %64
  %70 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %71 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %74 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @memcpy(i8* %76, i8* %77, i64 %78)
  %80 = load i64, i64* %7, align 8
  %81 = trunc i64 %80 to i32
  %82 = zext i32 %81 to i64
  %83 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %84 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %88 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %91 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %69
  br label %411

95:                                               ; preds = %69
  %96 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %97 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %6, align 8
  %99 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %100 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %95, %64
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %7, align 8
  %105 = icmp ult i64 %104, 56
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %399

107:                                              ; preds = %103
  %108 = load i8*, i8** %6, align 8
  %109 = call i64 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %108, i32 8)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %399

112:                                              ; preds = %107
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 8
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 9
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 8
  %122 = or i32 %116, %121
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 10
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl i32 %126, 16
  %128 = or i32 %122, %127
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 11
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = shl i32 %132, 24
  %134 = or i32 %128, %133
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 2
  br i1 %136, label %137, label %138

137:                                              ; preds = %112
  br label %399

138:                                              ; preds = %112
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 12
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 13
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = shl i32 %146, 8
  %148 = or i32 %142, %147
  store i32 %148, i32* %11, align 4
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 16
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 17
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = shl i32 %156, 8
  %158 = or i32 %152, %157
  %159 = load i8*, i8** %6, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 18
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = shl i32 %162, 16
  %164 = or i32 %158, %163
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 19
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = shl i32 %168, 24
  %170 = or i32 %164, %169
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %138
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  %176 = add i32 %174, %175
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %7, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %182 = load i32, i32* @PROTO_SMB, align 4
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %10, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i32, i32* %11, align 4
  %188 = zext i32 %187 to i64
  %189 = call i32 @append_unicode_string(%struct.BannerOutput* %181, i32 %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %186, i64 %188)
  br label %190

190:                                              ; preds = %180, %173, %138
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 40
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = load i8*, i8** %6, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 41
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = shl i32 %198, 8
  %200 = or i32 %194, %199
  store i32 %200, i32* %13, align 4
  %201 = load i8*, i8** %6, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 44
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8*, i8** %6, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 45
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = shl i32 %208, 8
  %210 = or i32 %204, %209
  %211 = load i8*, i8** %6, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 46
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = shl i32 %214, 16
  %216 = or i32 %210, %215
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 47
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = shl i32 %220, 24
  %222 = or i32 %216, %221
  store i32 %222, i32* %12, align 4
  %223 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 48
  %226 = load i8, i8* %225, align 1
  %227 = load i8*, i8** %6, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 49
  %229 = load i8, i8* %228, align 1
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 50
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 51
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = shl i32 %237, 8
  %239 = or i32 %233, %238
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %6, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 55
  %243 = load i8, i8* %242, align 1
  %244 = call i32 @sprintf_s(i8* %223, i32 64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %226, i8 zeroext %229, i8 zeroext %240, i8 zeroext %243)
  %245 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %246 = load i32, i32* @PROTO_SMB, align 4
  %247 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %248 = load i32, i32* @AUTO_LEN, align 4
  %249 = call i32 @banout_append(%struct.BannerOutput* %245, i32 %246, i8* %247, i32 %248)
  %250 = load i32, i32* %12, align 4
  store i32 %250, i32* %14, align 4
  br label %251

251:                                              ; preds = %393, %330, %190
  %252 = load i32, i32* %14, align 4
  %253 = add i32 %252, 4
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %13, align 4
  %256 = add i32 %254, %255
  %257 = icmp ult i32 %253, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = load i32, i32* %14, align 4
  %260 = add i32 %259, 4
  %261 = zext i32 %260 to i64
  %262 = load i64, i64* %7, align 8
  %263 = icmp ult i64 %261, %262
  br label %264

264:                                              ; preds = %258, %251
  %265 = phi i1 [ false, %251 ], [ %263, %258 ]
  br i1 %265, label %266, label %398

266:                                              ; preds = %264
  %267 = load i8*, i8** %6, align 8
  %268 = load i32, i32* %14, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = load i8*, i8** %6, align 8
  %274 = load i32, i32* %14, align 4
  %275 = add i32 %274, 1
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %273, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = shl i32 %279, 8
  %281 = or i32 %272, %280
  store i32 %281, i32* %16, align 4
  %282 = load i8*, i8** %6, align 8
  %283 = load i32, i32* %14, align 4
  %284 = add i32 %283, 2
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = load i8*, i8** %6, align 8
  %290 = load i32, i32* %14, align 4
  %291 = add i32 %290, 3
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %289, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = shl i32 %295, 8
  %297 = or i32 %288, %296
  %298 = sext i32 %297 to i64
  store i64 %298, i64* %17, align 8
  %299 = load i32, i32* %14, align 4
  %300 = add i32 %299, 4
  store i32 %300, i32* %14, align 4
  %301 = load i64, i64* %17, align 8
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* %13, align 4
  %304 = add i32 %302, %303
  %305 = load i32, i32* %14, align 4
  %306 = sub i32 %304, %305
  %307 = zext i32 %306 to i64
  %308 = icmp ugt i64 %301, %307
  br i1 %308, label %309, label %316

309:                                              ; preds = %266
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %13, align 4
  %312 = add i32 %310, %311
  %313 = load i32, i32* %14, align 4
  %314 = sub i32 %312, %313
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %17, align 8
  br label %316

316:                                              ; preds = %309, %266
  %317 = load i64, i64* %17, align 8
  %318 = load i64, i64* %7, align 8
  %319 = load i32, i32* %14, align 4
  %320 = zext i32 %319 to i64
  %321 = sub i64 %318, %320
  %322 = icmp ugt i64 %317, %321
  br i1 %322, label %323, label %328

323:                                              ; preds = %316
  %324 = load i64, i64* %7, align 8
  %325 = load i32, i32* %14, align 4
  %326 = zext i32 %325 to i64
  %327 = sub i64 %324, %326
  store i64 %327, i64* %17, align 8
  br label %328

328:                                              ; preds = %323, %316
  %329 = load i32, i32* %16, align 4
  switch i32 %329, label %392 [
    i32 0, label %330
    i32 1, label %334
    i32 2, label %343
    i32 3, label %352
    i32 4, label %361
    i32 5, label %370
    i32 6, label %379
    i32 7, label %380
    i32 8, label %381
    i32 9, label %382
    i32 10, label %391
  ]

330:                                              ; preds = %328
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %13, align 4
  %333 = add i32 %331, %332
  store i32 %333, i32* %14, align 4
  br label %251

334:                                              ; preds = %328
  %335 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %336 = load i32, i32* @PROTO_SMB, align 4
  %337 = load i8*, i8** %6, align 8
  %338 = load i32, i32* %14, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* %337, i64 %339
  %341 = load i64, i64* %17, align 8
  %342 = call i32 @append_unicode_string(%struct.BannerOutput* %335, i32 %336, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %340, i64 %341)
  br label %393

343:                                              ; preds = %328
  %344 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %345 = load i32, i32* @PROTO_SMB, align 4
  %346 = load i8*, i8** %6, align 8
  %347 = load i32, i32* %14, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i64, i64* %17, align 8
  %351 = call i32 @append_unicode_string(%struct.BannerOutput* %344, i32 %345, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %349, i64 %350)
  br label %393

352:                                              ; preds = %328
  %353 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %354 = load i32, i32* @PROTO_SMB, align 4
  %355 = load i8*, i8** %6, align 8
  %356 = load i32, i32* %14, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %355, i64 %357
  %359 = load i64, i64* %17, align 8
  %360 = call i32 @append_unicode_string(%struct.BannerOutput* %353, i32 %354, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %358, i64 %359)
  br label %393

361:                                              ; preds = %328
  %362 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %363 = load i32, i32* @PROTO_SMB, align 4
  %364 = load i8*, i8** %6, align 8
  %365 = load i32, i32* %14, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %364, i64 %366
  %368 = load i64, i64* %17, align 8
  %369 = call i32 @append_unicode_string(%struct.BannerOutput* %362, i32 %363, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %367, i64 %368)
  br label %393

370:                                              ; preds = %328
  %371 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %372 = load i32, i32* @PROTO_SMB, align 4
  %373 = load i8*, i8** %6, align 8
  %374 = load i32, i32* %14, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds i8, i8* %373, i64 %375
  %377 = load i64, i64* %17, align 8
  %378 = call i32 @append_unicode_string(%struct.BannerOutput* %371, i32 %372, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %376, i64 %377)
  br label %393

379:                                              ; preds = %328
  br label %393

380:                                              ; preds = %328
  br label %393

381:                                              ; preds = %328
  br label %393

382:                                              ; preds = %328
  %383 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %384 = load i32, i32* @PROTO_SMB, align 4
  %385 = load i8*, i8** %6, align 8
  %386 = load i32, i32* %14, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* %385, i64 %387
  %389 = load i64, i64* %17, align 8
  %390 = call i32 @append_unicode_string(%struct.BannerOutput* %383, i32 %384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %388, i64 %389)
  br label %393

391:                                              ; preds = %328
  br label %393

392:                                              ; preds = %328
  br label %393

393:                                              ; preds = %392, %391, %382, %381, %380, %379, %370, %361, %352, %343, %334
  %394 = load i64, i64* %17, align 8
  %395 = trunc i64 %394 to i32
  %396 = load i32, i32* %14, align 4
  %397 = add i32 %396, %395
  store i32 %397, i32* %14, align 4
  br label %251

398:                                              ; preds = %264
  br label %399

399:                                              ; preds = %398, %137, %111, %106
  %400 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %401 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %400, i32 0, i32 2
  %402 = load i8*, i8** %401, align 8
  %403 = icmp ne i8* %402, null
  br i1 %403, label %404, label %411

404:                                              ; preds = %399
  %405 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %406 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %405, i32 0, i32 2
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @free(i8* %407)
  %409 = load %struct.NtlmsspDecode*, %struct.NtlmsspDecode** %5, align 8
  %410 = getelementptr inbounds %struct.NtlmsspDecode, %struct.NtlmsspDecode* %409, i32 0, i32 2
  store i8* null, i8** %410, align 8
  br label %411

411:                                              ; preds = %46, %94, %404, %399
  ret void
}

declare dso_local i8* @MALLOC(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @append_unicode_string(%struct.BannerOutput*, i32, i8*, i8*, i64) #1

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
