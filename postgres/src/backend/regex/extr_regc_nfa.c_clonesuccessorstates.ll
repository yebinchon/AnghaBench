; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_clonesuccessorstates.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_clonesuccessorstates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.state = type { i32, i32, %struct.state*, %struct.arc*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.state* }
%struct.arc = type { i64, i64, %struct.state*, %struct.arc* }

@REG_ETOOBIG = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*, %struct.state*, %struct.state*, %struct.arc*, i8*, i8*, i32)* @clonesuccessorstates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clonesuccessorstates(%struct.nfa* %0, %struct.state* %1, %struct.state* %2, %struct.state* %3, %struct.arc* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.nfa*, align 8
  %10 = alloca %struct.state*, align 8
  %11 = alloca %struct.state*, align 8
  %12 = alloca %struct.state*, align 8
  %13 = alloca %struct.arc*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.arc*, align 8
  %19 = alloca %struct.state*, align 8
  %20 = alloca %struct.state*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.arc*, align 8
  %23 = alloca %struct.state*, align 8
  %24 = alloca %struct.state*, align 8
  %25 = alloca %struct.state*, align 8
  %26 = alloca %struct.state*, align 8
  store %struct.nfa* %0, %struct.nfa** %9, align 8
  store %struct.state* %1, %struct.state** %10, align 8
  store %struct.state* %2, %struct.state** %11, align 8
  store %struct.state* %3, %struct.state** %12, align 8
  store %struct.arc* %4, %struct.arc** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %27 = load %struct.nfa*, %struct.nfa** %9, align 8
  %28 = getelementptr inbounds %struct.nfa, %struct.nfa* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @STACK_TOO_DEEP(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = load i32, i32* @REG_ETOOBIG, align 4
  %36 = call i32 @NERR(i32 %35)
  br label %353

37:                                               ; preds = %8
  %38 = load i8*, i8** %14, align 8
  store i8* %38, i8** %17, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i64 @MALLOC(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %17, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @REG_ESPACE, align 4
  %52 = call i32 @NERR(i32 %51)
  br label %353

53:                                               ; preds = %41
  %54 = load i8*, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8*, i8** %17, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memcpy(i8* %57, i8* %58, i32 %62)
  br label %84

64:                                               ; preds = %53
  %65 = load i8*, i8** %17, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 1
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(i8* %65, i32 0, i32 %69)
  %71 = load %struct.state*, %struct.state** %12, align 8
  %72 = getelementptr inbounds %struct.state, %struct.state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = icmp slt i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i8*, i8** %17, align 8
  %79 = load %struct.state*, %struct.state** %12, align 8
  %80 = getelementptr inbounds %struct.state, %struct.state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  store i8 1, i8* %83, align 1
  br label %84

84:                                               ; preds = %64, %56
  br label %85

85:                                               ; preds = %84, %37
  %86 = load %struct.state*, %struct.state** %10, align 8
  %87 = getelementptr inbounds %struct.state, %struct.state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i8*, i8** %17, align 8
  %94 = load %struct.state*, %struct.state** %10, align 8
  %95 = getelementptr inbounds %struct.state, %struct.state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i8*, i8** %17, align 8
  %105 = load %struct.state*, %struct.state** %10, align 8
  %106 = getelementptr inbounds %struct.state, %struct.state* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  store i8 1, i8* %109, align 1
  %110 = load %struct.state*, %struct.state** %10, align 8
  %111 = getelementptr inbounds %struct.state, %struct.state* %110, i32 0, i32 3
  %112 = load %struct.arc*, %struct.arc** %111, align 8
  store %struct.arc* %112, %struct.arc** %18, align 8
  br label %113

113:                                              ; preds = %306, %85
  %114 = load %struct.arc*, %struct.arc** %18, align 8
  %115 = icmp ne %struct.arc* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = call i32 (...) @NISERR()
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %116, %113
  %121 = phi i1 [ false, %113 ], [ %119, %116 ]
  br i1 %121, label %122, label %310

122:                                              ; preds = %120
  %123 = load %struct.arc*, %struct.arc** %18, align 8
  %124 = getelementptr inbounds %struct.arc, %struct.arc* %123, i32 0, i32 2
  %125 = load %struct.state*, %struct.state** %124, align 8
  store %struct.state* %125, %struct.state** %19, align 8
  %126 = load %struct.arc*, %struct.arc** %18, align 8
  %127 = call i64 @isconstraintarc(%struct.arc* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %299

129:                                              ; preds = %122
  %130 = load %struct.state*, %struct.state** %19, align 8
  %131 = call i64 @hasconstraintout(%struct.state* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %299

133:                                              ; preds = %129
  %134 = load %struct.state*, %struct.state** %19, align 8
  %135 = getelementptr inbounds %struct.state, %struct.state* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i8*, i8** %17, align 8
  %142 = load %struct.state*, %struct.state** %19, align 8
  %143 = getelementptr inbounds %struct.state, %struct.state* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %141, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  br label %306

151:                                              ; preds = %133
  store %struct.state* null, %struct.state** %20, align 8
  %152 = load %struct.state*, %struct.state** %11, align 8
  %153 = getelementptr inbounds %struct.state, %struct.state* %152, i32 0, i32 3
  %154 = load %struct.arc*, %struct.arc** %153, align 8
  store %struct.arc* %154, %struct.arc** %22, align 8
  br label %155

155:                                              ; preds = %171, %151
  %156 = load %struct.arc*, %struct.arc** %22, align 8
  %157 = icmp ne %struct.arc* %156, null
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load %struct.arc*, %struct.arc** %22, align 8
  %160 = getelementptr inbounds %struct.arc, %struct.arc* %159, i32 0, i32 2
  %161 = load %struct.state*, %struct.state** %160, align 8
  %162 = getelementptr inbounds %struct.state, %struct.state* %161, i32 0, i32 2
  %163 = load %struct.state*, %struct.state** %162, align 8
  %164 = load %struct.state*, %struct.state** %19, align 8
  %165 = icmp eq %struct.state* %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load %struct.arc*, %struct.arc** %22, align 8
  %168 = getelementptr inbounds %struct.arc, %struct.arc* %167, i32 0, i32 2
  %169 = load %struct.state*, %struct.state** %168, align 8
  store %struct.state* %169, %struct.state** %20, align 8
  br label %175

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170
  %172 = load %struct.arc*, %struct.arc** %22, align 8
  %173 = getelementptr inbounds %struct.arc, %struct.arc* %172, i32 0, i32 3
  %174 = load %struct.arc*, %struct.arc** %173, align 8
  store %struct.arc* %174, %struct.arc** %22, align 8
  br label %155

175:                                              ; preds = %166, %155
  %176 = load %struct.arc*, %struct.arc** %13, align 8
  %177 = icmp ne %struct.arc* %176, null
  br i1 %177, label %178, label %195

178:                                              ; preds = %175
  %179 = load %struct.arc*, %struct.arc** %18, align 8
  %180 = getelementptr inbounds %struct.arc, %struct.arc* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.arc*, %struct.arc** %13, align 8
  %183 = getelementptr inbounds %struct.arc, %struct.arc* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %181, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %178
  %187 = load %struct.arc*, %struct.arc** %18, align 8
  %188 = getelementptr inbounds %struct.arc, %struct.arc* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.arc*, %struct.arc** %13, align 8
  %191 = getelementptr inbounds %struct.arc, %struct.arc* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  store i32 1, i32* %21, align 4
  br label %236

195:                                              ; preds = %186, %178, %175
  store i32 0, i32* %21, align 4
  %196 = load %struct.state*, %struct.state** %11, align 8
  store %struct.state* %196, %struct.state** %23, align 8
  br label %197

197:                                              ; preds = %229, %195
  %198 = load %struct.state*, %struct.state** %23, align 8
  %199 = getelementptr inbounds %struct.state, %struct.state* %198, i32 0, i32 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = icmp ne %struct.TYPE_4__* %200, null
  br i1 %201, label %202, label %235

202:                                              ; preds = %197
  %203 = load %struct.state*, %struct.state** %23, align 8
  %204 = getelementptr inbounds %struct.state, %struct.state* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %228

207:                                              ; preds = %202
  %208 = load %struct.arc*, %struct.arc** %18, align 8
  %209 = getelementptr inbounds %struct.arc, %struct.arc* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.state*, %struct.state** %23, align 8
  %212 = getelementptr inbounds %struct.state, %struct.state* %211, i32 0, i32 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %210, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %207
  %218 = load %struct.arc*, %struct.arc** %18, align 8
  %219 = getelementptr inbounds %struct.arc, %struct.arc* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.state*, %struct.state** %23, align 8
  %222 = getelementptr inbounds %struct.state, %struct.state* %221, i32 0, i32 4
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %220, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %217
  store i32 1, i32* %21, align 4
  br label %235

228:                                              ; preds = %217, %207, %202
  br label %229

229:                                              ; preds = %228
  %230 = load %struct.state*, %struct.state** %23, align 8
  %231 = getelementptr inbounds %struct.state, %struct.state* %230, i32 0, i32 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 2
  %234 = load %struct.state*, %struct.state** %233, align 8
  store %struct.state* %234, %struct.state** %23, align 8
  br label %197

235:                                              ; preds = %227, %197
  br label %236

236:                                              ; preds = %235, %194
  %237 = load i32, i32* %21, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %271

239:                                              ; preds = %236
  %240 = load %struct.state*, %struct.state** %20, align 8
  %241 = icmp ne %struct.state* %240, null
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load %struct.nfa*, %struct.nfa** %9, align 8
  %244 = load %struct.state*, %struct.state** %20, align 8
  %245 = call i32 @dropstate(%struct.nfa* %243, %struct.state* %244)
  br label %246

246:                                              ; preds = %242, %239
  %247 = load %struct.nfa*, %struct.nfa** %9, align 8
  %248 = load %struct.state*, %struct.state** %19, align 8
  %249 = load %struct.state*, %struct.state** %11, align 8
  %250 = load %struct.state*, %struct.state** %12, align 8
  %251 = load %struct.arc*, %struct.arc** %13, align 8
  %252 = load i8*, i8** %17, align 8
  %253 = load i8*, i8** %15, align 8
  %254 = load i32, i32* %16, align 4
  call void @clonesuccessorstates(%struct.nfa* %247, %struct.state* %248, %struct.state* %249, %struct.state* %250, %struct.arc* %251, i8* %252, i8* %253, i32 %254)
  %255 = call i32 (...) @NISERR()
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %267, label %257

257:                                              ; preds = %246
  %258 = load i8*, i8** %17, align 8
  %259 = load %struct.state*, %struct.state** %19, align 8
  %260 = getelementptr inbounds %struct.state, %struct.state* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %258, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 1
  br label %267

267:                                              ; preds = %257, %246
  %268 = phi i1 [ true, %246 ], [ %266, %257 ]
  %269 = zext i1 %268 to i32
  %270 = call i32 @assert(i32 %269)
  br label %298

271:                                              ; preds = %236
  %272 = load %struct.state*, %struct.state** %20, align 8
  %273 = icmp ne %struct.state* %272, null
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = load %struct.nfa*, %struct.nfa** %9, align 8
  %276 = load %struct.arc*, %struct.arc** %18, align 8
  %277 = load %struct.state*, %struct.state** %11, align 8
  %278 = load %struct.state*, %struct.state** %20, align 8
  %279 = call i32 @cparc(%struct.nfa* %275, %struct.arc* %276, %struct.state* %277, %struct.state* %278)
  br label %297

280:                                              ; preds = %271
  %281 = load %struct.nfa*, %struct.nfa** %9, align 8
  %282 = call %struct.state* @newstate(%struct.nfa* %281)
  store %struct.state* %282, %struct.state** %24, align 8
  %283 = load %struct.state*, %struct.state** %24, align 8
  %284 = icmp eq %struct.state* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = call i32 (...) @NISERR()
  %287 = call i32 @assert(i32 %286)
  br label %310

288:                                              ; preds = %280
  %289 = load %struct.state*, %struct.state** %19, align 8
  %290 = load %struct.state*, %struct.state** %24, align 8
  %291 = getelementptr inbounds %struct.state, %struct.state* %290, i32 0, i32 2
  store %struct.state* %289, %struct.state** %291, align 8
  %292 = load %struct.nfa*, %struct.nfa** %9, align 8
  %293 = load %struct.arc*, %struct.arc** %18, align 8
  %294 = load %struct.state*, %struct.state** %11, align 8
  %295 = load %struct.state*, %struct.state** %24, align 8
  %296 = call i32 @cparc(%struct.nfa* %292, %struct.arc* %293, %struct.state* %294, %struct.state* %295)
  br label %297

297:                                              ; preds = %288, %274
  br label %298

298:                                              ; preds = %297, %267
  br label %305

299:                                              ; preds = %129, %122
  %300 = load %struct.nfa*, %struct.nfa** %9, align 8
  %301 = load %struct.arc*, %struct.arc** %18, align 8
  %302 = load %struct.state*, %struct.state** %11, align 8
  %303 = load %struct.state*, %struct.state** %19, align 8
  %304 = call i32 @cparc(%struct.nfa* %300, %struct.arc* %301, %struct.state* %302, %struct.state* %303)
  br label %305

305:                                              ; preds = %299, %298
  br label %306

306:                                              ; preds = %305, %150
  %307 = load %struct.arc*, %struct.arc** %18, align 8
  %308 = getelementptr inbounds %struct.arc, %struct.arc* %307, i32 0, i32 3
  %309 = load %struct.arc*, %struct.arc** %308, align 8
  store %struct.arc* %309, %struct.arc** %18, align 8
  br label %113

310:                                              ; preds = %285, %120
  %311 = load i8*, i8** %14, align 8
  %312 = icmp eq i8* %311, null
  br i1 %312, label %313, label %353

313:                                              ; preds = %310
  %314 = load %struct.state*, %struct.state** %11, align 8
  %315 = getelementptr inbounds %struct.state, %struct.state* %314, i32 0, i32 3
  %316 = load %struct.arc*, %struct.arc** %315, align 8
  store %struct.arc* %316, %struct.arc** %18, align 8
  br label %317

317:                                              ; preds = %346, %313
  %318 = load %struct.arc*, %struct.arc** %18, align 8
  %319 = icmp ne %struct.arc* %318, null
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = call i32 (...) @NISERR()
  %322 = icmp ne i32 %321, 0
  %323 = xor i1 %322, true
  br label %324

324:                                              ; preds = %320, %317
  %325 = phi i1 [ false, %317 ], [ %323, %320 ]
  br i1 %325, label %326, label %350

326:                                              ; preds = %324
  %327 = load %struct.arc*, %struct.arc** %18, align 8
  %328 = getelementptr inbounds %struct.arc, %struct.arc* %327, i32 0, i32 2
  %329 = load %struct.state*, %struct.state** %328, align 8
  store %struct.state* %329, %struct.state** %25, align 8
  %330 = load %struct.state*, %struct.state** %25, align 8
  %331 = getelementptr inbounds %struct.state, %struct.state* %330, i32 0, i32 2
  %332 = load %struct.state*, %struct.state** %331, align 8
  store %struct.state* %332, %struct.state** %26, align 8
  %333 = load %struct.state*, %struct.state** %26, align 8
  %334 = icmp ne %struct.state* %333, null
  br i1 %334, label %335, label %345

335:                                              ; preds = %326
  %336 = load %struct.state*, %struct.state** %25, align 8
  %337 = getelementptr inbounds %struct.state, %struct.state* %336, i32 0, i32 2
  store %struct.state* null, %struct.state** %337, align 8
  %338 = load %struct.nfa*, %struct.nfa** %9, align 8
  %339 = load %struct.state*, %struct.state** %26, align 8
  %340 = load %struct.state*, %struct.state** %25, align 8
  %341 = load %struct.state*, %struct.state** %12, align 8
  %342 = load %struct.arc*, %struct.arc** %13, align 8
  %343 = load i8*, i8** %17, align 8
  %344 = load i32, i32* %16, align 4
  call void @clonesuccessorstates(%struct.nfa* %338, %struct.state* %339, %struct.state* %340, %struct.state* %341, %struct.arc* %342, i8* null, i8* %343, i32 %344)
  br label %345

345:                                              ; preds = %335, %326
  br label %346

346:                                              ; preds = %345
  %347 = load %struct.arc*, %struct.arc** %18, align 8
  %348 = getelementptr inbounds %struct.arc, %struct.arc* %347, i32 0, i32 3
  %349 = load %struct.arc*, %struct.arc** %348, align 8
  store %struct.arc* %349, %struct.arc** %18, align 8
  br label %317

350:                                              ; preds = %324
  %351 = load i8*, i8** %17, align 8
  %352 = call i32 @FREE(i8* %351)
  br label %353

353:                                              ; preds = %34, %50, %350, %310
  ret void
}

declare dso_local i64 @STACK_TOO_DEEP(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @NISERR(...) #1

declare dso_local i64 @isconstraintarc(%struct.arc*) #1

declare dso_local i64 @hasconstraintout(%struct.state*) #1

declare dso_local i32 @dropstate(%struct.nfa*, %struct.state*) #1

declare dso_local i32 @cparc(%struct.nfa*, %struct.arc*, %struct.state*, %struct.state*) #1

declare dso_local %struct.state* @newstate(%struct.nfa*) #1

declare dso_local i32 @FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
