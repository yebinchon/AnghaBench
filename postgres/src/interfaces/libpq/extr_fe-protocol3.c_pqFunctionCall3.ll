; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqFunctionCall3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqFunctionCall3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__, i64 }
%struct.TYPE_25__ = type { i32, i64 }

@PGRES_FATAL_ERROR = common dso_local global i32 0, align 4
@PGRES_COMMAND_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"protocol error: id=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pqFunctionCall3(%struct.TYPE_27__* %0, i32 %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_26__* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_26__* %5, %struct.TYPE_26__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  store i32 %22, i32* %17, align 4
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %24 = call i64 @pqPutMsgStart(float 7.000000e+01, i32 0, %struct.TYPE_27__* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %29 = call i64 @pqPutInt(i32 %27, i32 4, %struct.TYPE_27__* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %33 = call i64 @pqPutInt(i32 1, i32 2, %struct.TYPE_27__* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %37 = call i64 @pqPutInt(i32 1, i32 2, %struct.TYPE_27__* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %42 = call i64 @pqPutInt(i32 %40, i32 2, %struct.TYPE_27__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %35, %31, %26, %7
  store i32* null, i32** %8, align 8
  br label %329

45:                                               ; preds = %39
  store i32 0, i32* %21, align 4
  br label %46

46:                                               ; preds = %118, %45
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %121

50:                                               ; preds = %46
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %52 = load i32, i32* %21, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %58 = call i64 @pqPutInt(i32 %56, i32 4, %struct.TYPE_27__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32* null, i32** %8, align 8
  br label %329

61:                                               ; preds = %50
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %63 = load i32, i32* %21, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %118

70:                                               ; preds = %61
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %70
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %80 = load i32, i32* %21, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %87 = load i32, i32* %21, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %93 = call i64 @pqPutInt(i32 %85, i32 %91, %struct.TYPE_27__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  store i32* null, i32** %8, align 8
  br label %329

96:                                               ; preds = %78
  br label %117

97:                                               ; preds = %70
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %107 = load i32, i32* %21, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %113 = call i64 @pqPutnchar(i8* %105, i32 %111, %struct.TYPE_27__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  store i32* null, i32** %8, align 8
  br label %329

116:                                              ; preds = %97
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117, %69
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %21, align 4
  br label %46

121:                                              ; preds = %46
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %123 = call i64 @pqPutInt(i32 1, i32 2, %struct.TYPE_27__* %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32* null, i32** %8, align 8
  br label %329

126:                                              ; preds = %121
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %128 = call i64 @pqPutMsgEnd(%struct.TYPE_27__* %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %132 = call i64 @pqFlush(%struct.TYPE_27__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %126
  store i32* null, i32** %8, align 8
  br label %329

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %317, %299, %276, %270, %264, %257, %248, %238, %223, %214, %163, %158, %135
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %141 = call i64 @pqWait(i32 1, i32 0, %struct.TYPE_27__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %145 = call i64 @pqReadData(%struct.TYPE_27__* %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %139
  br label %324

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148, %136
  store i32 1, i32* %16, align 4
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %156 = call i64 @pqGetc(i8* %18, %struct.TYPE_27__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  br label %136

159:                                              ; preds = %149
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %161 = call i64 @pqGetInt(i32* %19, i32 4, %struct.TYPE_27__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %136

164:                                              ; preds = %159
  %165 = load i32, i32* %19, align 4
  %166 = icmp slt i32 %165, 4
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %169 = load i8, i8* %18, align 1
  %170 = load i32, i32* %19, align 4
  %171 = call i32 @handleSyncLoss(%struct.TYPE_27__* %168, i8 signext %169, i32 %170)
  br label %324

172:                                              ; preds = %164
  %173 = load i32, i32* %19, align 4
  %174 = icmp sgt i32 %173, 30000
  br i1 %174, label %175, label %184

175:                                              ; preds = %172
  %176 = load i8, i8* %18, align 1
  %177 = call i32 @VALID_LONG_MESSAGE_TYPE(i8 signext %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %175
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %181 = load i8, i8* %18, align 1
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @handleSyncLoss(%struct.TYPE_27__* %180, i8 signext %181, i32 %182)
  br label %324

184:                                              ; preds = %175, %172
  %185 = load i32, i32* %19, align 4
  %186 = sub nsw i32 %185, 4
  store i32 %186, i32* %19, align 4
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %189, %192
  store i32 %193, i32* %20, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %19, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %184
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = load i32, i32* %19, align 4
  %203 = sext i32 %202 to i64
  %204 = add i64 %201, %203
  %205 = trunc i64 %204 to i32
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %207 = call i64 @pqCheckInBufferSpace(i32 %205, %struct.TYPE_27__* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %197
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %211 = load i8, i8* %18, align 1
  %212 = load i32, i32* %19, align 4
  %213 = call i32 @handleSyncLoss(%struct.TYPE_27__* %210, i8 signext %211, i32 %212)
  br label %324

214:                                              ; preds = %197
  br label %136

215:                                              ; preds = %184
  %216 = load i8, i8* %18, align 1
  %217 = sext i8 %216 to i32
  switch i32 %217, label %301 [
    i32 86, label %218
    i32 69, label %253
    i32 65, label %260
    i32 78, label %266
    i32 90, label %272
    i32 83, label %295
  ]

218:                                              ; preds = %215
  %219 = load i32*, i32** %12, align 8
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %221 = call i64 @pqGetInt(i32* %219, i32 4, %struct.TYPE_27__* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %136

224:                                              ; preds = %218
  %225 = load i32*, i32** %12, align 8
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, -1
  br i1 %227, label %228, label %251

228:                                              ; preds = %224
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %228
  %232 = load i32*, i32** %11, align 8
  %233 = load i32*, i32** %12, align 8
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %236 = call i64 @pqGetInt(i32* %232, i32 %234, %struct.TYPE_27__* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %136

239:                                              ; preds = %231
  br label %250

240:                                              ; preds = %228
  %241 = load i32*, i32** %11, align 8
  %242 = bitcast i32* %241 to i8*
  %243 = load i32*, i32** %12, align 8
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %246 = call i32 @pqGetnchar(i8* %242, i32 %244, %struct.TYPE_27__* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  br label %136

249:                                              ; preds = %240
  br label %250

250:                                              ; preds = %249, %239
  br label %251

251:                                              ; preds = %250, %224
  %252 = load i32, i32* @PGRES_COMMAND_OK, align 4
  store i32 %252, i32* %17, align 4
  br label %317

253:                                              ; preds = %215
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %255 = call i32 @pqGetErrorNotice3(%struct.TYPE_27__* %254, i32 1)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  br label %136

258:                                              ; preds = %253
  %259 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  store i32 %259, i32* %17, align 4
  br label %317

260:                                              ; preds = %215
  %261 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %262 = call i32 @getNotify(%struct.TYPE_27__* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %136

265:                                              ; preds = %260
  br label %317

266:                                              ; preds = %215
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %268 = call i32 @pqGetErrorNotice3(%struct.TYPE_27__* %267, i32 0)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  br label %136

271:                                              ; preds = %266
  br label %317

272:                                              ; preds = %215
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %274 = call i32 @getReadyForQuery(%struct.TYPE_27__* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  br label %136

277:                                              ; preds = %272
  %278 = load i32, i32* %19, align 4
  %279 = add nsw i32 5, %278
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %277
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %290 = call i32* @pqPrepareAsyncResult(%struct.TYPE_27__* %289)
  store i32* %290, i32** %8, align 8
  br label %329

291:                                              ; preds = %277
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %293 = load i32, i32* %17, align 4
  %294 = call i32* @PQmakeEmptyPGresult(%struct.TYPE_27__* %292, i32 %293)
  store i32* %294, i32** %8, align 8
  br label %329

295:                                              ; preds = %215
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %297 = call i32 @getParameterStatus(%struct.TYPE_27__* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  br label %136

300:                                              ; preds = %295
  br label %317

301:                                              ; preds = %215
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 3
  %304 = call i32 @libpq_gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %305 = load i8, i8* %18, align 1
  %306 = call i32 @printfPQExpBuffer(i32* %303, i32 %304, i8 signext %305)
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %308 = call i32 @pqSaveErrorResult(%struct.TYPE_27__* %307)
  %309 = load i32, i32* %19, align 4
  %310 = add nsw i32 5, %309
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, %310
  store i32 %314, i32* %312, align 4
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %316 = call i32* @pqPrepareAsyncResult(%struct.TYPE_27__* %315)
  store i32* %316, i32** %8, align 8
  br label %329

317:                                              ; preds = %300, %271, %265, %258, %251
  %318 = load i32, i32* %19, align 4
  %319 = add nsw i32 5, %318
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, %319
  store i32 %323, i32* %321, align 4
  store i32 0, i32* %16, align 4
  br label %136

324:                                              ; preds = %209, %179, %167, %147
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %326 = call i32 @pqSaveErrorResult(%struct.TYPE_27__* %325)
  %327 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %328 = call i32* @pqPrepareAsyncResult(%struct.TYPE_27__* %327)
  store i32* %328, i32** %8, align 8
  br label %329

329:                                              ; preds = %324, %301, %291, %288, %134, %125, %115, %95, %60, %44
  %330 = load i32*, i32** %8, align 8
  ret i32* %330
}

declare dso_local i64 @pqPutMsgStart(float, i32, %struct.TYPE_27__*) #1

declare dso_local i64 @pqPutInt(i32, i32, %struct.TYPE_27__*) #1

declare dso_local i64 @pqPutnchar(i8*, i32, %struct.TYPE_27__*) #1

declare dso_local i64 @pqPutMsgEnd(%struct.TYPE_27__*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_27__*) #1

declare dso_local i64 @pqWait(i32, i32, %struct.TYPE_27__*) #1

declare dso_local i64 @pqReadData(%struct.TYPE_27__*) #1

declare dso_local i64 @pqGetc(i8*, %struct.TYPE_27__*) #1

declare dso_local i64 @pqGetInt(i32*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @handleSyncLoss(%struct.TYPE_27__*, i8 signext, i32) #1

declare dso_local i32 @VALID_LONG_MESSAGE_TYPE(i8 signext) #1

declare dso_local i64 @pqCheckInBufferSpace(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @pqGetnchar(i8*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @pqGetErrorNotice3(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @getNotify(%struct.TYPE_27__*) #1

declare dso_local i32 @getReadyForQuery(%struct.TYPE_27__*) #1

declare dso_local i32* @pqPrepareAsyncResult(%struct.TYPE_27__*) #1

declare dso_local i32* @PQmakeEmptyPGresult(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @getParameterStatus(%struct.TYPE_27__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, i8 signext) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @pqSaveErrorResult(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
