; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_EvalMesh2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_gl_EvalMesh2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"glEvalMesh2\00", align 1
@GL_POINTS = common dso_local global i32 0, align 4
@GL_LINE_STRIP = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"glEvalMesh2(mode)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_EvalMesh2(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_10__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %27 = call i32 @gl_error(%struct.TYPE_10__* %25, i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %469

28:                                               ; preds = %6
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %32, %36
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = sdiv i32 %37, %42
  store i32 %43, i32* %16, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %47, %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = sdiv i32 %52, %57
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %465 [
    i32 128, label %60
    i32 129, label %152
    i32 130, label %335
  ]

60:                                               ; preds = %28
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = load i32, i32* @GL_POINTS, align 4
  %63 = call i32 @gl_Begin(%struct.TYPE_10__* %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %146, %60
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %149

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %17, align 4
  br label %100

77:                                               ; preds = %69
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %79, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %17, align 4
  br label %99

90:                                               ; preds = %77
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %18, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %93, %97
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %90, %85
  br label %100

100:                                              ; preds = %99, %72
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %142, %100
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %145

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %15, align 4
  br label %137

114:                                              ; preds = %106
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %116, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %15, align 4
  br label %136

127:                                              ; preds = %114
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %16, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %130, %134
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %127, %122
  br label %137

137:                                              ; preds = %136, %109
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @gl_EvalCoord2f(%struct.TYPE_10__* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %102

145:                                              ; preds = %102
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %65

149:                                              ; preds = %65
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %151 = call i32 @gl_End(%struct.TYPE_10__* %150)
  br label %469

152:                                              ; preds = %28
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %240, %152
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %243

158:                                              ; preds = %154
  %159 = load i32, i32* %14, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %17, align 4
  br label %189

166:                                              ; preds = %158
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %168, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %166
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %17, align 4
  br label %188

179:                                              ; preds = %166
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %18, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %182, %186
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %179, %174
  br label %189

189:                                              ; preds = %188, %161
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = load i32, i32* @GL_LINE_STRIP, align 4
  %192 = call i32 @gl_Begin(%struct.TYPE_10__* %190, i32 %191)
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %13, align 4
  br label %194

194:                                              ; preds = %234, %189
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %237

198:                                              ; preds = %194
  %199 = load i32, i32* %13, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %15, align 4
  br label %229

206:                                              ; preds = %198
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %208, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %206
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %15, align 4
  br label %228

219:                                              ; preds = %206
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %16, align 4
  %222 = mul nsw i32 %220, %221
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %222, %226
  store i32 %227, i32* %15, align 4
  br label %228

228:                                              ; preds = %219, %214
  br label %229

229:                                              ; preds = %228, %201
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %17, align 4
  %233 = call i32 @gl_EvalCoord2f(%struct.TYPE_10__* %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %229
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  br label %194

237:                                              ; preds = %194
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %239 = call i32 @gl_End(%struct.TYPE_10__* %238)
  br label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %14, align 4
  br label %154

243:                                              ; preds = %154
  %244 = load i32, i32* %9, align 4
  store i32 %244, i32* %13, align 4
  br label %245

245:                                              ; preds = %331, %243
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp sle i32 %246, %247
  br i1 %248, label %249, label %334

249:                                              ; preds = %245
  %250 = load i32, i32* %13, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %15, align 4
  br label %280

257:                                              ; preds = %249
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %259, %263
  br i1 %264, label %265, label %270

265:                                              ; preds = %257
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  store i32 %269, i32* %15, align 4
  br label %279

270:                                              ; preds = %257
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* %16, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %273, %277
  store i32 %278, i32* %15, align 4
  br label %279

279:                                              ; preds = %270, %265
  br label %280

280:                                              ; preds = %279, %252
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %282 = load i32, i32* @GL_LINE_STRIP, align 4
  %283 = call i32 @gl_Begin(%struct.TYPE_10__* %281, i32 %282)
  %284 = load i32, i32* %11, align 4
  store i32 %284, i32* %14, align 4
  br label %285

285:                                              ; preds = %325, %280
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %12, align 4
  %288 = icmp sle i32 %286, %287
  br i1 %288, label %289, label %328

289:                                              ; preds = %285
  %290 = load i32, i32* %14, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %17, align 4
  br label %320

297:                                              ; preds = %289
  %298 = load i32, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %299, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %297
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  store i32 %309, i32* %17, align 4
  br label %319

310:                                              ; preds = %297
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* %18, align 4
  %313 = mul nsw i32 %311, %312
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %313, %317
  store i32 %318, i32* %17, align 4
  br label %319

319:                                              ; preds = %310, %305
  br label %320

320:                                              ; preds = %319, %292
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %322 = load i32, i32* %15, align 4
  %323 = load i32, i32* %17, align 4
  %324 = call i32 @gl_EvalCoord2f(%struct.TYPE_10__* %321, i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %320
  %326 = load i32, i32* %14, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %14, align 4
  br label %285

328:                                              ; preds = %285
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %330 = call i32 @gl_End(%struct.TYPE_10__* %329)
  br label %331

331:                                              ; preds = %328
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %13, align 4
  br label %245

334:                                              ; preds = %245
  br label %469

335:                                              ; preds = %28
  %336 = load i32, i32* %11, align 4
  store i32 %336, i32* %14, align 4
  br label %337

337:                                              ; preds = %461, %335
  %338 = load i32, i32* %14, align 4
  %339 = load i32, i32* %12, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %464

341:                                              ; preds = %337
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %343 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %344 = call i32 @gl_Begin(%struct.TYPE_10__* %342, i32 %343)
  %345 = load i32, i32* %14, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %341
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %19, align 4
  br label %375

352:                                              ; preds = %341
  %353 = load i32, i32* %14, align 4
  %354 = sext i32 %353 to i64
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 4
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %354, %358
  br i1 %359, label %360, label %365

360:                                              ; preds = %352
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  store i32 %364, i32* %19, align 4
  br label %374

365:                                              ; preds = %352
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %18, align 4
  %368 = mul nsw i32 %366, %367
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %368, %372
  store i32 %373, i32* %19, align 4
  br label %374

374:                                              ; preds = %365, %360
  br label %375

375:                                              ; preds = %374, %347
  %376 = load i32, i32* %14, align 4
  %377 = add nsw i32 %376, 1
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %375
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  store i32 %383, i32* %20, align 4
  br label %409

384:                                              ; preds = %375
  %385 = load i32, i32* %14, align 4
  %386 = add nsw i32 %385, 1
  %387 = sext i32 %386 to i64
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 4
  %391 = load i64, i64* %390, align 8
  %392 = icmp eq i64 %387, %391
  br i1 %392, label %393, label %398

393:                                              ; preds = %384
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  store i32 %397, i32* %20, align 4
  br label %408

398:                                              ; preds = %384
  %399 = load i32, i32* %14, align 4
  %400 = add nsw i32 %399, 1
  %401 = load i32, i32* %18, align 4
  %402 = mul nsw i32 %400, %401
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %402, %406
  store i32 %407, i32* %20, align 4
  br label %408

408:                                              ; preds = %398, %393
  br label %409

409:                                              ; preds = %408, %379
  %410 = load i32, i32* %9, align 4
  store i32 %410, i32* %13, align 4
  br label %411

411:                                              ; preds = %455, %409
  %412 = load i32, i32* %13, align 4
  %413 = load i32, i32* %10, align 4
  %414 = icmp sle i32 %412, %413
  br i1 %414, label %415, label %458

415:                                              ; preds = %411
  %416 = load i32, i32* %13, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %423

418:                                              ; preds = %415
  %419 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  store i32 %422, i32* %15, align 4
  br label %446

423:                                              ; preds = %415
  %424 = load i32, i32* %13, align 4
  %425 = sext i32 %424 to i64
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 5
  %429 = load i64, i64* %428, align 8
  %430 = icmp eq i64 %425, %429
  br i1 %430, label %431, label %436

431:                                              ; preds = %423
  %432 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  store i32 %435, i32* %15, align 4
  br label %445

436:                                              ; preds = %423
  %437 = load i32, i32* %13, align 4
  %438 = load i32, i32* %16, align 4
  %439 = mul nsw i32 %437, %438
  %440 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = add nsw i32 %439, %443
  store i32 %444, i32* %15, align 4
  br label %445

445:                                              ; preds = %436, %431
  br label %446

446:                                              ; preds = %445, %418
  %447 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %448 = load i32, i32* %15, align 4
  %449 = load i32, i32* %19, align 4
  %450 = call i32 @gl_EvalCoord2f(%struct.TYPE_10__* %447, i32 %448, i32 %449)
  %451 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %452 = load i32, i32* %15, align 4
  %453 = load i32, i32* %20, align 4
  %454 = call i32 @gl_EvalCoord2f(%struct.TYPE_10__* %451, i32 %452, i32 %453)
  br label %455

455:                                              ; preds = %446
  %456 = load i32, i32* %13, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %13, align 4
  br label %411

458:                                              ; preds = %411
  %459 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %460 = call i32 @gl_End(%struct.TYPE_10__* %459)
  br label %461

461:                                              ; preds = %458
  %462 = load i32, i32* %14, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %14, align 4
  br label %337

464:                                              ; preds = %337
  br label %469

465:                                              ; preds = %28
  %466 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %467 = load i32, i32* @GL_INVALID_ENUM, align 4
  %468 = call i32 @gl_error(%struct.TYPE_10__* %466, i32 %467, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %469

469:                                              ; preds = %24, %465, %464, %334, %149
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_10__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @gl_Begin(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gl_EvalCoord2f(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @gl_End(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
