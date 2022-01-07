; ModuleID = '/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_string2ean.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_string2ean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.string2ean.buf = private unnamed_addr constant [17 x i8] c"                \00", align 16
@INVALID = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"977\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"978\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"9790\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"979\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@g_weak = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"invalid %s number: \22%s\22\00", align 1
@isn_names = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"invalid check digit for %s number: \22%s\22, should be %c\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"invalid input syntax for %s number: \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"cannot cast %s to %s for number: \22%s\22\00", align 1
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"value \22%s\22 is out of range for %s type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32)* @string2ean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string2ean(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [17 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = bitcast [17 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.string2ean.buf, i32 0, i32 0), i64 17, i1 false)
  %22 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %14, align 8
  %25 = load i32, i32* @INVALID, align 4
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %26

26:                                               ; preds = %229, %4
  %27 = load i8*, i8** %14, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %18, align 4
  %33 = icmp ule i32 %32, 13
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i1 [ false, %26 ], [ %33, %31 ]
  br i1 %35, label %36, label %232

36:                                               ; preds = %34
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 33
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %14, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi i1 [ true, %36 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i8*, i8** %14, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @isdigit(i8 zeroext %52)
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 63
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  store i32 1, i32* %19, align 4
  br label %64

64:                                               ; preds = %63, %60, %48
  %65 = load i32, i32* %18, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i8*, i8** %14, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 77
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %14, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 109
  br i1 %76, label %77, label %87

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @INVALID, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %572

82:                                               ; preds = %77
  store i32 130, i32* %15, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %13, align 8
  store i8 77, i8* %83, align 1
  %85 = load i32, i32* %18, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %229

87:                                               ; preds = %72, %64
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, 7
  br i1 %89, label %90, label %120

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %14, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 88
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %14, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 120
  br i1 %102, label %103, label %120

103:                                              ; preds = %98, %93, %90
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @INVALID, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %572

111:                                              ; preds = %106
  store i32 129, i32* %15, align 4
  %112 = load i8*, i8** %14, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i8* @toupper(i8 zeroext %113)
  %115 = ptrtoint i8* %114 to i8
  %116 = load i8*, i8** %13, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %13, align 8
  store i8 %115, i8* %116, align 1
  %118 = load i32, i32* %18, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %228

120:                                              ; preds = %103, %98, %87
  %121 = load i32, i32* %18, align 4
  %122 = icmp eq i32 %121, 9
  br i1 %122, label %123, label %161

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %123
  %127 = load i8*, i8** %14, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 88
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** %14, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 120
  br i1 %135, label %136, label %161

136:                                              ; preds = %131, %126, %123
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %136
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @INVALID, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 130
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %572

147:                                              ; preds = %143, %139
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* @INVALID, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 131, i32* %15, align 4
  br label %152

152:                                              ; preds = %151, %147
  %153 = load i8*, i8** %14, align 8
  %154 = load i8, i8* %153, align 1
  %155 = call i8* @toupper(i8 zeroext %154)
  %156 = ptrtoint i8* %155 to i8
  %157 = load i8*, i8** %13, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %13, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i32, i32* %18, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %18, align 4
  br label %227

161:                                              ; preds = %136, %131, %120
  %162 = load i32, i32* %18, align 4
  %163 = icmp eq i32 %162, 11
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %164
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* @INVALID, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %572

175:                                              ; preds = %170
  store i32 128, i32* %15, align 4
  %176 = load i8*, i8** %14, align 8
  %177 = load i8, i8* %176, align 1
  %178 = load i8*, i8** %13, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %13, align 8
  store i8 %177, i8* %178, align 1
  %180 = load i32, i32* %18, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %18, align 4
  br label %226

182:                                              ; preds = %167, %164, %161
  %183 = load i8*, i8** %14, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 45
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load i8*, i8** %14, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 32
  br i1 %191, label %192, label %193

192:                                              ; preds = %187, %182
  br label %225

193:                                              ; preds = %187
  %194 = load i8*, i8** %14, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 33
  br i1 %197, label %198, label %209

198:                                              ; preds = %193
  %199 = load i8*, i8** %14, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load i32, i32* %19, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  store i32 0, i32* %20, align 4
  br label %208

208:                                              ; preds = %207, %204
  store i32 1, i32* %19, align 4
  br label %224

209:                                              ; preds = %198, %193
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  br label %572

213:                                              ; preds = %209
  %214 = load i8*, i8** %14, align 8
  %215 = load i8, i8* %214, align 1
  %216 = load i8*, i8** %13, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %13, align 8
  store i8 %215, i8* %216, align 1
  %218 = load i32, i32* %18, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %18, align 4
  %220 = icmp ugt i32 %219, 13
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  br label %609

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223, %208
  br label %225

225:                                              ; preds = %224, %192
  br label %226

226:                                              ; preds = %225, %175
  br label %227

227:                                              ; preds = %226, %152
  br label %228

228:                                              ; preds = %227, %111
  br label %229

229:                                              ; preds = %228, %82
  %230 = load i8*, i8** %14, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %14, align 8
  br label %26

232:                                              ; preds = %34
  %233 = load i8*, i8** %13, align 8
  store i8 0, i8* %233, align 1
  %234 = load i32, i32* %18, align 4
  %235 = icmp eq i32 %234, 13
  br i1 %235, label %236, label %246

236:                                              ; preds = %232
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* @INVALID, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  br label %572

241:                                              ; preds = %236
  store i32 132, i32* %15, align 4
  %242 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 15
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = sub nsw i32 %244, 48
  store i32 %245, i32* %16, align 4
  br label %307

246:                                              ; preds = %232
  %247 = load i32, i32* %18, align 4
  %248 = icmp eq i32 %247, 12
  br i1 %248, label %249, label %258

249:                                              ; preds = %246
  %250 = load i32, i32* %15, align 4
  %251 = icmp ne i32 %250, 128
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  br label %572

253:                                              ; preds = %249
  %254 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 14
  %255 = load i8, i8* %254, align 2
  %256 = sext i8 %255 to i32
  %257 = sub nsw i32 %256, 48
  store i32 %257, i32* %16, align 4
  br label %306

258:                                              ; preds = %246
  %259 = load i32, i32* %18, align 4
  %260 = icmp eq i32 %259, 10
  br i1 %260, label %261, label %280

261:                                              ; preds = %258
  %262 = load i32, i32* %15, align 4
  %263 = icmp ne i32 %262, 131
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %265, 130
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  br label %572

268:                                              ; preds = %264, %261
  %269 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 12
  %270 = load i8, i8* %269, align 4
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 88
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  store i32 10, i32* %16, align 4
  br label %279

274:                                              ; preds = %268
  %275 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 12
  %276 = load i8, i8* %275, align 4
  %277 = sext i8 %276 to i32
  %278 = sub nsw i32 %277, 48
  store i32 %278, i32* %16, align 4
  br label %279

279:                                              ; preds = %274, %273
  br label %305

280:                                              ; preds = %258
  %281 = load i32, i32* %18, align 4
  %282 = icmp eq i32 %281, 8
  br i1 %282, label %283, label %303

283:                                              ; preds = %280
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* @INVALID, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = load i32, i32* %15, align 4
  %289 = icmp ne i32 %288, 129
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %572

291:                                              ; preds = %287, %283
  store i32 129, i32* %15, align 4
  %292 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 10
  %293 = load i8, i8* %292, align 2
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 88
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  store i32 10, i32* %16, align 4
  br label %302

297:                                              ; preds = %291
  %298 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 10
  %299 = load i8, i8* %298, align 2
  %300 = sext i8 %299 to i32
  %301 = sub nsw i32 %300, 48
  store i32 %301, i32* %16, align 4
  br label %302

302:                                              ; preds = %297, %296
  br label %304

303:                                              ; preds = %280
  br label %572

304:                                              ; preds = %302
  br label %305

305:                                              ; preds = %304, %279
  br label %306

306:                                              ; preds = %305, %253
  br label %307

307:                                              ; preds = %306, %241
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* @INVALID, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  br label %572

312:                                              ; preds = %307
  %313 = load i32, i32* %9, align 4
  %314 = icmp eq i32 %313, 132
  br i1 %314, label %315, label %320

315:                                              ; preds = %312
  %316 = load i32, i32* %15, align 4
  %317 = load i32, i32* %9, align 4
  %318 = icmp ne i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  br label %588

320:                                              ; preds = %315, %312
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* @ANY, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %332

324:                                              ; preds = %320
  %325 = load i32, i32* %15, align 4
  %326 = icmp ne i32 %325, 132
  br i1 %326, label %327, label %332

327:                                              ; preds = %324
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %9, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %327
  br label %588

332:                                              ; preds = %327, %324, %320
  %333 = load i32, i32* %15, align 4
  switch i32 %333, label %477 [
    i32 132, label %334
    i32 130, label %398
    i32 131, label %417
    i32 129, label %436
    i32 128, label %458
  ]

334:                                              ; preds = %332
  %335 = load i32, i32* %20, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %349

337:                                              ; preds = %334
  %338 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %339 = getelementptr inbounds i8, i8* %338, i64 3
  %340 = call i8* @checkdig(i8* %339, i32 13)
  %341 = ptrtoint i8* %340 to i32
  store i32 %341, i32* %17, align 4
  %342 = load i32, i32* %16, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %347, label %344

344:                                              ; preds = %337
  %345 = load i32, i32* %19, align 4
  %346 = icmp ne i32 %345, 0
  br label %347

347:                                              ; preds = %344, %337
  %348 = phi i1 [ true, %337 ], [ %346, %344 ]
  br label %349

349:                                              ; preds = %347, %334
  %350 = phi i1 [ false, %334 ], [ %348, %347 ]
  %351 = zext i1 %350 to i32
  store i32 %351, i32* %20, align 4
  %352 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 3
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp eq i32 %354, 48
  br i1 %355, label %356, label %357

356:                                              ; preds = %349
  store i32 128, i32* %15, align 4
  br label %385

357:                                              ; preds = %349
  %358 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %359 = getelementptr inbounds i8, i8* %358, i64 3
  %360 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %359, i32 3)
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %357
  store i32 129, i32* %15, align 4
  br label %384

363:                                              ; preds = %357
  %364 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %365 = getelementptr inbounds i8, i8* %364, i64 3
  %366 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %365, i32 3)
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  store i32 131, i32* %15, align 4
  br label %383

369:                                              ; preds = %363
  %370 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %371 = getelementptr inbounds i8, i8* %370, i64 3
  %372 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %371, i32 4)
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  store i32 130, i32* %15, align 4
  br label %382

375:                                              ; preds = %369
  %376 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %377 = getelementptr inbounds i8, i8* %376, i64 3
  %378 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %377, i32 3)
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %375
  store i32 131, i32* %15, align 4
  br label %381

381:                                              ; preds = %380, %375
  br label %382

382:                                              ; preds = %381, %374
  br label %383

383:                                              ; preds = %382, %368
  br label %384

384:                                              ; preds = %383, %362
  br label %385

385:                                              ; preds = %384, %356
  %386 = load i32, i32* %9, align 4
  %387 = icmp ne i32 %386, 132
  br i1 %387, label %388, label %397

388:                                              ; preds = %385
  %389 = load i32, i32* %9, align 4
  %390 = load i32, i32* @ANY, align 4
  %391 = icmp ne i32 %389, %390
  br i1 %391, label %392, label %397

392:                                              ; preds = %388
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* %9, align 4
  %395 = icmp ne i32 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %392
  br label %588

397:                                              ; preds = %392, %388, %385
  br label %478

398:                                              ; preds = %332
  %399 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %400 = call i32 @memcpy(i8* %399, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %401 = load i32, i32* %20, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %414

403:                                              ; preds = %398
  %404 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %405 = call i8* @checkdig(i8* %404, i32 13)
  %406 = ptrtoint i8* %405 to i32
  store i32 %406, i32* %17, align 4
  %407 = load i32, i32* %16, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %412, label %409

409:                                              ; preds = %403
  %410 = load i32, i32* %19, align 4
  %411 = icmp ne i32 %410, 0
  br label %412

412:                                              ; preds = %409, %403
  %413 = phi i1 [ true, %403 ], [ %411, %409 ]
  br label %414

414:                                              ; preds = %412, %398
  %415 = phi i1 [ false, %398 ], [ %413, %412 ]
  %416 = zext i1 %415 to i32
  store i32 %416, i32* %20, align 4
  br label %478

417:                                              ; preds = %332
  %418 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %419 = call i32 @memcpy(i8* %418, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %420 = load i32, i32* %20, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %433

422:                                              ; preds = %417
  %423 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %424 = getelementptr inbounds i8, i8* %423, i64 3
  %425 = call i32 @weight_checkdig(i8* %424, i32 10)
  store i32 %425, i32* %17, align 4
  %426 = load i32, i32* %16, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %431, label %428

428:                                              ; preds = %422
  %429 = load i32, i32* %19, align 4
  %430 = icmp ne i32 %429, 0
  br label %431

431:                                              ; preds = %428, %422
  %432 = phi i1 [ true, %422 ], [ %430, %428 ]
  br label %433

433:                                              ; preds = %431, %417
  %434 = phi i1 [ false, %417 ], [ %432, %431 ]
  %435 = zext i1 %434 to i32
  store i32 %435, i32* %20, align 4
  br label %478

436:                                              ; preds = %332
  %437 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %438 = getelementptr inbounds i8, i8* %437, i64 10
  %439 = call i32 @memcpy(i8* %438, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %440 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %441 = call i32 @memcpy(i8* %440, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %442 = load i32, i32* %20, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %455

444:                                              ; preds = %436
  %445 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %446 = getelementptr inbounds i8, i8* %445, i64 3
  %447 = call i32 @weight_checkdig(i8* %446, i32 8)
  store i32 %447, i32* %17, align 4
  %448 = load i32, i32* %16, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %453, label %450

450:                                              ; preds = %444
  %451 = load i32, i32* %19, align 4
  %452 = icmp ne i32 %451, 0
  br label %453

453:                                              ; preds = %450, %444
  %454 = phi i1 [ true, %444 ], [ %452, %450 ]
  br label %455

455:                                              ; preds = %453, %436
  %456 = phi i1 [ false, %436 ], [ %454, %453 ]
  %457 = zext i1 %456 to i32
  store i32 %457, i32* %20, align 4
  br label %478

458:                                              ; preds = %332
  %459 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 2
  store i8 48, i8* %459, align 2
  %460 = load i32, i32* %20, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %474

462:                                              ; preds = %458
  %463 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %464 = getelementptr inbounds i8, i8* %463, i64 2
  %465 = call i8* @checkdig(i8* %464, i32 13)
  %466 = ptrtoint i8* %465 to i32
  store i32 %466, i32* %17, align 4
  %467 = load i32, i32* %16, align 4
  %468 = icmp eq i32 %466, %467
  br i1 %468, label %472, label %469

469:                                              ; preds = %462
  %470 = load i32, i32* %19, align 4
  %471 = icmp ne i32 %470, 0
  br label %472

472:                                              ; preds = %469, %462
  %473 = phi i1 [ true, %462 ], [ %471, %469 ]
  br label %474

474:                                              ; preds = %472, %458
  %475 = phi i1 [ false, %458 ], [ %473, %472 ]
  %476 = zext i1 %475 to i32
  store i32 %476, i32* %20, align 4
  br label %477

477:                                              ; preds = %332, %474
  br label %478

478:                                              ; preds = %477, %455, %433, %414, %397
  %479 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  store i8* %479, i8** %13, align 8
  br label %480

480:                                              ; preds = %493, %478
  %481 = load i8*, i8** %13, align 8
  %482 = load i8, i8* %481, align 1
  %483 = sext i8 %482 to i32
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %480
  %486 = load i8*, i8** %13, align 8
  %487 = load i8, i8* %486, align 1
  %488 = sext i8 %487 to i32
  %489 = icmp sle i32 %488, 32
  br label %490

490:                                              ; preds = %485, %480
  %491 = phi i1 [ false, %480 ], [ %489, %485 ]
  br i1 %491, label %492, label %496

492:                                              ; preds = %490
  br label %493

493:                                              ; preds = %492
  %494 = load i8*, i8** %13, align 8
  %495 = getelementptr inbounds i8, i8* %494, i32 1
  store i8* %495, i8** %13, align 8
  br label %480

496:                                              ; preds = %490
  %497 = load i8*, i8** %13, align 8
  %498 = call i8* @checkdig(i8* %497, i32 13)
  %499 = getelementptr i8, i8* %498, i64 48
  %500 = ptrtoint i8* %499 to i8
  %501 = load i8*, i8** %13, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 12
  store i8 %500, i8* %502, align 1
  %503 = load i8*, i8** %13, align 8
  %504 = getelementptr inbounds i8, i8* %503, i64 13
  store i8 0, i8* %504, align 1
  %505 = load i32, i32* %20, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %511, label %507

507:                                              ; preds = %496
  %508 = load i32, i32* %19, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %511, label %510

510:                                              ; preds = %507
  br label %522

511:                                              ; preds = %507, %496
  %512 = load i8*, i8** %13, align 8
  %513 = call i32 @str2ean(i8* %512)
  %514 = load i32*, i32** %8, align 8
  store i32 %513, i32* %514, align 4
  %515 = load i32, i32* %20, align 4
  %516 = icmp ne i32 %515, 0
  %517 = zext i1 %516 to i64
  %518 = select i1 %516, i32 0, i32 1
  %519 = load i32*, i32** %8, align 8
  %520 = load i32, i32* %519, align 4
  %521 = or i32 %520, %518
  store i32 %521, i32* %519, align 4
  store i32 1, i32* %5, align 4
  br label %625

522:                                              ; preds = %510
  %523 = load i64, i64* @g_weak, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %532

525:                                              ; preds = %522
  %526 = load i8*, i8** %13, align 8
  %527 = call i32 @str2ean(i8* %526)
  %528 = load i32*, i32** %8, align 8
  store i32 %527, i32* %528, align 4
  %529 = load i32*, i32** %8, align 8
  %530 = load i32, i32* %529, align 4
  %531 = or i32 %530, 1
  store i32 %531, i32* %529, align 4
  store i32 1, i32* %5, align 4
  br label %625

532:                                              ; preds = %522
  %533 = load i32, i32* %7, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %571, label %535

535:                                              ; preds = %532
  %536 = load i32, i32* %17, align 4
  %537 = icmp eq i32 %536, -1
  br i1 %537, label %538, label %550

538:                                              ; preds = %535
  %539 = load i32, i32* @ERROR, align 4
  %540 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %541 = call i32 @errcode(i32 %540)
  %542 = load i8**, i8*** @isn_names, align 8
  %543 = load i32, i32* %9, align 4
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds i8*, i8** %542, i64 %544
  %546 = load i8*, i8** %545, align 8
  %547 = load i8*, i8** %6, align 8
  %548 = call i32 (i8*, i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %546, i8* %547)
  %549 = call i32 @ereport(i32 %539, i32 %548)
  br label %570

550:                                              ; preds = %535
  %551 = load i32, i32* @ERROR, align 4
  %552 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %553 = call i32 @errcode(i32 %552)
  %554 = load i8**, i8*** @isn_names, align 8
  %555 = load i32, i32* %9, align 4
  %556 = zext i32 %555 to i64
  %557 = getelementptr inbounds i8*, i8** %554, i64 %556
  %558 = load i8*, i8** %557, align 8
  %559 = load i8*, i8** %6, align 8
  %560 = load i32, i32* %17, align 4
  %561 = icmp eq i32 %560, 10
  br i1 %561, label %562, label %563

562:                                              ; preds = %550
  br label %566

563:                                              ; preds = %550
  %564 = load i32, i32* %17, align 4
  %565 = add i32 %564, 48
  br label %566

566:                                              ; preds = %563, %562
  %567 = phi i32 [ 88, %562 ], [ %565, %563 ]
  %568 = call i32 (i8*, i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i8* %558, i8* %559, i32 %567)
  %569 = call i32 @ereport(i32 %551, i32 %568)
  br label %570

570:                                              ; preds = %566, %538
  br label %571

571:                                              ; preds = %570, %532
  store i32 0, i32* %5, align 4
  br label %625

572:                                              ; preds = %311, %303, %290, %267, %252, %240, %212, %174, %146, %110, %81
  %573 = load i32, i32* %7, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %587, label %575

575:                                              ; preds = %572
  %576 = load i32, i32* @ERROR, align 4
  %577 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %578 = call i32 @errcode(i32 %577)
  %579 = load i8**, i8*** @isn_names, align 8
  %580 = load i32, i32* %9, align 4
  %581 = zext i32 %580 to i64
  %582 = getelementptr inbounds i8*, i8** %579, i64 %581
  %583 = load i8*, i8** %582, align 8
  %584 = load i8*, i8** %6, align 8
  %585 = call i32 (i8*, i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %583, i8* %584)
  %586 = call i32 @ereport(i32 %576, i32 %585)
  br label %587

587:                                              ; preds = %575, %572
  store i32 0, i32* %5, align 4
  br label %625

588:                                              ; preds = %396, %331, %319
  %589 = load i32, i32* %7, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %608, label %591

591:                                              ; preds = %588
  %592 = load i32, i32* @ERROR, align 4
  %593 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %594 = call i32 @errcode(i32 %593)
  %595 = load i8**, i8*** @isn_names, align 8
  %596 = load i32, i32* %15, align 4
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds i8*, i8** %595, i64 %597
  %599 = load i8*, i8** %598, align 8
  %600 = load i8**, i8*** @isn_names, align 8
  %601 = load i32, i32* %9, align 4
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds i8*, i8** %600, i64 %602
  %604 = load i8*, i8** %603, align 8
  %605 = load i8*, i8** %6, align 8
  %606 = call i32 (i8*, i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %599, i8* %604, i8* %605)
  %607 = call i32 @ereport(i32 %592, i32 %606)
  br label %608

608:                                              ; preds = %591, %588
  store i32 0, i32* %5, align 4
  br label %625

609:                                              ; preds = %221
  %610 = load i32, i32* %7, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %624, label %612

612:                                              ; preds = %609
  %613 = load i32, i32* @ERROR, align 4
  %614 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %615 = call i32 @errcode(i32 %614)
  %616 = load i8*, i8** %6, align 8
  %617 = load i8**, i8*** @isn_names, align 8
  %618 = load i32, i32* %9, align 4
  %619 = zext i32 %618 to i64
  %620 = getelementptr inbounds i8*, i8** %617, i64 %619
  %621 = load i8*, i8** %620, align 8
  %622 = call i32 (i8*, i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %616, i8* %621)
  %623 = call i32 @ereport(i32 %613, i32 %622)
  br label %624

624:                                              ; preds = %612, %609
  store i32 0, i32* %5, align 4
  br label %625

625:                                              ; preds = %624, %608, %587, %571, %525, %511
  %626 = load i32, i32* %5, align 4
  ret i32 %626
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @isdigit(i8 zeroext) #2

declare dso_local i8* @toupper(i8 zeroext) #2

declare dso_local i8* @checkdig(i8*, i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @weight_checkdig(i8*, i32) #2

declare dso_local i32 @str2ean(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
