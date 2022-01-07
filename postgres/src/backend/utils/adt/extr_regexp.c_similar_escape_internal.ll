; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regexp.c_similar_escape_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regexp.c_similar_escape_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_ESCAPE_SEQUENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid escape string\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Escape string must be empty or one character.\00", align 1
@VARHDRSZ = common dso_local global i64 0, align 8
@ERRCODE_INVALID_USE_OF_ESCAPE_CHARACTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"SQL regular expression may not contain more than two escape-double-quote separators\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @similar_escape_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @similar_escape_internal(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @VARDATA_ANY(i32* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @VARSIZE_ANY_EXHDR(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 1, i32* %10, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @VARDATA_ANY(i32* %25)
  store i8* %26, i8** %7, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @VARSIZE_ANY_EXHDR(i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i8* null, i8** %7, align 8
  br label %50

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @pg_mbstrlen_with_len(i8* %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_INVALID_ESCAPE_SEQUENCE, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @errhint(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49, %31
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i64, i64* @VARHDRSZ, align 8
  %53 = add nsw i64 %52, 23
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 3, %55
  %57 = add i64 %53, %56
  %58 = call i64 @palloc(i64 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %5, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i8* @VARDATA(i32* %60)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  store i8 94, i8* %62, align 1
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  store i8 40, i8* %64, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  store i8 63, i8* %66, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  store i8 58, i8* %68, align 1
  br label %70

70:                                               ; preds = %297, %121, %51
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %302

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %15, align 1
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %130

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @pg_mblen(i8* %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %129

83:                                               ; preds = %78
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  store i8 92, i8* %87, align 1
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @memcpy(i8* %89, i8* %90, i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %121

97:                                               ; preds = %83
  %98 = load i8*, i8** %7, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i64 @memcmp(i8* %105, i8* %106, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 1, i32* %11, align 4
  br label %120

111:                                              ; preds = %104, %100, %97
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @memcpy(i8* %112, i8* %113, i32 %114)
  %116 = load i32, i32* %16, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %8, align 8
  br label %120

120:                                              ; preds = %111, %110
  br label %121

121:                                              ; preds = %120, %86
  %122 = load i32, i32* %16, align 4
  %123 = load i8*, i8** %6, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %6, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %70

129:                                              ; preds = %78
  br label %130

130:                                              ; preds = %129, %73
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %199

133:                                              ; preds = %130
  %134 = load i8, i8* %15, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 34
  br i1 %136, label %137, label %192

137:                                              ; preds = %133
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %192, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %13, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %140
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %8, align 8
  store i8 41, i8* %144, align 1
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %8, align 8
  store i8 123, i8* %146, align 1
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %8, align 8
  store i8 49, i8* %148, align 1
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %8, align 8
  store i8 44, i8* %150, align 1
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %8, align 8
  store i8 49, i8* %152, align 1
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %8, align 8
  store i8 125, i8* %154, align 1
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %8, align 8
  store i8 63, i8* %156, align 1
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %8, align 8
  store i8 40, i8* %158, align 1
  br label %189

160:                                              ; preds = %140
  %161 = load i32, i32* %13, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %182

163:                                              ; preds = %160
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %8, align 8
  store i8 41, i8* %164, align 1
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %8, align 8
  store i8 123, i8* %166, align 1
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %8, align 8
  store i8 49, i8* %168, align 1
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %8, align 8
  store i8 44, i8* %170, align 1
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %8, align 8
  store i8 49, i8* %172, align 1
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %8, align 8
  store i8 125, i8* %174, align 1
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %8, align 8
  store i8 40, i8* %176, align 1
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %8, align 8
  store i8 63, i8* %178, align 1
  %180 = load i8*, i8** %8, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %8, align 8
  store i8 58, i8* %180, align 1
  br label %188

182:                                              ; preds = %160
  %183 = load i32, i32* @ERROR, align 4
  %184 = load i32, i32* @ERRCODE_INVALID_USE_OF_ESCAPE_CHARACTER, align 4
  %185 = call i32 @errcode(i32 %184)
  %186 = call i32 @errmsg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0))
  %187 = call i32 @ereport(i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %182, %163
  br label %189

189:                                              ; preds = %188, %143
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %198

192:                                              ; preds = %137, %133
  %193 = load i8*, i8** %8, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %8, align 8
  store i8 92, i8* %193, align 1
  %195 = load i8, i8* %15, align 1
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %8, align 8
  store i8 %195, i8* %196, align 1
  br label %198

198:                                              ; preds = %192, %189
  store i32 0, i32* %11, align 4
  br label %297

199:                                              ; preds = %130
  %200 = load i8*, i8** %7, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i8, i8* %15, align 1
  %204 = sext i8 %203 to i32
  %205 = load i8*, i8** %7, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %204, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  store i32 1, i32* %11, align 4
  br label %296

210:                                              ; preds = %202, %199
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %210
  %214 = load i8, i8* %15, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 92
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i8*, i8** %8, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %8, align 8
  store i8 92, i8* %218, align 1
  br label %220

220:                                              ; preds = %217, %213
  %221 = load i8, i8* %15, align 1
  %222 = load i8*, i8** %8, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %8, align 8
  store i8 %221, i8* %222, align 1
  %224 = load i8, i8* %15, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 93
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  store i32 0, i32* %12, align 4
  br label %228

228:                                              ; preds = %227, %220
  br label %295

229:                                              ; preds = %210
  %230 = load i8, i8* %15, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 91
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i8, i8* %15, align 1
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %8, align 8
  store i8 %234, i8* %235, align 1
  store i32 1, i32* %12, align 4
  br label %294

237:                                              ; preds = %229
  %238 = load i8, i8* %15, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 37
  br i1 %240, label %241, label %246

241:                                              ; preds = %237
  %242 = load i8*, i8** %8, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %8, align 8
  store i8 46, i8* %242, align 1
  %244 = load i8*, i8** %8, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %8, align 8
  store i8 42, i8* %244, align 1
  br label %293

246:                                              ; preds = %237
  %247 = load i8, i8* %15, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 95
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i8*, i8** %8, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %8, align 8
  store i8 46, i8* %251, align 1
  br label %292

253:                                              ; preds = %246
  %254 = load i8, i8* %15, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 40
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = load i8*, i8** %8, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %8, align 8
  store i8 40, i8* %258, align 1
  %260 = load i8*, i8** %8, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %8, align 8
  store i8 63, i8* %260, align 1
  %262 = load i8*, i8** %8, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %8, align 8
  store i8 58, i8* %262, align 1
  br label %291

264:                                              ; preds = %253
  %265 = load i8, i8* %15, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 92
  br i1 %267, label %280, label %268

268:                                              ; preds = %264
  %269 = load i8, i8* %15, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 46
  br i1 %271, label %280, label %272

272:                                              ; preds = %268
  %273 = load i8, i8* %15, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 94
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = load i8, i8* %15, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 36
  br i1 %279, label %280, label %286

280:                                              ; preds = %276, %272, %268, %264
  %281 = load i8*, i8** %8, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %8, align 8
  store i8 92, i8* %281, align 1
  %283 = load i8, i8* %15, align 1
  %284 = load i8*, i8** %8, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %8, align 8
  store i8 %283, i8* %284, align 1
  br label %290

286:                                              ; preds = %276
  %287 = load i8, i8* %15, align 1
  %288 = load i8*, i8** %8, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %8, align 8
  store i8 %287, i8* %288, align 1
  br label %290

290:                                              ; preds = %286, %280
  br label %291

291:                                              ; preds = %290, %257
  br label %292

292:                                              ; preds = %291, %250
  br label %293

293:                                              ; preds = %292, %241
  br label %294

294:                                              ; preds = %293, %233
  br label %295

295:                                              ; preds = %294, %228
  br label %296

296:                                              ; preds = %295, %209
  br label %297

297:                                              ; preds = %296, %198
  %298 = load i8*, i8** %6, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %6, align 8
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* %9, align 4
  br label %70

302:                                              ; preds = %70
  %303 = load i8*, i8** %8, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %8, align 8
  store i8 41, i8* %303, align 1
  %305 = load i8*, i8** %8, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %8, align 8
  store i8 36, i8* %305, align 1
  %307 = load i32*, i32** %5, align 8
  %308 = load i8*, i8** %8, align 8
  %309 = load i32*, i32** %5, align 8
  %310 = bitcast i32* %309 to i8*
  %311 = ptrtoint i8* %308 to i64
  %312 = ptrtoint i8* %310 to i64
  %313 = sub i64 %311, %312
  %314 = trunc i64 %313 to i32
  %315 = call i32 @SET_VARSIZE(i32* %307, i32 %314)
  %316 = load i32*, i32** %5, align 8
  ret i32* %316
}

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @pg_mbstrlen_with_len(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i8* @VARDATA(i32*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @SET_VARSIZE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
