; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_citerdissect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_citerdissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.subre = type { i8, i32, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.dfa = type { i32 }

@SHORTER = common dso_local global i32 0, align 4
@DUPINF = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"citer %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%d: working endpoint %d: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%d: verifying %d..%d\0A\00", align 1
@REG_OKAY = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%d successful\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%d allowing zero matches\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.subre*, i32*, i32*)* @citerdissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @citerdissect(%struct.vars* %0, %struct.subre* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.subre*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dfa*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.subre* %1, %struct.subre** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.subre*, %struct.subre** %7, align 8
  %21 = getelementptr inbounds %struct.subre, %struct.subre* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 42
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.subre*, %struct.subre** %7, align 8
  %28 = getelementptr inbounds %struct.subre, %struct.subre* %27, i32 0, i32 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load %struct.subre*, %struct.subre** %7, align 8
  %33 = getelementptr inbounds %struct.subre, %struct.subre* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br label %39

39:                                               ; preds = %31, %4
  %40 = phi i1 [ false, %4 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.subre*, %struct.subre** %7, align 8
  %44 = getelementptr inbounds %struct.subre, %struct.subre* %43, i32 0, i32 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SHORTER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ule i32* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.subre*, %struct.subre** %7, align 8
  %60 = getelementptr inbounds %struct.subre, %struct.subre* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %39
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load %struct.subre*, %struct.subre** %7, align 8
  %74 = getelementptr inbounds %struct.subre, %struct.subre* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ugt i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %65
  %78 = load %struct.subre*, %struct.subre** %7, align 8
  %79 = getelementptr inbounds %struct.subre, %struct.subre* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DUPINF, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.subre*, %struct.subre** %7, align 8
  %85 = getelementptr inbounds %struct.subre, %struct.subre* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %83, %77, %65
  %88 = load i64, i64* %14, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %14, align 8
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i64, i64* %14, align 8
  %97 = add i64 %96, 1
  %98 = mul i64 %97, 8
  %99 = call i64 @MALLOC(i64 %98)
  %100 = inttoptr i64 %99 to i32**
  store i32** %100, i32*** %11, align 8
  %101 = load i32**, i32*** %11, align 8
  %102 = icmp eq i32** %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @REG_ESPACE, align 4
  store i32 %104, i32* %5, align 4
  br label %392

105:                                              ; preds = %95
  %106 = load i32*, i32** %8, align 8
  %107 = load i32**, i32*** %11, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  store i32* %106, i32** %108, align 8
  %109 = load %struct.vars*, %struct.vars** %6, align 8
  %110 = load %struct.subre*, %struct.subre** %7, align 8
  %111 = getelementptr inbounds %struct.subre, %struct.subre* %110, i32 0, i32 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = call %struct.dfa* @getsubdfa(%struct.vars* %109, %struct.TYPE_6__* %112)
  store %struct.dfa* %113, %struct.dfa** %10, align 8
  %114 = call i64 (...) @ISERR()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %105
  %117 = load i32**, i32*** %11, align 8
  %118 = call i32 @FREE(i32** %117)
  %119 = load %struct.vars*, %struct.vars** %6, align 8
  %120 = getelementptr inbounds %struct.vars, %struct.vars* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %5, align 4
  br label %392

122:                                              ; preds = %105
  %123 = load %struct.subre*, %struct.subre** %7, align 8
  %124 = getelementptr inbounds %struct.subre, %struct.subre* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @MDEBUG(i8* %127)
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %129 = load i32*, i32** %9, align 8
  store i32* %129, i32** %12, align 8
  br label %130

130:                                              ; preds = %364, %236, %122
  %131 = load i32, i32* %16, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %365

133:                                              ; preds = %130
  %134 = load %struct.vars*, %struct.vars** %6, align 8
  %135 = load %struct.dfa*, %struct.dfa** %10, align 8
  %136 = load i32**, i32*** %11, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = call i32* @longest(%struct.vars* %134, %struct.dfa* %135, i32* %141, i32* %142, i32* null)
  %144 = load i32**, i32*** %11, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  store i32* %143, i32** %147, align 8
  %148 = call i64 (...) @ISERR()
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %133
  %151 = load i32**, i32*** %11, align 8
  %152 = call i32 @FREE(i32** %151)
  %153 = load %struct.vars*, %struct.vars** %6, align 8
  %154 = getelementptr inbounds %struct.vars, %struct.vars* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %5, align 4
  br label %392

156:                                              ; preds = %133
  %157 = load i32**, i32*** %11, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %16, align 4
  br label %315

166:                                              ; preds = %156
  %167 = load %struct.subre*, %struct.subre** %7, align 8
  %168 = getelementptr inbounds %struct.subre, %struct.subre* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = load i32**, i32*** %11, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @LOFF(i32* %175)
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @MDEBUG(i8* %178)
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %166
  %184 = load i32, i32* %16, align 4
  %185 = sub nsw i32 %184, 1
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %183, %166
  %187 = load i32**, i32*** %11, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = icmp ne i32* %191, %192
  br i1 %193, label %194, label %240

194:                                              ; preds = %186
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %14, align 8
  %198 = icmp uge i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load i32, i32* %16, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %16, align 4
  br label %315

202:                                              ; preds = %194
  %203 = load i32**, i32*** %11, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = load i32**, i32*** %11, align 8
  %209 = load i32, i32* %16, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %208, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %207, %213
  br i1 %214, label %215, label %236

215:                                              ; preds = %202
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* %13, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %235, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %16, align 4
  %222 = sub nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = load i32*, i32** %9, align 8
  %225 = load i32**, i32*** %11, align 8
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = ptrtoint i32* %224 to i64
  %231 = ptrtoint i32* %229 to i64
  %232 = sub i64 %230, %231
  %233 = sdiv exact i64 %232, 4
  %234 = icmp slt i64 %223, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %219, %215
  br label %315

236:                                              ; preds = %219, %202
  %237 = load i32, i32* %16, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %16, align 4
  %239 = load i32*, i32** %9, align 8
  store i32* %239, i32** %12, align 8
  br label %130

240:                                              ; preds = %186
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %13, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  br label %315

245:                                              ; preds = %240
  %246 = load %struct.subre*, %struct.subre** %7, align 8
  %247 = getelementptr inbounds %struct.subre, %struct.subre* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %15, align 4
  %250 = add nsw i32 %249, 1
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  %254 = call i32 @MDEBUG(i8* %253)
  %255 = load i32, i32* %15, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %17, align 4
  br label %257

257:                                              ; preds = %297, %245
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp sle i32 %258, %259
  br i1 %260, label %261, label %300

261:                                              ; preds = %257
  %262 = load %struct.vars*, %struct.vars** %6, align 8
  %263 = load %struct.subre*, %struct.subre** %7, align 8
  %264 = getelementptr inbounds %struct.subre, %struct.subre* %263, i32 0, i32 4
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %264, align 8
  %266 = call i32 @zaptreesubs(%struct.vars* %262, %struct.TYPE_6__* %265)
  %267 = load %struct.vars*, %struct.vars** %6, align 8
  %268 = load %struct.subre*, %struct.subre** %7, align 8
  %269 = getelementptr inbounds %struct.subre, %struct.subre* %268, i32 0, i32 4
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = load i32**, i32*** %11, align 8
  %272 = load i32, i32* %17, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %271, i64 %274
  %276 = load i32*, i32** %275, align 8
  %277 = load i32**, i32*** %11, align 8
  %278 = load i32, i32* %17, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = call i32 @cdissect(%struct.vars* %267, %struct.TYPE_6__* %270, i32* %276, i32* %281)
  store i32 %282, i32* %18, align 4
  %283 = load i32, i32* %18, align 4
  %284 = load i32, i32* @REG_OKAY, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %261
  %287 = load i32, i32* %17, align 4
  store i32 %287, i32* %15, align 4
  br label %297

288:                                              ; preds = %261
  %289 = load i32, i32* %18, align 4
  %290 = load i32, i32* @REG_NOMATCH, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %288
  br label %300

293:                                              ; preds = %288
  %294 = load i32**, i32*** %11, align 8
  %295 = call i32 @FREE(i32** %294)
  %296 = load i32, i32* %18, align 4
  store i32 %296, i32* %5, align 4
  br label %392

297:                                              ; preds = %286
  %298 = load i32, i32* %17, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %17, align 4
  br label %257

300:                                              ; preds = %292, %257
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* %16, align 4
  %303 = icmp sgt i32 %301, %302
  br i1 %303, label %304, label %314

304:                                              ; preds = %300
  %305 = load %struct.subre*, %struct.subre** %7, align 8
  %306 = getelementptr inbounds %struct.subre, %struct.subre* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = inttoptr i64 %308 to i8*
  %310 = call i32 @MDEBUG(i8* %309)
  %311 = load i32**, i32*** %11, align 8
  %312 = call i32 @FREE(i32** %311)
  %313 = load i32, i32* @REG_OKAY, align 4
  store i32 %313, i32* %5, align 4
  br label %392

314:                                              ; preds = %300
  br label %315

315:                                              ; preds = %314, %244, %235, %199, %163
  br label %316

316:                                              ; preds = %361, %315
  %317 = load i32, i32* %16, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %364

319:                                              ; preds = %316
  %320 = load i32**, i32*** %11, align 8
  %321 = load i32, i32* %16, align 4
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32*, i32** %320, i64 %323
  %325 = load i32*, i32** %324, align 8
  store i32* %325, i32** %19, align 8
  %326 = load i32**, i32*** %11, align 8
  %327 = load i32, i32* %16, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32*, i32** %326, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = load i32*, i32** %19, align 8
  %332 = icmp ugt i32* %330, %331
  br i1 %332, label %333, label %361

333:                                              ; preds = %319
  %334 = load i32**, i32*** %11, align 8
  %335 = load i32, i32* %16, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32*, i32** %334, i64 %336
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 -1
  store i32* %339, i32** %12, align 8
  %340 = load i32*, i32** %12, align 8
  %341 = load i32*, i32** %19, align 8
  %342 = icmp ugt i32* %340, %341
  br i1 %342, label %359, label %343

343:                                              ; preds = %333
  %344 = load i32, i32* %16, align 4
  %345 = load i32, i32* %13, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %360

347:                                              ; preds = %343
  %348 = load i32, i32* %13, align 4
  %349 = load i32, i32* %16, align 4
  %350 = sub nsw i32 %348, %349
  %351 = sext i32 %350 to i64
  %352 = load i32*, i32** %9, align 8
  %353 = load i32*, i32** %19, align 8
  %354 = ptrtoint i32* %352 to i64
  %355 = ptrtoint i32* %353 to i64
  %356 = sub i64 %354, %355
  %357 = sdiv exact i64 %356, 4
  %358 = icmp sge i64 %351, %357
  br i1 %358, label %359, label %360

359:                                              ; preds = %347, %333
  br label %364

360:                                              ; preds = %347, %343
  br label %361

361:                                              ; preds = %360, %319
  %362 = load i32, i32* %16, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %16, align 4
  br label %316

364:                                              ; preds = %359, %316
  br label %130

365:                                              ; preds = %130
  %366 = load i32**, i32*** %11, align 8
  %367 = call i32 @FREE(i32** %366)
  %368 = load %struct.subre*, %struct.subre** %7, align 8
  %369 = getelementptr inbounds %struct.subre, %struct.subre* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %384

372:                                              ; preds = %365
  %373 = load i32*, i32** %8, align 8
  %374 = load i32*, i32** %9, align 8
  %375 = icmp eq i32* %373, %374
  br i1 %375, label %376, label %384

376:                                              ; preds = %372
  %377 = load %struct.subre*, %struct.subre** %7, align 8
  %378 = getelementptr inbounds %struct.subre, %struct.subre* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = sext i32 %379 to i64
  %381 = inttoptr i64 %380 to i8*
  %382 = call i32 @MDEBUG(i8* %381)
  %383 = load i32, i32* @REG_OKAY, align 4
  store i32 %383, i32* %5, align 4
  br label %392

384:                                              ; preds = %372, %365
  %385 = load %struct.subre*, %struct.subre** %7, align 8
  %386 = getelementptr inbounds %struct.subre, %struct.subre* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = inttoptr i64 %388 to i8*
  %390 = call i32 @MDEBUG(i8* %389)
  %391 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %391, i32* %5, align 4
  br label %392

392:                                              ; preds = %384, %376, %304, %293, %150, %116, %103
  %393 = load i32, i32* %5, align 4
  ret i32 %393
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MALLOC(i64) #1

declare dso_local %struct.dfa* @getsubdfa(%struct.vars*, %struct.TYPE_6__*) #1

declare dso_local i64 @ISERR(...) #1

declare dso_local i32 @FREE(i32**) #1

declare dso_local i32 @MDEBUG(i8*) #1

declare dso_local i32* @longest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*) #1

declare dso_local i32 @LOFF(i32*) #1

declare dso_local i32 @zaptreesubs(%struct.vars*, %struct.TYPE_6__*) #1

declare dso_local i32 @cdissect(%struct.vars*, %struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
