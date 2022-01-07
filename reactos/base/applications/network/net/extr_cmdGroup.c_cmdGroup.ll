; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdGroup.c_cmdGroup.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdGroup.c_cmdGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 83, i32 116, i32 97, i32 116, i32 117, i32 115, i32 58, i32 32, i32 37, i32 108, i32 117, i32 10, i32 0], align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 47, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_GROUP_SYNTAX = common dso_local global i32 0, align 4
@MSG_GROUP_HELP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 47, i32 97, i32 100, i32 100, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i32] [i32 47, i32 100, i32 101, i32 108, i32 101, i32 116, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [10 x i32] [i32 47, i32 99, i32 111, i32 109, i32 109, i32 101, i32 110, i32 116, i32 58, i32 0], align 4
@.str.6 = private unnamed_addr constant [8 x i32] [i32 47, i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 0], align 4
@StdErr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i32] [i32 84, i32 104, i32 101, i32 32, i32 47, i32 68, i32 79, i32 77, i32 65, i32 73, i32 78, i32 32, i32 111, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 101, i32 100, i32 32, i32 121, i32 101, i32 116, i32 46, i32 10, i32 0], align 4
@NERR_Success = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdGroup(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca %struct.TYPE_4__, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32** null, i32*** %14, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = call i64 (...) @EnumerateGroups()
  store i64 %24, i64* %18, align 8
  %25 = load i32, i32* @StdOut, align 4
  %26 = load i64, i64* %18, align 8
  %27 = call i32 @ConPrintf(i32 %25, i8* bitcast ([13 x i32]* @.str to i8*), i64 %26)
  store i32 0, i32* %3, align 4
  br label %376

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32**, i32*** %5, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @DisplayGroup(i32* %34)
  store i64 %35, i64* %18, align 8
  %36 = load i32, i32* @StdOut, align 4
  %37 = load i64, i64* %18, align 8
  %38 = call i32 @ConPrintf(i32 %36, i8* bitcast ([13 x i32]* @.str to i8*), i64 %37)
  store i32 0, i32* %3, align 4
  br label %376

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  store i32 2, i32* %6, align 4
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 47
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load i32**, i32*** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %12, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %49, %40
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %76, %57
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32**, i32*** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %79

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %59

79:                                               ; preds = %72, %59
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = call i32 (...) @RtlGetProcessHeap()
  %84 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32** @RtlAllocateHeap(i32 %83, i32 %84, i32 %88)
  store i32** %89, i32*** %14, align 8
  %90 = load i32**, i32*** %14, align 8
  %91 = icmp eq i32** %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %376

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %79
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %121, %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = load i32**, i32*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 47
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %124

109:                                              ; preds = %99
  %110 = load i32**, i32*** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32**, i32*** %14, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  store i32* %114, i32** %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %95

124:                                              ; preds = %108, %95
  br label %125

125:                                              ; preds = %198, %124
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %201

129:                                              ; preds = %125
  %130 = load i32**, i32*** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @_wcsicmp(i32* %134, i8* bitcast ([6 x i32]* @.str.1 to i8*))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = call i32 @PrintMessageString(i32 4381)
  %139 = load i32, i32* @StdOut, align 4
  %140 = call i32 @ConPuts(i32 %139, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %141 = load i32, i32* @MSG_GROUP_SYNTAX, align 4
  %142 = call i32 @PrintNetMessage(i32 %141)
  %143 = load i32, i32* @MSG_GROUP_HELP, align 4
  %144 = call i32 @PrintNetMessage(i32 %143)
  store i32 0, i32* %3, align 4
  br label %376

145:                                              ; preds = %129
  %146 = load i32**, i32*** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i64 @_wcsicmp(i32* %150, i8* bitcast ([5 x i32]* @.str.3 to i8*))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i64, i64* @TRUE, align 8
  store i64 %154, i64* %10, align 8
  br label %196

155:                                              ; preds = %145
  %156 = load i32**, i32*** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = call i64 @_wcsicmp(i32* %160, i8* bitcast ([8 x i32]* @.str.4 to i8*))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i64, i64* @TRUE, align 8
  store i64 %164, i64* %11, align 8
  br label %195

165:                                              ; preds = %155
  %166 = load i32**, i32*** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = call i64 @_wcsnicmp(i32* %170, i8* bitcast ([10 x i32]* @.str.5 to i8*), i32 9)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %165
  %174 = load i32**, i32*** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 9
  store i32* %179, i32** %13, align 8
  br label %194

180:                                              ; preds = %165
  %181 = load i32**, i32*** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = call i64 @_wcsicmp(i32* %185, i8* bitcast ([8 x i32]* @.str.6 to i8*))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load i32, i32* @StdErr, align 4
  %190 = call i32 @ConPuts(i32 %189, i8* bitcast ([42 x i32]* @.str.7 to i8*))
  br label %193

191:                                              ; preds = %180
  %192 = call i32 @PrintErrorMessage(i32 3506)
  store i32 1, i32* %8, align 4
  br label %358

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %193, %173
  br label %195

195:                                              ; preds = %194, %163
  br label %196

196:                                              ; preds = %195, %153
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %125

201:                                              ; preds = %125
  %202 = load i32*, i32** %12, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 1, i32* %8, align 4
  br label %358

205:                                              ; preds = %201
  %206 = load i64, i64* %10, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i64, i64* %11, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 1, i32* %8, align 4
  br label %358

212:                                              ; preds = %208, %205
  %213 = load i32**, i32*** %14, align 8
  %214 = icmp eq i32** %213, null
  br i1 %214, label %215, label %286

215:                                              ; preds = %212
  %216 = load i64, i64* %10, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %233, label %218

218:                                              ; preds = %215
  %219 = load i64, i64* %11, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %218
  %222 = load i32*, i32** %13, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %233

224:                                              ; preds = %221
  %225 = load i32*, i32** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* %225, i32** %226, align 8
  %227 = load i32*, i32** %12, align 8
  %228 = ptrtoint %struct.TYPE_4__* %17 to i32
  %229 = call i64 @NetGroupSetInfo(i32* null, i32* %227, i32 1002, i32 %228, i32* null)
  store i64 %229, i64* %18, align 8
  %230 = load i32, i32* @StdOut, align 4
  %231 = load i64, i64* %18, align 8
  %232 = call i32 @ConPrintf(i32 %230, i8* bitcast ([13 x i32]* @.str to i8*), i64 %231)
  br label %285

233:                                              ; preds = %221, %218, %215
  %234 = load i64, i64* %10, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %267

236:                                              ; preds = %233
  %237 = load i64, i64* %11, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %267, label %239

239:                                              ; preds = %236
  %240 = load i32*, i32** %13, align 8
  %241 = icmp eq i32* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32*, i32** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32* %243, i32** %244, align 8
  br label %250

245:                                              ; preds = %239
  %246 = load i32*, i32** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32* %246, i32** %247, align 8
  %248 = load i32*, i32** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32* %248, i32** %249, align 8
  br label %250

250:                                              ; preds = %245, %242
  %251 = load i32*, i32** %13, align 8
  %252 = icmp eq i32* %251, null
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i32 0, i32 1
  %255 = load i32*, i32** %13, align 8
  %256 = icmp eq i32* %255, null
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = ptrtoint %struct.TYPE_6__* %15 to i32
  br label %261

259:                                              ; preds = %250
  %260 = ptrtoint %struct.TYPE_5__* %16 to i32
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  %263 = call i64 @NetGroupAdd(i32* null, i32 %254, i32 %262, i32* null)
  store i64 %263, i64* %18, align 8
  %264 = load i32, i32* @StdOut, align 4
  %265 = load i64, i64* %18, align 8
  %266 = call i32 @ConPrintf(i32 %264, i8* bitcast ([13 x i32]* @.str to i8*), i64 %265)
  br label %284

267:                                              ; preds = %236, %233
  %268 = load i64, i64* %10, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %282, label %270

270:                                              ; preds = %267
  %271 = load i64, i64* %11, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %270
  %274 = load i32*, i32** %13, align 8
  %275 = icmp eq i32* %274, null
  br i1 %275, label %276, label %282

276:                                              ; preds = %273
  %277 = load i32*, i32** %12, align 8
  %278 = call i64 @NetGroupDel(i32* null, i32* %277)
  store i64 %278, i64* %18, align 8
  %279 = load i32, i32* @StdOut, align 4
  %280 = load i64, i64* %18, align 8
  %281 = call i32 @ConPrintf(i32 %279, i8* bitcast ([13 x i32]* @.str to i8*), i64 %280)
  br label %283

282:                                              ; preds = %273, %270, %267
  store i32 1, i32* %8, align 4
  br label %283

283:                                              ; preds = %282, %276
  br label %284

284:                                              ; preds = %283, %261
  br label %285

285:                                              ; preds = %284, %224
  br label %357

286:                                              ; preds = %212
  %287 = load i64, i64* %10, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %320

289:                                              ; preds = %286
  %290 = load i64, i64* %11, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %320, label %292

292:                                              ; preds = %289
  %293 = load i32*, i32** %13, align 8
  %294 = icmp eq i32* %293, null
  br i1 %294, label %295, label %320

295:                                              ; preds = %292
  store i32 0, i32* %6, align 4
  br label %296

296:                                              ; preds = %313, %295
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* %9, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %316

300:                                              ; preds = %296
  %301 = load i32*, i32** %12, align 8
  %302 = load i32**, i32*** %14, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = call i64 @NetGroupAddUser(i32* null, i32* %301, i32* %306)
  store i64 %307, i64* %18, align 8
  %308 = load i64, i64* %18, align 8
  %309 = load i64, i64* @NERR_Success, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %300
  br label %316

312:                                              ; preds = %300
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %6, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %6, align 4
  br label %296

316:                                              ; preds = %311, %296
  %317 = load i32, i32* @StdOut, align 4
  %318 = load i64, i64* %18, align 8
  %319 = call i32 @ConPrintf(i32 %317, i8* bitcast ([13 x i32]* @.str to i8*), i64 %318)
  br label %356

320:                                              ; preds = %292, %289, %286
  %321 = load i64, i64* %10, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %354, label %323

323:                                              ; preds = %320
  %324 = load i64, i64* %11, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %354

326:                                              ; preds = %323
  %327 = load i32*, i32** %13, align 8
  %328 = icmp eq i32* %327, null
  br i1 %328, label %329, label %354

329:                                              ; preds = %326
  store i32 0, i32* %6, align 4
  br label %330

330:                                              ; preds = %347, %329
  %331 = load i32, i32* %6, align 4
  %332 = load i32, i32* %9, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %350

334:                                              ; preds = %330
  %335 = load i32*, i32** %12, align 8
  %336 = load i32**, i32*** %14, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32*, i32** %336, i64 %338
  %340 = load i32*, i32** %339, align 8
  %341 = call i64 @NetGroupDelUser(i32* null, i32* %335, i32* %340)
  store i64 %341, i64* %18, align 8
  %342 = load i64, i64* %18, align 8
  %343 = load i64, i64* @NERR_Success, align 8
  %344 = icmp ne i64 %342, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %334
  br label %350

346:                                              ; preds = %334
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %6, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %6, align 4
  br label %330

350:                                              ; preds = %345, %330
  %351 = load i32, i32* @StdOut, align 4
  %352 = load i64, i64* %18, align 8
  %353 = call i32 @ConPrintf(i32 %351, i8* bitcast ([13 x i32]* @.str to i8*), i64 %352)
  br label %355

354:                                              ; preds = %326, %323, %320
  store i32 1, i32* %8, align 4
  br label %355

355:                                              ; preds = %354, %350
  br label %356

356:                                              ; preds = %355, %316
  br label %357

357:                                              ; preds = %356, %285
  br label %358

358:                                              ; preds = %357, %211, %204, %191
  %359 = load i32**, i32*** %14, align 8
  %360 = icmp ne i32** %359, null
  br i1 %360, label %361, label %365

361:                                              ; preds = %358
  %362 = call i32 (...) @RtlGetProcessHeap()
  %363 = load i32**, i32*** %14, align 8
  %364 = call i32 @RtlFreeHeap(i32 %362, i32 0, i32** %363)
  br label %365

365:                                              ; preds = %361, %358
  %366 = load i32, i32* %8, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %365
  %369 = call i32 @PrintMessageString(i32 4381)
  %370 = load i32, i32* @StdOut, align 4
  %371 = call i32 @ConPuts(i32 %370, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %372 = load i32, i32* @MSG_GROUP_SYNTAX, align 4
  %373 = call i32 @PrintNetMessage(i32 %372)
  br label %374

374:                                              ; preds = %368, %365
  %375 = load i32, i32* %8, align 4
  store i32 %375, i32* %3, align 4
  br label %376

376:                                              ; preds = %374, %137, %92, %31, %23
  %377 = load i32, i32* %3, align 4
  ret i32 %377
}

declare dso_local i64 @EnumerateGroups(...) #1

declare dso_local i32 @ConPrintf(i32, i8*, i64) #1

declare dso_local i64 @DisplayGroup(i32*) #1

declare dso_local i32** @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintNetMessage(i32) #1

declare dso_local i64 @_wcsnicmp(i32*, i8*, i32) #1

declare dso_local i32 @PrintErrorMessage(i32) #1

declare dso_local i64 @NetGroupSetInfo(i32*, i32*, i32, i32, i32*) #1

declare dso_local i64 @NetGroupAdd(i32*, i32, i32, i32*) #1

declare dso_local i64 @NetGroupDel(i32*, i32*) #1

declare dso_local i64 @NetGroupAddUser(i32*, i32*, i32*) #1

declare dso_local i64 @NetGroupDelUser(i32*, i32*, i32*) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
