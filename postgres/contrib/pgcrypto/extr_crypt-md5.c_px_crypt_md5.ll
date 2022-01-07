; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-md5.c_px_crypt_md5.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-md5.c_px_crypt_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@px_crypt_md5.magic = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [4 x i8] c"$1$\00", align 1
@px_crypt_md5.p = internal global i8* null, align 8
@px_crypt_md5.sp = internal global i8* null, align 8
@px_crypt_md5.ep = internal global i8* null, align 8
@MD5_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @px_crypt_md5(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* @MD5_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %27, 120
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %19, align 4
  br label %341

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** @px_crypt_md5.sp, align 8
  %32 = load i8*, i8** @px_crypt_md5.sp, align 8
  %33 = load i8*, i8** @px_crypt_md5.magic, align 8
  %34 = load i8*, i8** @px_crypt_md5.magic, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i64 @strncmp(i8* %32, i8* %33, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load i8*, i8** @px_crypt_md5.magic, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load i8*, i8** @px_crypt_md5.sp, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** @px_crypt_md5.sp, align 8
  br label %44

44:                                               ; preds = %38, %30
  %45 = load i8*, i8** @px_crypt_md5.sp, align 8
  store i8* %45, i8** @px_crypt_md5.ep, align 8
  br label %46

46:                                               ; preds = %64, %44
  %47 = load i8*, i8** @px_crypt_md5.ep, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i8*, i8** @px_crypt_md5.ep, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 36
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** @px_crypt_md5.ep, align 8
  %58 = load i8*, i8** @px_crypt_md5.sp, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  %60 = icmp ult i8* %57, %59
  br label %61

61:                                               ; preds = %56, %51, %46
  %62 = phi i1 [ false, %51 ], [ false, %46 ], [ %60, %56 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** @px_crypt_md5.ep, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** @px_crypt_md5.ep, align 8
  br label %46

67:                                               ; preds = %61
  %68 = load i8*, i8** @px_crypt_md5.ep, align 8
  %69 = load i8*, i8** @px_crypt_md5.sp, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %12, align 4
  %74 = call i32 @px_find_digest(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32** %15)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i8* null, i8** %5, align 8
  store i32 1, i32* %19, align 4
  br label %341

78:                                               ; preds = %67
  %79 = call i32 @px_find_digest(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32** %16)
  store i32 %79, i32* %17, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = call i32 @px_md_update(i32* %80, i8* %81, i32 %83)
  %85 = load i32*, i32** %15, align 8
  %86 = load i8*, i8** @px_crypt_md5.magic, align 8
  %87 = load i8*, i8** @px_crypt_md5.magic, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = call i32 @px_md_update(i32* %85, i8* %86, i32 %88)
  %90 = load i32*, i32** %15, align 8
  %91 = load i8*, i8** @px_crypt_md5.sp, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @px_md_update(i32* %90, i8* %91, i32 %92)
  %94 = load i32*, i32** %16, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = call i32 @px_md_update(i32* %94, i8* %95, i32 %97)
  %99 = load i32*, i32** %16, align 8
  %100 = load i8*, i8** @px_crypt_md5.sp, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @px_md_update(i32* %99, i8* %100, i32 %101)
  %103 = load i32*, i32** %16, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = call i32 @px_md_update(i32* %103, i8* %104, i32 %106)
  %108 = load i32*, i32** %16, align 8
  %109 = call i32 @px_md_finish(i32* %108, i8* %23)
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @strlen(i8* %110)
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %127, %78
  %113 = load i32, i32* %13, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %112
  %116 = load i32*, i32** %15, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @MD5_SIZE, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @MD5_SIZE, align 4
  br label %124

122:                                              ; preds = %115
  %123 = load i32, i32* %13, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = call i32 @px_md_update(i32* %116, i8* %23, i32 %125)
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @MD5_SIZE, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %13, align 4
  br label %112

131:                                              ; preds = %112
  %132 = trunc i64 %21 to i32
  %133 = call i32 @px_memset(i8* %23, i32 0, i32 %132)
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @strlen(i8* %134)
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %151, %131
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load i32, i32* %14, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32*, i32** %15, align 8
  %145 = call i32 @px_md_update(i32* %144, i8* %23, i32 1)
  br label %150

146:                                              ; preds = %139
  %147 = load i32*, i32** %15, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @px_md_update(i32* %147, i8* %148, i32 1)
  br label %150

150:                                              ; preds = %146, %143
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %14, align 4
  %153 = ashr i32 %152, 1
  store i32 %153, i32* %14, align 4
  br label %136

154:                                              ; preds = %136
  %155 = load i8*, i8** %8, align 8
  %156 = load i8*, i8** @px_crypt_md5.magic, align 8
  %157 = call i32 @strcpy(i8* %155, i8* %156)
  %158 = load i8*, i8** %8, align 8
  %159 = load i8*, i8** @px_crypt_md5.sp, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @strncat(i8* %158, i8* %159, i32 %160)
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @strcat(i8* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i32*, i32** %15, align 8
  %165 = call i32 @px_md_finish(i32* %164, i8* %23)
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %221, %154
  %167 = load i32, i32* %14, align 4
  %168 = icmp slt i32 %167, 1000
  br i1 %168, label %169, label %224

169:                                              ; preds = %166
  %170 = load i32*, i32** %16, align 8
  %171 = call i32 @px_md_reset(i32* %170)
  %172 = load i32, i32* %14, align 4
  %173 = and i32 %172, 1
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load i32*, i32** %16, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = call i32 @px_md_update(i32* %176, i8* %177, i32 %179)
  br label %185

181:                                              ; preds = %169
  %182 = load i32*, i32** %16, align 8
  %183 = load i32, i32* @MD5_SIZE, align 4
  %184 = call i32 @px_md_update(i32* %182, i8* %23, i32 %183)
  br label %185

185:                                              ; preds = %181, %175
  %186 = load i32, i32* %14, align 4
  %187 = srem i32 %186, 3
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i32*, i32** %16, align 8
  %191 = load i8*, i8** @px_crypt_md5.sp, align 8
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @px_md_update(i32* %190, i8* %191, i32 %192)
  br label %194

194:                                              ; preds = %189, %185
  %195 = load i32, i32* %14, align 4
  %196 = srem i32 %195, 7
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i32*, i32** %16, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 @strlen(i8* %201)
  %203 = call i32 @px_md_update(i32* %199, i8* %200, i32 %202)
  br label %204

204:                                              ; preds = %198, %194
  %205 = load i32, i32* %14, align 4
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i32*, i32** %16, align 8
  %210 = load i32, i32* @MD5_SIZE, align 4
  %211 = call i32 @px_md_update(i32* %209, i8* %23, i32 %210)
  br label %218

212:                                              ; preds = %204
  %213 = load i32*, i32** %16, align 8
  %214 = load i8*, i8** %6, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = call i32 @strlen(i8* %215)
  %217 = call i32 @px_md_update(i32* %213, i8* %214, i32 %216)
  br label %218

218:                                              ; preds = %212, %208
  %219 = load i32*, i32** %16, align 8
  %220 = call i32 @px_md_finish(i32* %219, i8* %23)
  br label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %14, align 4
  br label %166

224:                                              ; preds = %166
  %225 = load i8*, i8** %8, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = call i32 @strlen(i8* %226)
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  store i8* %229, i8** @px_crypt_md5.p, align 8
  %230 = getelementptr inbounds i8, i8* %23, i64 0
  %231 = load i8, i8* %230, align 16
  %232 = zext i8 %231 to i32
  %233 = shl i32 %232, 16
  %234 = getelementptr inbounds i8, i8* %23, i64 6
  %235 = load i8, i8* %234, align 2
  %236 = zext i8 %235 to i32
  %237 = shl i32 %236, 8
  %238 = or i32 %233, %237
  %239 = getelementptr inbounds i8, i8* %23, i64 12
  %240 = load i8, i8* %239, align 4
  %241 = zext i8 %240 to i32
  %242 = or i32 %238, %241
  %243 = sext i32 %242 to i64
  store i64 %243, i64* %18, align 8
  %244 = load i8*, i8** @px_crypt_md5.p, align 8
  %245 = load i64, i64* %18, align 8
  %246 = call i32 @_crypt_to64(i8* %244, i64 %245, i32 4)
  %247 = load i8*, i8** @px_crypt_md5.p, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 4
  store i8* %248, i8** @px_crypt_md5.p, align 8
  %249 = getelementptr inbounds i8, i8* %23, i64 1
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = shl i32 %251, 16
  %253 = getelementptr inbounds i8, i8* %23, i64 7
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = shl i32 %255, 8
  %257 = or i32 %252, %256
  %258 = getelementptr inbounds i8, i8* %23, i64 13
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = or i32 %257, %260
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %18, align 8
  %263 = load i8*, i8** @px_crypt_md5.p, align 8
  %264 = load i64, i64* %18, align 8
  %265 = call i32 @_crypt_to64(i8* %263, i64 %264, i32 4)
  %266 = load i8*, i8** @px_crypt_md5.p, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 4
  store i8* %267, i8** @px_crypt_md5.p, align 8
  %268 = getelementptr inbounds i8, i8* %23, i64 2
  %269 = load i8, i8* %268, align 2
  %270 = zext i8 %269 to i32
  %271 = shl i32 %270, 16
  %272 = getelementptr inbounds i8, i8* %23, i64 8
  %273 = load i8, i8* %272, align 8
  %274 = zext i8 %273 to i32
  %275 = shl i32 %274, 8
  %276 = or i32 %271, %275
  %277 = getelementptr inbounds i8, i8* %23, i64 14
  %278 = load i8, i8* %277, align 2
  %279 = zext i8 %278 to i32
  %280 = or i32 %276, %279
  %281 = sext i32 %280 to i64
  store i64 %281, i64* %18, align 8
  %282 = load i8*, i8** @px_crypt_md5.p, align 8
  %283 = load i64, i64* %18, align 8
  %284 = call i32 @_crypt_to64(i8* %282, i64 %283, i32 4)
  %285 = load i8*, i8** @px_crypt_md5.p, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 4
  store i8* %286, i8** @px_crypt_md5.p, align 8
  %287 = getelementptr inbounds i8, i8* %23, i64 3
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = shl i32 %289, 16
  %291 = getelementptr inbounds i8, i8* %23, i64 9
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = shl i32 %293, 8
  %295 = or i32 %290, %294
  %296 = getelementptr inbounds i8, i8* %23, i64 15
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = or i32 %295, %298
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %18, align 8
  %301 = load i8*, i8** @px_crypt_md5.p, align 8
  %302 = load i64, i64* %18, align 8
  %303 = call i32 @_crypt_to64(i8* %301, i64 %302, i32 4)
  %304 = load i8*, i8** @px_crypt_md5.p, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 4
  store i8* %305, i8** @px_crypt_md5.p, align 8
  %306 = getelementptr inbounds i8, i8* %23, i64 4
  %307 = load i8, i8* %306, align 4
  %308 = zext i8 %307 to i32
  %309 = shl i32 %308, 16
  %310 = getelementptr inbounds i8, i8* %23, i64 10
  %311 = load i8, i8* %310, align 2
  %312 = zext i8 %311 to i32
  %313 = shl i32 %312, 8
  %314 = or i32 %309, %313
  %315 = getelementptr inbounds i8, i8* %23, i64 5
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = or i32 %314, %317
  %319 = sext i32 %318 to i64
  store i64 %319, i64* %18, align 8
  %320 = load i8*, i8** @px_crypt_md5.p, align 8
  %321 = load i64, i64* %18, align 8
  %322 = call i32 @_crypt_to64(i8* %320, i64 %321, i32 4)
  %323 = load i8*, i8** @px_crypt_md5.p, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 4
  store i8* %324, i8** @px_crypt_md5.p, align 8
  %325 = getelementptr inbounds i8, i8* %23, i64 11
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i64
  store i64 %327, i64* %18, align 8
  %328 = load i8*, i8** @px_crypt_md5.p, align 8
  %329 = load i64, i64* %18, align 8
  %330 = call i32 @_crypt_to64(i8* %328, i64 %329, i32 2)
  %331 = load i8*, i8** @px_crypt_md5.p, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 2
  store i8* %332, i8** @px_crypt_md5.p, align 8
  %333 = load i8*, i8** @px_crypt_md5.p, align 8
  store i8 0, i8* %333, align 1
  %334 = trunc i64 %21 to i32
  %335 = call i32 @px_memset(i8* %23, i32 0, i32 %334)
  %336 = load i32*, i32** %16, align 8
  %337 = call i32 @px_md_free(i32* %336)
  %338 = load i32*, i32** %15, align 8
  %339 = call i32 @px_md_free(i32* %338)
  %340 = load i8*, i8** %8, align 8
  store i8* %340, i8** %5, align 8
  store i32 1, i32* %19, align 4
  br label %341

341:                                              ; preds = %224, %77, %29
  %342 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %342)
  %343 = load i8*, i8** %5, align 8
  ret i8* %343
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @px_find_digest(i8*, i32**) #2

declare dso_local i32 @px_md_update(i32*, i8*, i32) #2

declare dso_local i32 @px_md_finish(i32*, i8*) #2

declare dso_local i32 @px_memset(i8*, i32, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @px_md_reset(i32*) #2

declare dso_local i32 @_crypt_to64(i8*, i64, i32) #2

declare dso_local i32 @px_md_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
