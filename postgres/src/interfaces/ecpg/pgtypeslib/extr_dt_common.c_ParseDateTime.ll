; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_ParseDateTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_ParseDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXDATEFIELDS = common dso_local global i32 0, align 4
@DTK_TIME = common dso_local global i32 0, align 4
@DTK_NUMBER = common dso_local global i32 0, align 4
@DTK_DATE = common dso_local global i32 0, align 4
@DTK_STRING = common dso_local global i32 0, align 4
@DTK_TZ = common dso_local global i32 0, align 4
@DTK_SPECIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseDateTime(i8* %0, i8* %1, i8** %2, i32* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8**, i8*** %13, align 8
  store i8* %19, i8** %20, align 8
  br label %21

21:                                               ; preds = %522, %513, %389, %6
  %22 = load i8**, i8*** %13, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %527

27:                                               ; preds = %21
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @MAXDATEFIELDS, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %7, align 4
  br label %530

32:                                               ; preds = %27
  %33 = load i8*, i8** %15, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %33, i8** %37, align 8
  %38 = load i8**, i8*** %13, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @isdigit(i8 zeroext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %258

43:                                               ; preds = %32
  %44 = load i8**, i8*** %13, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  %47 = load i8, i8* %45, align 1
  %48 = load i8*, i8** %15, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %15, align 8
  store i8 %47, i8* %48, align 1
  br label %50

50:                                               ; preds = %56, %43
  %51 = load i8**, i8*** %13, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isdigit(i8 zeroext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i8**, i8*** %13, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %57, align 8
  %60 = load i8, i8* %58, align 1
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %15, align 8
  store i8 %60, i8* %61, align 1
  br label %50

63:                                               ; preds = %50
  %64 = load i8**, i8*** %13, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 58
  br i1 %68, label %69, label %109

69:                                               ; preds = %63
  %70 = load i32, i32* @DTK_TIME, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i8**, i8*** %13, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %75, align 8
  %78 = load i8, i8* %76, align 1
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %15, align 8
  store i8 %78, i8* %79, align 1
  br label %81

81:                                               ; preds = %101, %69
  %82 = load i8**, i8*** %13, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isdigit(i8 zeroext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = load i8**, i8*** %13, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 58
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i8**, i8*** %13, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 46
  br label %99

99:                                               ; preds = %93, %87, %81
  %100 = phi i1 [ true, %87 ], [ true, %81 ], [ %98, %93 ]
  br i1 %100, label %101, label %108

101:                                              ; preds = %99
  %102 = load i8**, i8*** %13, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %102, align 8
  %105 = load i8, i8* %103, align 1
  %106 = load i8*, i8** %15, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %15, align 8
  store i8 %105, i8* %106, align 1
  br label %81

108:                                              ; preds = %99
  br label %257

109:                                              ; preds = %63
  %110 = load i8**, i8*** %13, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 45
  br i1 %114, label %127, label %115

115:                                              ; preds = %109
  %116 = load i8**, i8*** %13, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 47
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load i8**, i8*** %13, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 46
  br i1 %126, label %127, label %250

127:                                              ; preds = %121, %115, %109
  %128 = load i8**, i8*** %13, align 8
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %16, align 8
  %130 = load i8**, i8*** %13, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %130, align 8
  %133 = load i8, i8* %131, align 1
  %134 = load i8*, i8** %15, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %15, align 8
  store i8 %133, i8* %134, align 1
  %136 = load i8**, i8*** %13, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = load i8, i8* %137, align 1
  %139 = call i64 @isdigit(i8 zeroext %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %216

141:                                              ; preds = %127
  %142 = load i8*, i8** %16, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 46
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @DTK_NUMBER, align 4
  br label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @DTK_DATE, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %162, %150
  %157 = load i8**, i8*** %13, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i8, i8* %158, align 1
  %160 = call i64 @isdigit(i8 zeroext %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %156
  %163 = load i8**, i8*** %13, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %163, align 8
  %166 = load i8, i8* %164, align 1
  %167 = load i8*, i8** %15, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %15, align 8
  store i8 %166, i8* %167, align 1
  br label %156

169:                                              ; preds = %156
  %170 = load i8**, i8*** %13, align 8
  %171 = load i8*, i8** %170, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = load i8*, i8** %16, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %173, %176
  br i1 %177, label %178, label %215

178:                                              ; preds = %169
  %179 = load i32, i32* @DTK_DATE, align 4
  %180 = load i32*, i32** %11, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %179, i32* %183, align 4
  %184 = load i8**, i8*** %13, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %184, align 8
  %187 = load i8, i8* %185, align 1
  %188 = load i8*, i8** %15, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %15, align 8
  store i8 %187, i8* %188, align 1
  br label %190

190:                                              ; preds = %207, %178
  %191 = load i8**, i8*** %13, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = load i8, i8* %192, align 1
  %194 = call i64 @isdigit(i8 zeroext %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %190
  %197 = load i8**, i8*** %13, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = load i8*, i8** %16, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %200, %203
  br label %205

205:                                              ; preds = %196, %190
  %206 = phi i1 [ true, %190 ], [ %204, %196 ]
  br i1 %206, label %207, label %214

207:                                              ; preds = %205
  %208 = load i8**, i8*** %13, align 8
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %208, align 8
  %211 = load i8, i8* %209, align 1
  %212 = load i8*, i8** %15, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %15, align 8
  store i8 %211, i8* %212, align 1
  br label %190

214:                                              ; preds = %205
  br label %215

215:                                              ; preds = %214, %169
  br label %249

216:                                              ; preds = %127
  %217 = load i32, i32* @DTK_DATE, align 4
  %218 = load i32*, i32** %11, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %217, i32* %221, align 4
  br label %222

222:                                              ; preds = %239, %216
  %223 = load i8**, i8*** %13, align 8
  %224 = load i8*, i8** %223, align 8
  %225 = load i8, i8* %224, align 1
  %226 = call i64 @isalnum(i8 zeroext %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %222
  %229 = load i8**, i8*** %13, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = load i8*, i8** %16, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %232, %235
  br label %237

237:                                              ; preds = %228, %222
  %238 = phi i1 [ true, %222 ], [ %236, %228 ]
  br i1 %238, label %239, label %248

239:                                              ; preds = %237
  %240 = load i8**, i8*** %13, align 8
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %240, align 8
  %243 = load i8, i8* %241, align 1
  %244 = call i8* @pg_tolower(i8 zeroext %243)
  %245 = ptrtoint i8* %244 to i8
  %246 = load i8*, i8** %15, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %15, align 8
  store i8 %245, i8* %246, align 1
  br label %222

248:                                              ; preds = %237
  br label %249

249:                                              ; preds = %248, %215
  br label %256

250:                                              ; preds = %121
  %251 = load i32, i32* @DTK_NUMBER, align 4
  %252 = load i32*, i32** %11, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %251, i32* %255, align 4
  br label %256

256:                                              ; preds = %250, %249
  br label %257

257:                                              ; preds = %256, %108
  br label %522

258:                                              ; preds = %32
  %259 = load i8**, i8*** %13, align 8
  %260 = load i8*, i8** %259, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 46
  br i1 %263, label %264, label %290

264:                                              ; preds = %258
  %265 = load i8**, i8*** %13, align 8
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %265, align 8
  %268 = load i8, i8* %266, align 1
  %269 = load i8*, i8** %15, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %15, align 8
  store i8 %268, i8* %269, align 1
  br label %271

271:                                              ; preds = %277, %264
  %272 = load i8**, i8*** %13, align 8
  %273 = load i8*, i8** %272, align 8
  %274 = load i8, i8* %273, align 1
  %275 = call i64 @isdigit(i8 zeroext %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %271
  %278 = load i8**, i8*** %13, align 8
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %278, align 8
  %281 = load i8, i8* %279, align 1
  %282 = load i8*, i8** %15, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %15, align 8
  store i8 %281, i8* %282, align 1
  br label %271

284:                                              ; preds = %271
  %285 = load i32, i32* @DTK_NUMBER, align 4
  %286 = load i32*, i32** %11, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %285, i32* %289, align 4
  br label %521

290:                                              ; preds = %258
  %291 = load i8**, i8*** %13, align 8
  %292 = load i8*, i8** %291, align 8
  %293 = load i8, i8* %292, align 1
  %294 = call i64 @isalpha(i8 zeroext %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %383

296:                                              ; preds = %290
  %297 = load i32, i32* @DTK_STRING, align 4
  %298 = load i32*, i32** %11, align 8
  %299 = load i32, i32* %14, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32 %297, i32* %301, align 4
  %302 = load i8**, i8*** %13, align 8
  %303 = load i8*, i8** %302, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %302, align 8
  %305 = load i8, i8* %303, align 1
  %306 = call i8* @pg_tolower(i8 zeroext %305)
  %307 = ptrtoint i8* %306 to i8
  %308 = load i8*, i8** %15, align 8
  %309 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %309, i8** %15, align 8
  store i8 %307, i8* %308, align 1
  br label %310

310:                                              ; preds = %316, %296
  %311 = load i8**, i8*** %13, align 8
  %312 = load i8*, i8** %311, align 8
  %313 = load i8, i8* %312, align 1
  %314 = call i64 @isalpha(i8 zeroext %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %310
  %317 = load i8**, i8*** %13, align 8
  %318 = load i8*, i8** %317, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %317, align 8
  %320 = load i8, i8* %318, align 1
  %321 = call i8* @pg_tolower(i8 zeroext %320)
  %322 = ptrtoint i8* %321 to i8
  %323 = load i8*, i8** %15, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %15, align 8
  store i8 %322, i8* %323, align 1
  br label %310

325:                                              ; preds = %310
  %326 = load i8**, i8*** %13, align 8
  %327 = load i8*, i8** %326, align 8
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp eq i32 %329, 45
  br i1 %330, label %343, label %331

331:                                              ; preds = %325
  %332 = load i8**, i8*** %13, align 8
  %333 = load i8*, i8** %332, align 8
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 47
  br i1 %336, label %343, label %337

337:                                              ; preds = %331
  %338 = load i8**, i8*** %13, align 8
  %339 = load i8*, i8** %338, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 46
  br i1 %342, label %343, label %382

343:                                              ; preds = %337, %331, %325
  %344 = load i8**, i8*** %13, align 8
  %345 = load i8*, i8** %344, align 8
  store i8* %345, i8** %17, align 8
  %346 = load i32, i32* @DTK_DATE, align 4
  %347 = load i32*, i32** %11, align 8
  %348 = load i32, i32* %14, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  store i32 %346, i32* %350, align 4
  %351 = load i8**, i8*** %13, align 8
  %352 = load i8*, i8** %351, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %351, align 8
  %354 = load i8, i8* %352, align 1
  %355 = load i8*, i8** %15, align 8
  %356 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %356, i8** %15, align 8
  store i8 %354, i8* %355, align 1
  br label %357

357:                                              ; preds = %374, %343
  %358 = load i8**, i8*** %13, align 8
  %359 = load i8*, i8** %358, align 8
  %360 = load i8, i8* %359, align 1
  %361 = call i64 @isdigit(i8 zeroext %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %372, label %363

363:                                              ; preds = %357
  %364 = load i8**, i8*** %13, align 8
  %365 = load i8*, i8** %364, align 8
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = load i8*, i8** %17, align 8
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp eq i32 %367, %370
  br label %372

372:                                              ; preds = %363, %357
  %373 = phi i1 [ true, %357 ], [ %371, %363 ]
  br i1 %373, label %374, label %381

374:                                              ; preds = %372
  %375 = load i8**, i8*** %13, align 8
  %376 = load i8*, i8** %375, align 8
  %377 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %377, i8** %375, align 8
  %378 = load i8, i8* %376, align 1
  %379 = load i8*, i8** %15, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %15, align 8
  store i8 %378, i8* %379, align 1
  br label %357

381:                                              ; preds = %372
  br label %382

382:                                              ; preds = %381, %337
  br label %520

383:                                              ; preds = %290
  %384 = load i8**, i8*** %13, align 8
  %385 = load i8*, i8** %384, align 8
  %386 = load i8, i8* %385, align 1
  %387 = call i64 @isspace(i8 zeroext %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %383
  %390 = load i8**, i8*** %13, align 8
  %391 = load i8*, i8** %390, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %390, align 8
  br label %21

393:                                              ; preds = %383
  %394 = load i8**, i8*** %13, align 8
  %395 = load i8*, i8** %394, align 8
  %396 = load i8, i8* %395, align 1
  %397 = sext i8 %396 to i32
  %398 = icmp eq i32 %397, 43
  br i1 %398, label %405, label %399

399:                                              ; preds = %393
  %400 = load i8**, i8*** %13, align 8
  %401 = load i8*, i8** %400, align 8
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp eq i32 %403, 45
  br i1 %404, label %405, label %507

405:                                              ; preds = %399, %393
  %406 = load i8**, i8*** %13, align 8
  %407 = load i8*, i8** %406, align 8
  %408 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %408, i8** %406, align 8
  %409 = load i8, i8* %407, align 1
  %410 = load i8*, i8** %15, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %15, align 8
  store i8 %409, i8* %410, align 1
  br label %412

412:                                              ; preds = %418, %405
  %413 = load i8**, i8*** %13, align 8
  %414 = load i8*, i8** %413, align 8
  %415 = load i8, i8* %414, align 1
  %416 = call i64 @isspace(i8 zeroext %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %412
  %419 = load i8**, i8*** %13, align 8
  %420 = load i8*, i8** %419, align 8
  %421 = getelementptr inbounds i8, i8* %420, i32 1
  store i8* %421, i8** %419, align 8
  br label %412

422:                                              ; preds = %412
  %423 = load i8**, i8*** %13, align 8
  %424 = load i8*, i8** %423, align 8
  %425 = load i8, i8* %424, align 1
  %426 = call i64 @isdigit(i8 zeroext %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %468

428:                                              ; preds = %422
  %429 = load i32, i32* @DTK_TZ, align 4
  %430 = load i32*, i32** %11, align 8
  %431 = load i32, i32* %14, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  store i32 %429, i32* %433, align 4
  %434 = load i8**, i8*** %13, align 8
  %435 = load i8*, i8** %434, align 8
  %436 = getelementptr inbounds i8, i8* %435, i32 1
  store i8* %436, i8** %434, align 8
  %437 = load i8, i8* %435, align 1
  %438 = load i8*, i8** %15, align 8
  %439 = getelementptr inbounds i8, i8* %438, i32 1
  store i8* %439, i8** %15, align 8
  store i8 %437, i8* %438, align 1
  br label %440

440:                                              ; preds = %460, %428
  %441 = load i8**, i8*** %13, align 8
  %442 = load i8*, i8** %441, align 8
  %443 = load i8, i8* %442, align 1
  %444 = call i64 @isdigit(i8 zeroext %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %458, label %446

446:                                              ; preds = %440
  %447 = load i8**, i8*** %13, align 8
  %448 = load i8*, i8** %447, align 8
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp eq i32 %450, 58
  br i1 %451, label %458, label %452

452:                                              ; preds = %446
  %453 = load i8**, i8*** %13, align 8
  %454 = load i8*, i8** %453, align 8
  %455 = load i8, i8* %454, align 1
  %456 = sext i8 %455 to i32
  %457 = icmp eq i32 %456, 46
  br label %458

458:                                              ; preds = %452, %446, %440
  %459 = phi i1 [ true, %446 ], [ true, %440 ], [ %457, %452 ]
  br i1 %459, label %460, label %467

460:                                              ; preds = %458
  %461 = load i8**, i8*** %13, align 8
  %462 = load i8*, i8** %461, align 8
  %463 = getelementptr inbounds i8, i8* %462, i32 1
  store i8* %463, i8** %461, align 8
  %464 = load i8, i8* %462, align 1
  %465 = load i8*, i8** %15, align 8
  %466 = getelementptr inbounds i8, i8* %465, i32 1
  store i8* %466, i8** %15, align 8
  store i8 %464, i8* %465, align 1
  br label %440

467:                                              ; preds = %458
  br label %506

468:                                              ; preds = %422
  %469 = load i8**, i8*** %13, align 8
  %470 = load i8*, i8** %469, align 8
  %471 = load i8, i8* %470, align 1
  %472 = call i64 @isalpha(i8 zeroext %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %504

474:                                              ; preds = %468
  %475 = load i32, i32* @DTK_SPECIAL, align 4
  %476 = load i32*, i32** %11, align 8
  %477 = load i32, i32* %14, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  store i32 %475, i32* %479, align 4
  %480 = load i8**, i8*** %13, align 8
  %481 = load i8*, i8** %480, align 8
  %482 = getelementptr inbounds i8, i8* %481, i32 1
  store i8* %482, i8** %480, align 8
  %483 = load i8, i8* %481, align 1
  %484 = call i8* @pg_tolower(i8 zeroext %483)
  %485 = ptrtoint i8* %484 to i8
  %486 = load i8*, i8** %15, align 8
  %487 = getelementptr inbounds i8, i8* %486, i32 1
  store i8* %487, i8** %15, align 8
  store i8 %485, i8* %486, align 1
  br label %488

488:                                              ; preds = %494, %474
  %489 = load i8**, i8*** %13, align 8
  %490 = load i8*, i8** %489, align 8
  %491 = load i8, i8* %490, align 1
  %492 = call i64 @isalpha(i8 zeroext %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %503

494:                                              ; preds = %488
  %495 = load i8**, i8*** %13, align 8
  %496 = load i8*, i8** %495, align 8
  %497 = getelementptr inbounds i8, i8* %496, i32 1
  store i8* %497, i8** %495, align 8
  %498 = load i8, i8* %496, align 1
  %499 = call i8* @pg_tolower(i8 zeroext %498)
  %500 = ptrtoint i8* %499 to i8
  %501 = load i8*, i8** %15, align 8
  %502 = getelementptr inbounds i8, i8* %501, i32 1
  store i8* %502, i8** %15, align 8
  store i8 %500, i8* %501, align 1
  br label %488

503:                                              ; preds = %488
  br label %505

504:                                              ; preds = %468
  store i32 -1, i32* %7, align 4
  br label %530

505:                                              ; preds = %503
  br label %506

506:                                              ; preds = %505, %467
  br label %518

507:                                              ; preds = %399
  %508 = load i8**, i8*** %13, align 8
  %509 = load i8*, i8** %508, align 8
  %510 = load i8, i8* %509, align 1
  %511 = call i64 @ispunct(i8 zeroext %510)
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %517

513:                                              ; preds = %507
  %514 = load i8**, i8*** %13, align 8
  %515 = load i8*, i8** %514, align 8
  %516 = getelementptr inbounds i8, i8* %515, i32 1
  store i8* %516, i8** %514, align 8
  br label %21

517:                                              ; preds = %507
  store i32 -1, i32* %7, align 4
  br label %530

518:                                              ; preds = %506
  br label %519

519:                                              ; preds = %518
  br label %520

520:                                              ; preds = %519, %382
  br label %521

521:                                              ; preds = %520, %284
  br label %522

522:                                              ; preds = %521, %257
  %523 = load i8*, i8** %15, align 8
  %524 = getelementptr inbounds i8, i8* %523, i32 1
  store i8* %524, i8** %15, align 8
  store i8 0, i8* %523, align 1
  %525 = load i32, i32* %14, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %14, align 4
  br label %21

527:                                              ; preds = %21
  %528 = load i32, i32* %14, align 4
  %529 = load i32*, i32** %12, align 8
  store i32 %528, i32* %529, align 4
  store i32 0, i32* %7, align 4
  br label %530

530:                                              ; preds = %527, %517, %504, %31
  %531 = load i32, i32* %7, align 4
  ret i32 %531
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i8* @pg_tolower(i8 zeroext) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @ispunct(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
