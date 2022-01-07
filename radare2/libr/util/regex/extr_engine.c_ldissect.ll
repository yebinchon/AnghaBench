; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/regex/extr_engine.c_ldissect.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/regex/extr_engine.c_ldissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"diss\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.match*, i8*, i8*, i64, i64)* @dissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dissect(%struct.match* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.match*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.match* %0, %struct.match** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @AT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i64 %27, i64 %28)
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %15, align 8
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %13, align 8
  br label %32

32:                                               ; preds = %467, %5
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %469

36:                                               ; preds = %32
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.match*, %struct.match** %7, align 8
  %39 = getelementptr inbounds %struct.match, %struct.match* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @OP(i32 %45)
  switch i32 %46, label %84 [
    i32 134, label %47
    i32 133, label %47
    i32 141, label %59
  ]

47:                                               ; preds = %36, %36
  %48 = load %struct.match*, %struct.match** %7, align 8
  %49 = getelementptr inbounds %struct.match, %struct.match* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @OPND(i32 %55)
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %14, align 8
  br label %84

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %71, %59
  %61 = load %struct.match*, %struct.match** %7, align 8
  %62 = getelementptr inbounds %struct.match, %struct.match* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @OP(i32 %68)
  %70 = icmp ne i32 %69, 130
  br i1 %70, label %71, label %83

71:                                               ; preds = %60
  %72 = load %struct.match*, %struct.match** %7, align 8
  %73 = getelementptr inbounds %struct.match, %struct.match* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @OPND(i32 %79)
  %81 = load i64, i64* %14, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %14, align 8
  br label %60

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %36, %83, %47
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %14, align 8
  %87 = load %struct.match*, %struct.match** %7, align 8
  %88 = getelementptr inbounds %struct.match, %struct.match* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @OP(i32 %94)
  switch i32 %95, label %465 [
    i32 140, label %96
    i32 142, label %97
    i32 144, label %100
    i32 139, label %100
    i32 143, label %100
    i32 138, label %100
    i32 147, label %101
    i32 146, label %101
    i32 145, label %104
    i32 131, label %104
    i32 133, label %105
    i32 134, label %163
    i32 141, label %247
    i32 129, label %390
    i32 128, label %390
    i32 136, label %390
    i32 135, label %390
    i32 130, label %390
    i32 137, label %391
    i32 132, label %428
  ]

96:                                               ; preds = %84
  br label %466

97:                                               ; preds = %84
  %98 = load i8*, i8** %15, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %15, align 8
  br label %466

100:                                              ; preds = %84, %84, %84, %84
  br label %466

101:                                              ; preds = %84, %84
  %102 = load i8*, i8** %15, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %15, align 8
  br label %466

104:                                              ; preds = %84, %84
  br label %466

105:                                              ; preds = %84
  %106 = load i8*, i8** %9, align 8
  store i8* %106, i8** %16, align 8
  br label %107

107:                                              ; preds = %130, %105
  %108 = load %struct.match*, %struct.match** %7, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = call i8* @slow(%struct.match* %108, i8* %109, i8* %110, i64 %111, i64 %112)
  store i8* %113, i8** %17, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %107
  %117 = load %struct.match*, %struct.match** %7, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i8* @slow(%struct.match* %117, i8* %118, i8* %119, i64 %120, i64 %121)
  store i8* %122, i8** %18, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = icmp eq i8* %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %131

127:                                              ; preds = %116
  %128 = load i8*, i8** %17, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 -1
  store i8* %129, i8** %16, align 8
  br label %130

130:                                              ; preds = %127, %107
  br label %107

131:                                              ; preds = %126
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %19, align 8
  %134 = load i64, i64* %14, align 8
  %135 = sub i64 %134, 1
  store i64 %135, i64* %20, align 8
  %136 = load %struct.match*, %struct.match** %7, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %20, align 8
  %141 = call i8* @slow(%struct.match* %136, i8* %137, i8* %138, i64 %139, i64 %140)
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %131
  %144 = load %struct.match*, %struct.match** %7, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = load i64, i64* %19, align 8
  %148 = load i64, i64* %20, align 8
  %149 = call i8* @dissect(%struct.match* %144, i8* %145, i8* %146, i64 %147, i64 %148)
  store i8* %149, i8** %24, align 8
  %150 = load i8*, i8** %24, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = icmp ne i8* %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  store i8* null, i8** %6, align 8
  br label %476

154:                                              ; preds = %143
  br label %161

155:                                              ; preds = %131
  %156 = load i8*, i8** %15, align 8
  %157 = load i8*, i8** %17, align 8
  %158 = icmp ne i8* %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i8* null, i8** %6, align 8
  br label %476

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160, %154
  %162 = load i8*, i8** %17, align 8
  store i8* %162, i8** %15, align 8
  br label %466

163:                                              ; preds = %84
  %164 = load i8*, i8** %9, align 8
  store i8* %164, i8** %16, align 8
  br label %165

165:                                              ; preds = %188, %163
  %166 = load %struct.match*, %struct.match** %7, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = load i8*, i8** %16, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* %14, align 8
  %171 = call i8* @slow(%struct.match* %166, i8* %167, i8* %168, i64 %169, i64 %170)
  store i8* %171, i8** %17, align 8
  %172 = load i8*, i8** %17, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %188

174:                                              ; preds = %165
  %175 = load %struct.match*, %struct.match** %7, align 8
  %176 = load i8*, i8** %17, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load i64, i64* %11, align 8
  %180 = call i8* @slow(%struct.match* %175, i8* %176, i8* %177, i64 %178, i64 %179)
  store i8* %180, i8** %18, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = icmp eq i8* %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  br label %189

185:                                              ; preds = %174
  %186 = load i8*, i8** %17, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 -1
  store i8* %187, i8** %16, align 8
  br label %188

188:                                              ; preds = %185, %165
  br label %165

189:                                              ; preds = %184
  %190 = load i64, i64* %13, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %19, align 8
  %192 = load i64, i64* %14, align 8
  %193 = sub i64 %192, 1
  store i64 %193, i64* %20, align 8
  %194 = load i8*, i8** %15, align 8
  store i8* %194, i8** %21, align 8
  %195 = load i8*, i8** %21, align 8
  store i8* %195, i8** %23, align 8
  br label %196

196:                                              ; preds = %210, %189
  %197 = load %struct.match*, %struct.match** %7, align 8
  %198 = load i8*, i8** %21, align 8
  %199 = load i8*, i8** %17, align 8
  %200 = load i64, i64* %19, align 8
  %201 = load i64, i64* %20, align 8
  %202 = call i8* @slow(%struct.match* %197, i8* %198, i8* %199, i64 %200, i64 %201)
  store i8* %202, i8** %22, align 8
  %203 = load i8*, i8** %22, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %196
  %206 = load i8*, i8** %22, align 8
  %207 = load i8*, i8** %21, align 8
  %208 = icmp eq i8* %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %205, %196
  br label %213

210:                                              ; preds = %205
  %211 = load i8*, i8** %21, align 8
  store i8* %211, i8** %23, align 8
  %212 = load i8*, i8** %22, align 8
  store i8* %212, i8** %21, align 8
  br label %196

213:                                              ; preds = %209
  %214 = load i8*, i8** %22, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = load i8*, i8** %21, align 8
  store i8* %217, i8** %22, align 8
  %218 = load i8*, i8** %23, align 8
  store i8* %218, i8** %21, align 8
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i8*, i8** %22, align 8
  %221 = load i8*, i8** %17, align 8
  %222 = icmp eq i8* %220, %221
  br i1 %222, label %223, label %246

223:                                              ; preds = %219
  %224 = load %struct.match*, %struct.match** %7, align 8
  %225 = load i8*, i8** %21, align 8
  %226 = load i8*, i8** %22, align 8
  %227 = load i64, i64* %19, align 8
  %228 = load i64, i64* %20, align 8
  %229 = call i8* @slow(%struct.match* %224, i8* %225, i8* %226, i64 %227, i64 %228)
  %230 = load i8*, i8** %17, align 8
  %231 = icmp eq i8* %229, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %223
  %233 = load %struct.match*, %struct.match** %7, align 8
  %234 = load i8*, i8** %21, align 8
  %235 = load i8*, i8** %22, align 8
  %236 = load i64, i64* %19, align 8
  %237 = load i64, i64* %20, align 8
  %238 = call i8* @dissect(%struct.match* %233, i8* %234, i8* %235, i64 %236, i64 %237)
  store i8* %238, i8** %24, align 8
  %239 = load i8*, i8** %24, align 8
  %240 = load i8*, i8** %22, align 8
  %241 = icmp eq i8* %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %232
  %243 = load i8*, i8** %17, align 8
  store i8* %243, i8** %15, align 8
  br label %244

244:                                              ; preds = %242, %232
  br label %245

245:                                              ; preds = %244, %223
  br label %246

246:                                              ; preds = %245, %219
  br label %466

247:                                              ; preds = %84
  %248 = load i8*, i8** %9, align 8
  store i8* %248, i8** %16, align 8
  br label %249

249:                                              ; preds = %272, %247
  %250 = load %struct.match*, %struct.match** %7, align 8
  %251 = load i8*, i8** %15, align 8
  %252 = load i8*, i8** %16, align 8
  %253 = load i64, i64* %13, align 8
  %254 = load i64, i64* %14, align 8
  %255 = call i8* @slow(%struct.match* %250, i8* %251, i8* %252, i64 %253, i64 %254)
  store i8* %255, i8** %17, align 8
  %256 = load i8*, i8** %17, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %272

258:                                              ; preds = %249
  %259 = load %struct.match*, %struct.match** %7, align 8
  %260 = load i8*, i8** %17, align 8
  %261 = load i8*, i8** %9, align 8
  %262 = load i64, i64* %14, align 8
  %263 = load i64, i64* %11, align 8
  %264 = call i8* @slow(%struct.match* %259, i8* %260, i8* %261, i64 %262, i64 %263)
  store i8* %264, i8** %18, align 8
  %265 = load i8*, i8** %18, align 8
  %266 = load i8*, i8** %9, align 8
  %267 = icmp eq i8* %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %258
  br label %273

269:                                              ; preds = %258
  %270 = load i8*, i8** %17, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 -1
  store i8* %271, i8** %16, align 8
  br label %272

272:                                              ; preds = %269, %249
  br label %249

273:                                              ; preds = %268
  %274 = load i64, i64* %13, align 8
  %275 = add i64 %274, 1
  store i64 %275, i64* %19, align 8
  %276 = load i64, i64* %13, align 8
  %277 = load %struct.match*, %struct.match** %7, align 8
  %278 = getelementptr inbounds %struct.match, %struct.match* %277, i32 0, i32 2
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = load i64, i64* %13, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @OPND(i32 %284)
  %286 = add i64 %276, %285
  %287 = sub i64 %286, 1
  store i64 %287, i64* %20, align 8
  %288 = load %struct.match*, %struct.match** %7, align 8
  %289 = getelementptr inbounds %struct.match, %struct.match* %288, i32 0, i32 2
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* %20, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @OP(i32 %295)
  %297 = icmp ne i32 %296, 136
  br i1 %297, label %298, label %299

298:                                              ; preds = %273
  br label %466

299:                                              ; preds = %273
  br label %300

300:                                              ; preds = %376, %299
  %301 = load %struct.match*, %struct.match** %7, align 8
  %302 = load i8*, i8** %15, align 8
  %303 = load i8*, i8** %17, align 8
  %304 = load i64, i64* %19, align 8
  %305 = load i64, i64* %20, align 8
  %306 = call i8* @slow(%struct.match* %301, i8* %302, i8* %303, i64 %304, i64 %305)
  %307 = load i8*, i8** %17, align 8
  %308 = icmp eq i8* %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %300
  br label %377

310:                                              ; preds = %300
  %311 = load %struct.match*, %struct.match** %7, align 8
  %312 = getelementptr inbounds %struct.match, %struct.match* %311, i32 0, i32 2
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* %20, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @OP(i32 %318)
  %320 = icmp eq i32 %319, 136
  br i1 %320, label %321, label %376

321:                                              ; preds = %310
  %322 = load i64, i64* %20, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %20, align 8
  %324 = load %struct.match*, %struct.match** %7, align 8
  %325 = getelementptr inbounds %struct.match, %struct.match* %324, i32 0, i32 2
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = load i64, i64* %20, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @OP(i32 %331)
  %333 = icmp eq i32 %332, 135
  br i1 %333, label %334, label %375

334:                                              ; preds = %321
  %335 = load i64, i64* %20, align 8
  %336 = add i64 %335, 1
  store i64 %336, i64* %19, align 8
  %337 = load %struct.match*, %struct.match** %7, align 8
  %338 = getelementptr inbounds %struct.match, %struct.match* %337, i32 0, i32 2
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load i64, i64* %20, align 8
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = call i64 @OPND(i32 %344)
  %346 = load i64, i64* %20, align 8
  %347 = add i64 %346, %345
  store i64 %347, i64* %20, align 8
  %348 = load %struct.match*, %struct.match** %7, align 8
  %349 = getelementptr inbounds %struct.match, %struct.match* %348, i32 0, i32 2
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* %20, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @OP(i32 %355)
  %357 = icmp eq i32 %356, 135
  br i1 %357, label %358, label %361

358:                                              ; preds = %334
  %359 = load i64, i64* %20, align 8
  %360 = add i64 %359, -1
  store i64 %360, i64* %20, align 8
  br label %374

361:                                              ; preds = %334
  %362 = load %struct.match*, %struct.match** %7, align 8
  %363 = getelementptr inbounds %struct.match, %struct.match* %362, i32 0, i32 2
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = load i64, i64* %20, align 8
  %368 = getelementptr inbounds i32, i32* %366, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @OP(i32 %369)
  %371 = icmp ne i32 %370, 130
  br i1 %371, label %372, label %373

372:                                              ; preds = %361
  br label %377

373:                                              ; preds = %361
  br label %374

374:                                              ; preds = %373, %358
  br label %375

375:                                              ; preds = %374, %321
  br label %376

376:                                              ; preds = %375, %310
  br label %300

377:                                              ; preds = %372, %309
  %378 = load %struct.match*, %struct.match** %7, align 8
  %379 = load i8*, i8** %15, align 8
  %380 = load i8*, i8** %17, align 8
  %381 = load i64, i64* %19, align 8
  %382 = load i64, i64* %20, align 8
  %383 = call i8* @dissect(%struct.match* %378, i8* %379, i8* %380, i64 %381, i64 %382)
  store i8* %383, i8** %24, align 8
  %384 = load i8*, i8** %24, align 8
  %385 = load i8*, i8** %17, align 8
  %386 = icmp eq i8* %384, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %377
  %388 = load i8*, i8** %17, align 8
  store i8* %388, i8** %15, align 8
  br label %389

389:                                              ; preds = %387, %377
  br label %466

390:                                              ; preds = %84, %84, %84, %84, %84
  br label %466

391:                                              ; preds = %84
  %392 = load %struct.match*, %struct.match** %7, align 8
  %393 = getelementptr inbounds %struct.match, %struct.match* %392, i32 0, i32 2
  %394 = load %struct.TYPE_3__*, %struct.TYPE_3__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 1
  %396 = load i32*, i32** %395, align 8
  %397 = load i64, i64* %13, align 8
  %398 = getelementptr inbounds i32, i32* %396, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = call i64 @OPND(i32 %399)
  %401 = trunc i64 %400 to i32
  store i32 %401, i32* %12, align 4
  %402 = load i32, i32* %12, align 4
  %403 = icmp sgt i32 %402, 0
  br i1 %403, label %404, label %427

404:                                              ; preds = %391
  %405 = load i32, i32* %12, align 4
  %406 = load %struct.match*, %struct.match** %7, align 8
  %407 = getelementptr inbounds %struct.match, %struct.match* %406, i32 0, i32 2
  %408 = load %struct.TYPE_3__*, %struct.TYPE_3__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp sle i32 %405, %410
  br i1 %411, label %412, label %427

412:                                              ; preds = %404
  %413 = load i8*, i8** %15, align 8
  %414 = load %struct.match*, %struct.match** %7, align 8
  %415 = getelementptr inbounds %struct.match, %struct.match* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = sext i32 %416 to i64
  %418 = sub i64 0, %417
  %419 = getelementptr inbounds i8, i8* %413, i64 %418
  %420 = load %struct.match*, %struct.match** %7, align 8
  %421 = getelementptr inbounds %struct.match, %struct.match* %420, i32 0, i32 1
  %422 = load %struct.TYPE_4__*, %struct.TYPE_4__** %421, align 8
  %423 = load i32, i32* %12, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 0
  store i8* %419, i8** %426, align 8
  br label %427

427:                                              ; preds = %412, %404, %391
  br label %466

428:                                              ; preds = %84
  %429 = load %struct.match*, %struct.match** %7, align 8
  %430 = getelementptr inbounds %struct.match, %struct.match* %429, i32 0, i32 2
  %431 = load %struct.TYPE_3__*, %struct.TYPE_3__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 1
  %433 = load i32*, i32** %432, align 8
  %434 = load i64, i64* %13, align 8
  %435 = getelementptr inbounds i32, i32* %433, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = call i64 @OPND(i32 %436)
  %438 = trunc i64 %437 to i32
  store i32 %438, i32* %12, align 4
  %439 = load i32, i32* %12, align 4
  %440 = icmp sgt i32 %439, 0
  br i1 %440, label %441, label %464

441:                                              ; preds = %428
  %442 = load i32, i32* %12, align 4
  %443 = load %struct.match*, %struct.match** %7, align 8
  %444 = getelementptr inbounds %struct.match, %struct.match* %443, i32 0, i32 2
  %445 = load %struct.TYPE_3__*, %struct.TYPE_3__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = icmp sle i32 %442, %447
  br i1 %448, label %449, label %464

449:                                              ; preds = %441
  %450 = load i8*, i8** %15, align 8
  %451 = load %struct.match*, %struct.match** %7, align 8
  %452 = getelementptr inbounds %struct.match, %struct.match* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = sext i32 %453 to i64
  %455 = sub i64 0, %454
  %456 = getelementptr inbounds i8, i8* %450, i64 %455
  %457 = load %struct.match*, %struct.match** %7, align 8
  %458 = getelementptr inbounds %struct.match, %struct.match* %457, i32 0, i32 1
  %459 = load %struct.TYPE_4__*, %struct.TYPE_4__** %458, align 8
  %460 = load i32, i32* %12, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 1
  store i8* %456, i8** %463, align 8
  br label %464

464:                                              ; preds = %449, %441, %428
  br label %466

465:                                              ; preds = %84
  br label %466

466:                                              ; preds = %465, %464, %427, %390, %389, %298, %246, %161, %104, %101, %100, %97, %96
  br label %467

467:                                              ; preds = %466
  %468 = load i64, i64* %14, align 8
  store i64 %468, i64* %13, align 8
  br label %32

469:                                              ; preds = %32
  %470 = load i8*, i8** %15, align 8
  %471 = load i8*, i8** %9, align 8
  %472 = icmp eq i8* %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %469
  %474 = load i8*, i8** %15, align 8
  store i8* %474, i8** %6, align 8
  br label %476

475:                                              ; preds = %469
  store i8* null, i8** %6, align 8
  br label %476

476:                                              ; preds = %475, %473, %159, %153
  %477 = load i8*, i8** %6, align 8
  ret i8* %477
}

declare dso_local i32 @AT(i8*, i8*, i8*, i64, i64) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i64 @OPND(i32) #1

declare dso_local i8* @slow(%struct.match*, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
