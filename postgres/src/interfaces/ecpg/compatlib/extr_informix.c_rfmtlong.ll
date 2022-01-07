; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_rfmtlong.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_rfmtlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8, i8* }

@__const.rfmtlong.tmp = private unnamed_addr constant [2 x i8] c" \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@value = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfmtlong(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca [2 x i8], align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = bitcast [2 x i8]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.rfmtlong.tmp, i32 0, i32 0), i64 2, i1 false)
  store i8 32, i8* %22, align 1
  store i8 32, i8* %23, align 1
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %20, align 8
  %31 = load i8*, i8** %20, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %390

35:                                               ; preds = %3
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @initValue(i64 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i8*, i8** %20, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %390

43:                                               ; preds = %35
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strchr(i8* %44, i32 60)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %14, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strchr(i8* %49, i32 40)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strchr(i8* %53, i32 41)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %19, align 4
  br label %57

57:                                               ; preds = %56, %52, %48
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @getRightMostDot(i8* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i8*, i8** %20, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 0), align 8
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, 1
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %350, %57
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %355

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  store i32 1, i32* %15, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %16, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i8*, i8** %20, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 0, i8* %90, align 1
  br label %355

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %80
  br label %93

93:                                               ; preds = %92, %77
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i32, i32* %13, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %130

101:                                              ; preds = %97
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 41
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 1), align 4
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 45
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 41, i32 32
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %119, i8* %120, align 1
  br label %123

121:                                              ; preds = %105
  %122 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 48, i8* %122, align 1
  br label %123

123:                                              ; preds = %121, %113
  br label %126

124:                                              ; preds = %101
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 46, i8* %125, align 1
  br label %126

126:                                              ; preds = %124, %123
  %127 = load i8*, i8** %20, align 8
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  %129 = call i32 @strcat(i8* %127, i8* %128)
  br label %350

130:                                              ; preds = %97, %94
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 44
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i8, i8* %22, align 1
  store i8 %142, i8* %23, align 1
  br label %149

143:                                              ; preds = %133, %130
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  store i8 %148, i8* %23, align 1
  br label %149

149:                                              ; preds = %143, %141
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %152
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %155
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %158
  %162 = load i8, i8* %23, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 43
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i8, i8* %23, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 45
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %350

170:                                              ; preds = %165, %161, %158, %155, %152, %149
  %171 = load i8, i8* %23, align 1
  %172 = sext i8 %171 to i32
  switch i32 %172, label %332 [
    i32 44, label %173
    i32 42, label %177
    i32 38, label %190
    i32 35, label %203
    i32 45, label %216
    i32 43, label %242
    i32 40, label %265
    i32 41, label %291
    i32 36, label %303
    i32 60, label %325
  ]

173:                                              ; preds = %170
  %174 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 44, i8* %174, align 1
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %339

177:                                              ; preds = %170
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 42, i8* %181, align 1
  br label %189

182:                                              ; preds = %177
  %183 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %187, i8* %188, align 1
  br label %189

189:                                              ; preds = %182, %180
  br label %339

190:                                              ; preds = %170
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 48, i8* %194, align 1
  br label %202

195:                                              ; preds = %190
  %196 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %200, i8* %201, align 1
  br label %202

202:                                              ; preds = %195, %193
  br label %339

203:                                              ; preds = %170
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 32, i8* %207, align 1
  br label %215

208:                                              ; preds = %203
  %209 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %213, i8* %214, align 1
  br label %215

215:                                              ; preds = %208, %206
  br label %339

216:                                              ; preds = %170
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %216
  %220 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 1), align 4
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 45
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = load i32, i32* %18, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 45, i8* %227, align 1
  store i32 1, i32* %18, align 4
  br label %241

228:                                              ; preds = %223, %219, %216
  %229 = load i32, i32* %15, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 32, i8* %232, align 1
  br label %240

233:                                              ; preds = %228
  %234 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %238, i8* %239, align 1
  br label %240

240:                                              ; preds = %233, %231
  br label %241

241:                                              ; preds = %240, %226
  br label %339

242:                                              ; preds = %170
  %243 = load i32, i32* %16, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = load i32, i32* %18, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 1), align 4
  %250 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %249, i8* %250, align 1
  store i32 1, i32* %18, align 4
  br label %264

251:                                              ; preds = %245, %242
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 32, i8* %255, align 1
  br label %263

256:                                              ; preds = %251
  %257 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 8
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %261, i8* %262, align 1
  br label %263

263:                                              ; preds = %256, %254
  br label %264

264:                                              ; preds = %263, %248
  br label %339

265:                                              ; preds = %170
  %266 = load i32, i32* %16, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %265
  %269 = load i32, i32* %19, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 1), align 4
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 45
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 40, i8* %276, align 1
  br label %290

277:                                              ; preds = %271, %268, %265
  %278 = load i32, i32* %15, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 32, i8* %281, align 1
  br label %289

282:                                              ; preds = %277
  %283 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %287, i8* %288, align 1
  br label %289

289:                                              ; preds = %282, %280
  br label %290

290:                                              ; preds = %289, %275
  br label %339

291:                                              ; preds = %170
  %292 = load i32, i32* %19, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %291
  %295 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 1), align 4
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 45
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 41, i8* %299, align 1
  br label %302

300:                                              ; preds = %294, %291
  %301 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 32, i8* %301, align 1
  br label %302

302:                                              ; preds = %300, %298
  br label %339

303:                                              ; preds = %170
  %304 = load i32, i32* %15, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load i32, i32* %17, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %306
  %310 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 36, i8* %310, align 1
  store i32 1, i32* %17, align 4
  br label %324

311:                                              ; preds = %306, %303
  %312 = load i32, i32* %15, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 32, i8* %315, align 1
  br label %323

316:                                              ; preds = %311
  %317 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 8
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %321, i8* %322, align 1
  br label %323

323:                                              ; preds = %316, %314
  br label %324

324:                                              ; preds = %323, %309
  br label %339

325:                                              ; preds = %170
  %326 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 8
  %327 = load i32, i32* %12, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %326, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %330, i8* %331, align 1
  br label %339

332:                                              ; preds = %170
  %333 = load i8*, i8** %6, align 8
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %337, i8* %338, align 1
  br label %339

339:                                              ; preds = %332, %325, %324, %302, %290, %264, %241, %215, %202, %189, %173
  %340 = load i8*, i8** %20, align 8
  %341 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  %342 = call i32 @strcat(i8* %340, i8* %341)
  %343 = load i8*, i8** %6, align 8
  %344 = load i32, i32* %10, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  %347 = load i8, i8* %346, align 1
  store i8 %347, i8* %22, align 1
  %348 = load i32, i32* %12, align 4
  %349 = add nsw i32 %348, -1
  store i32 %349, i32* %12, align 4
  br label %350

350:                                              ; preds = %339, %169, %126
  %351 = load i32, i32* %10, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %10, align 4
  %353 = load i32, i32* %11, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %11, align 4
  br label %67

355:                                              ; preds = %86, %67
  %356 = load i8*, i8** %20, align 8
  %357 = load i64, i64* %8, align 8
  %358 = getelementptr inbounds i8, i8* %356, i64 %357
  store i8 0, i8* %358, align 1
  %359 = load i8*, i8** %20, align 8
  %360 = call i64 @strlen(i8* %359)
  store i64 %360, i64* %9, align 8
  %361 = load i8*, i8** %7, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 0
  store i8 0, i8* %362, align 1
  %363 = load i64, i64* %9, align 8
  %364 = sub i64 %363, 1
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %10, align 4
  br label %366

366:                                              ; preds = %379, %355
  %367 = load i32, i32* %10, align 4
  %368 = icmp sge i32 %367, 0
  br i1 %368, label %369, label %382

369:                                              ; preds = %366
  %370 = load i8*, i8** %20, align 8
  %371 = load i32, i32* %10, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %370, i64 %372
  %374 = load i8, i8* %373, align 1
  %375 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  store i8 %374, i8* %375, align 1
  %376 = load i8*, i8** %7, align 8
  %377 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  %378 = call i32 @strcat(i8* %376, i8* %377)
  br label %379

379:                                              ; preds = %369
  %380 = load i32, i32* %10, align 4
  %381 = add nsw i32 %380, -1
  store i32 %381, i32* %10, align 4
  br label %366

382:                                              ; preds = %366
  %383 = load i8*, i8** %7, align 8
  %384 = load i64, i64* %9, align 8
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  store i8 0, i8* %385, align 1
  %386 = load i8*, i8** %20, align 8
  %387 = call i32 @free(i8* %386)
  %388 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @value, i32 0, i32 2), align 8
  %389 = call i32 @free(i8* %388)
  store i32 0, i32* %4, align 4
  br label %390

390:                                              ; preds = %382, %39, %33
  %391 = load i32, i32* %4, align 4
  ret i32 %391
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @initValue(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @getRightMostDot(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
