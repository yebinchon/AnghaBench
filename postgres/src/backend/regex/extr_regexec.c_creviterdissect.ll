; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_creviterdissect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_creviterdissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.subre = type { i8, i32, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.dfa = type { i32 }

@SHORTER = common dso_local global i32 0, align 4
@REG_OKAY = common dso_local global i32 0, align 4
@DUPINF = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"creviter %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%d: working endpoint %d: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%d: verifying %d..%d\0A\00", align 1
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%d successful\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.subre*, i32*, i32*)* @creviterdissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creviterdissect(%struct.vars* %0, %struct.subre* %1, i32* %2, i32* %3) #0 {
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
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.subre* %1, %struct.subre** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.subre*, %struct.subre** %7, align 8
  %20 = getelementptr inbounds %struct.subre, %struct.subre* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 42
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.subre*, %struct.subre** %7, align 8
  %27 = getelementptr inbounds %struct.subre, %struct.subre* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.subre*, %struct.subre** %7, align 8
  %32 = getelementptr inbounds %struct.subre, %struct.subre* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %30, %4
  %39 = phi i1 [ false, %4 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.subre*, %struct.subre** %7, align 8
  %43 = getelementptr inbounds %struct.subre, %struct.subre* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SHORTER, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @assert(i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ule i32* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.subre*, %struct.subre** %7, align 8
  %56 = getelementptr inbounds %struct.subre, %struct.subre* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %38
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp eq i32* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @REG_OKAY, align 4
  store i32 %65, i32* %5, align 4
  br label %361

66:                                               ; preds = %60
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load %struct.subre*, %struct.subre** %7, align 8
  %76 = getelementptr inbounds %struct.subre, %struct.subre* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %67
  %80 = load %struct.subre*, %struct.subre** %7, align 8
  %81 = getelementptr inbounds %struct.subre, %struct.subre* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DUPINF, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.subre*, %struct.subre** %7, align 8
  %87 = getelementptr inbounds %struct.subre, %struct.subre* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %85, %79, %67
  %90 = load i64, i64* %14, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %14, align 8
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %98, 1
  %100 = mul i64 %99, 8
  %101 = call i64 @MALLOC(i64 %100)
  %102 = inttoptr i64 %101 to i32**
  store i32** %102, i32*** %11, align 8
  %103 = load i32**, i32*** %11, align 8
  %104 = icmp eq i32** %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @REG_ESPACE, align 4
  store i32 %106, i32* %5, align 4
  br label %361

107:                                              ; preds = %97
  %108 = load i32*, i32** %8, align 8
  %109 = load i32**, i32*** %11, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  store i32* %108, i32** %110, align 8
  %111 = load %struct.vars*, %struct.vars** %6, align 8
  %112 = load %struct.subre*, %struct.subre** %7, align 8
  %113 = getelementptr inbounds %struct.subre, %struct.subre* %112, i32 0, i32 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call %struct.dfa* @getsubdfa(%struct.vars* %111, %struct.TYPE_6__* %114)
  store %struct.dfa* %115, %struct.dfa** %10, align 8
  %116 = call i64 (...) @ISERR()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %107
  %119 = load i32**, i32*** %11, align 8
  %120 = call i32 @FREE(i32** %119)
  %121 = load %struct.vars*, %struct.vars** %6, align 8
  %122 = getelementptr inbounds %struct.vars, %struct.vars* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %5, align 4
  br label %361

124:                                              ; preds = %107
  %125 = load %struct.subre*, %struct.subre** %7, align 8
  %126 = getelementptr inbounds %struct.subre, %struct.subre* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 @MDEBUG(i8* %129)
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %131 = load i32*, i32** %8, align 8
  store i32* %131, i32** %12, align 8
  br label %132

132:                                              ; preds = %350, %244, %124
  %133 = load i32, i32* %16, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %351

135:                                              ; preds = %132
  %136 = load i32*, i32** %12, align 8
  %137 = load i32**, i32*** %11, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %137, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %136, %142
  br i1 %143, label %144, label %167

144:                                              ; preds = %135
  %145 = load i32*, i32** %12, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = icmp ne i32* %145, %146
  br i1 %147, label %148, label %167

148:                                              ; preds = %144
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %164, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %16, align 4
  %155 = sub nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = load i32*, i32** %9, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = ptrtoint i32* %157 to i64
  %160 = ptrtoint i32* %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 4
  %163 = icmp slt i64 %156, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %152, %148
  %165 = load i32*, i32** %12, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %12, align 8
  br label %167

167:                                              ; preds = %164, %152, %144, %135
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %14, align 8
  %171 = icmp uge i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32*, i32** %9, align 8
  store i32* %173, i32** %12, align 8
  br label %174

174:                                              ; preds = %172, %167
  %175 = load %struct.vars*, %struct.vars** %6, align 8
  %176 = load %struct.dfa*, %struct.dfa** %10, align 8
  %177 = load i32**, i32*** %11, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %177, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = call i32* @shortest(%struct.vars* %175, %struct.dfa* %176, i32* %182, i32* %183, i32* %184, i32** null, i32* null)
  %186 = load i32**, i32*** %11, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  store i32* %185, i32** %189, align 8
  %190 = call i64 (...) @ISERR()
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %174
  %193 = load i32**, i32*** %11, align 8
  %194 = call i32 @FREE(i32** %193)
  %195 = load %struct.vars*, %struct.vars** %6, align 8
  %196 = getelementptr inbounds %struct.vars, %struct.vars* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %5, align 4
  br label %361

198:                                              ; preds = %174
  %199 = load i32**, i32*** %11, align 8
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load i32, i32* %16, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %16, align 4
  br label %328

208:                                              ; preds = %198
  %209 = load %struct.subre*, %struct.subre** %7, align 8
  %210 = getelementptr inbounds %struct.subre, %struct.subre* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = load i32**, i32*** %11, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @LOFF(i32* %217)
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @MDEBUG(i8* %220)
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %208
  %226 = load i32, i32* %16, align 4
  %227 = sub nsw i32 %226, 1
  store i32 %227, i32* %15, align 4
  br label %228

228:                                              ; preds = %225, %208
  %229 = load i32**, i32*** %11, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %229, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = load i32*, i32** %9, align 8
  %235 = icmp ne i32* %233, %234
  br i1 %235, label %236, label %253

236:                                              ; preds = %228
  %237 = load i32, i32* %16, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %14, align 8
  %240 = icmp uge i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i32, i32* %16, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %16, align 4
  br label %328

244:                                              ; preds = %236
  %245 = load i32, i32* %16, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %16, align 4
  %247 = load i32**, i32*** %11, align 8
  %248 = load i32, i32* %16, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %247, i64 %250
  %252 = load i32*, i32** %251, align 8
  store i32* %252, i32** %12, align 8
  br label %132

253:                                              ; preds = %228
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %13, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  br label %328

258:                                              ; preds = %253
  %259 = load %struct.subre*, %struct.subre** %7, align 8
  %260 = getelementptr inbounds %struct.subre, %struct.subre* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, 1
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i8*
  %267 = call i32 @MDEBUG(i8* %266)
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %17, align 4
  br label %270

270:                                              ; preds = %310, %258
  %271 = load i32, i32* %17, align 4
  %272 = load i32, i32* %16, align 4
  %273 = icmp sle i32 %271, %272
  br i1 %273, label %274, label %313

274:                                              ; preds = %270
  %275 = load %struct.vars*, %struct.vars** %6, align 8
  %276 = load %struct.subre*, %struct.subre** %7, align 8
  %277 = getelementptr inbounds %struct.subre, %struct.subre* %276, i32 0, i32 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = call i32 @zaptreesubs(%struct.vars* %275, %struct.TYPE_6__* %278)
  %280 = load %struct.vars*, %struct.vars** %6, align 8
  %281 = load %struct.subre*, %struct.subre** %7, align 8
  %282 = getelementptr inbounds %struct.subre, %struct.subre* %281, i32 0, i32 4
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = load i32**, i32*** %11, align 8
  %285 = load i32, i32* %17, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32*, i32** %284, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = load i32**, i32*** %11, align 8
  %291 = load i32, i32* %17, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = call i32 @cdissect(%struct.vars* %280, %struct.TYPE_6__* %283, i32* %289, i32* %294)
  store i32 %295, i32* %18, align 4
  %296 = load i32, i32* %18, align 4
  %297 = load i32, i32* @REG_OKAY, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %274
  %300 = load i32, i32* %17, align 4
  store i32 %300, i32* %15, align 4
  br label %310

301:                                              ; preds = %274
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* @REG_NOMATCH, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  br label %313

306:                                              ; preds = %301
  %307 = load i32**, i32*** %11, align 8
  %308 = call i32 @FREE(i32** %307)
  %309 = load i32, i32* %18, align 4
  store i32 %309, i32* %5, align 4
  br label %361

310:                                              ; preds = %299
  %311 = load i32, i32* %17, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %17, align 4
  br label %270

313:                                              ; preds = %305, %270
  %314 = load i32, i32* %17, align 4
  %315 = load i32, i32* %16, align 4
  %316 = icmp sgt i32 %314, %315
  br i1 %316, label %317, label %327

317:                                              ; preds = %313
  %318 = load %struct.subre*, %struct.subre** %7, align 8
  %319 = getelementptr inbounds %struct.subre, %struct.subre* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = sext i32 %320 to i64
  %322 = inttoptr i64 %321 to i8*
  %323 = call i32 @MDEBUG(i8* %322)
  %324 = load i32**, i32*** %11, align 8
  %325 = call i32 @FREE(i32** %324)
  %326 = load i32, i32* @REG_OKAY, align 4
  store i32 %326, i32* %5, align 4
  br label %361

327:                                              ; preds = %313
  br label %328

328:                                              ; preds = %327, %257, %241, %205
  br label %329

329:                                              ; preds = %347, %328
  %330 = load i32, i32* %16, align 4
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %350

332:                                              ; preds = %329
  %333 = load i32**, i32*** %11, align 8
  %334 = load i32, i32* %16, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32*, i32** %333, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = load i32*, i32** %9, align 8
  %339 = icmp ult i32* %337, %338
  br i1 %339, label %340, label %347

340:                                              ; preds = %332
  %341 = load i32**, i32*** %11, align 8
  %342 = load i32, i32* %16, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32*, i32** %341, i64 %343
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 1
  store i32* %346, i32** %12, align 8
  br label %350

347:                                              ; preds = %332
  %348 = load i32, i32* %16, align 4
  %349 = add nsw i32 %348, -1
  store i32 %349, i32* %16, align 4
  br label %329

350:                                              ; preds = %340, %329
  br label %132

351:                                              ; preds = %132
  %352 = load %struct.subre*, %struct.subre** %7, align 8
  %353 = getelementptr inbounds %struct.subre, %struct.subre* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = inttoptr i64 %355 to i8*
  %357 = call i32 @MDEBUG(i8* %356)
  %358 = load i32**, i32*** %11, align 8
  %359 = call i32 @FREE(i32** %358)
  %360 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %360, i32* %5, align 4
  br label %361

361:                                              ; preds = %351, %317, %306, %192, %118, %105, %64
  %362 = load i32, i32* %5, align 4
  ret i32 %362
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MALLOC(i64) #1

declare dso_local %struct.dfa* @getsubdfa(%struct.vars*, %struct.TYPE_6__*) #1

declare dso_local i64 @ISERR(...) #1

declare dso_local i32 @FREE(i32**) #1

declare dso_local i32 @MDEBUG(i8*) #1

declare dso_local i32* @shortest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @LOFF(i32*) #1

declare dso_local i32 @zaptreesubs(%struct.vars*, %struct.TYPE_6__*) #1

declare dso_local i32 @cdissect(%struct.vars*, %struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
