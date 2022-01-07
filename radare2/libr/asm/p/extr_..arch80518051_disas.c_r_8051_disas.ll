; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..arch80518051_disas.c_r_8051_disas.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..arch80518051_disas.c_r_8051_disas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, i32 }

@_8051_ops = common dso_local global %struct.TYPE_2__* null, align 8
@A_RI = common dso_local global i32 0, align 4
@A_RN = common dso_local global i32 0, align 4
@A_OFFSET = common dso_local global i32 0, align 4
@A_ADDR11 = common dso_local global i32 0, align 4
@A_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@A_ADDR16 = common dso_local global i32 0, align 4
@A_IMM16 = common dso_local global i32 0, align 4
@A_NONE = common dso_local global i32 0, align 4
@A_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, i32, i32*)* @r_8051_disas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_8051_disas(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %49, %4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %37, %44
  %46 = icmp ne i32 %34, %45
  br label %47

47:                                               ; preds = %28, %20
  %48 = phi i1 [ false, %20 ], [ %46, %28 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %20

52:                                               ; preds = %47
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %432

60:                                               ; preds = %52
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %11, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %13, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %14, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %15, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_8051_ops, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %97 = load i32, i32* %16, align 4
  switch i32 %97, label %415 [
    i32 1, label %98
    i32 2, label %118
    i32 3, label %244
  ]

98:                                               ; preds = %60
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @A_RI, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @A_RN, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102, %98
  %107 = load i8*, i8** %11, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = and i32 %110, %111
  %113 = call i8* (i8*, i32, ...) @r_str_newf(i8* %107, i32 %112)
  store i8* %113, i8** %19, align 8
  br label %117

114:                                              ; preds = %102
  %115 = load i8*, i8** %11, align 8
  %116 = call i8* @r_str_new(i8* %115)
  store i8* %116, i8** %19, align 8
  br label %117

117:                                              ; preds = %114, %106
  br label %416

118:                                              ; preds = %60
  %119 = load i32, i32* %8, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %240

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @A_OFFSET, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i8*, i8** %11, align 8
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 2
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @arg_offset(i32 %128, i32 %131)
  %133 = call i8* (i8*, i32, ...) @r_str_newf(i8* %126, i32 %132)
  store i8* %133, i8** %19, align 8
  br label %239

134:                                              ; preds = %121
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @A_ADDR11, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 2
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @arg_addr11(i32 %141, i32* %142)
  %144 = call i8* (i8*, i32, ...) @r_str_newf(i8* %139, i32 %143)
  store i8* %144, i8** %19, align 8
  br label %238

145:                                              ; preds = %134
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* @A_RI, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @A_RN, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %186

153:                                              ; preds = %149, %145
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @A_OFFSET, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %153
  %158 = load i8*, i8** %11, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %12, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 2
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @arg_offset(i32 %165, i32 %168)
  %170 = call i8* (i8*, i32, ...) @r_str_newf(i8* %158, i32 %163, i32 %169)
  store i8* %170, i8** %19, align 8
  br label %182

171:                                              ; preds = %153
  %172 = load i8*, i8** %11, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %12, align 4
  %177 = and i32 %175, %176
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = call i8* (i8*, i32, ...) @r_str_newf(i8* %172, i32 %177, i32 %180)
  store i8* %181, i8** %19, align 8
  br label %182

182:                                              ; preds = %171, %157
  %183 = load i32*, i32** %7, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %18, align 4
  br label %237

186:                                              ; preds = %149
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* @A_RI, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @A_RN, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %190, %186
  %195 = load i8*, i8** %11, align 8
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %7, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = and i32 %201, %202
  %204 = call i8* (i8*, i32, ...) @r_str_newf(i8* %195, i32 %198, i32 %203)
  store i8* %204, i8** %19, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %17, align 4
  br label %236

208:                                              ; preds = %190
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* @A_BIT, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %208
  %213 = load i8*, i8** %11, align 8
  %214 = load i32*, i32** %7, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @arg_bit(i32 %216)
  %218 = load i32*, i32** %7, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 7
  %222 = call i8* (i8*, i32, ...) @r_str_newf(i8* %213, i32 %217, i32 %221)
  store i8* %222, i8** %19, align 8
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %17, align 4
  br label %235

226:                                              ; preds = %208
  %227 = load i8*, i8** %11, align 8
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = call i8* (i8*, i32, ...) @r_str_newf(i8* %227, i32 %230)
  store i8* %231, i8** %19, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %17, align 4
  br label %235

235:                                              ; preds = %226, %212
  br label %236

236:                                              ; preds = %235, %194
  br label %237

237:                                              ; preds = %236, %182
  br label %238

238:                                              ; preds = %237, %138
  br label %239

239:                                              ; preds = %238, %125
  br label %243

240:                                              ; preds = %118
  %241 = load i32*, i32** %9, align 8
  store i32 -1, i32* %241, align 4
  %242 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %242, i8** %5, align 8
  br label %433

243:                                              ; preds = %239
  br label %416

244:                                              ; preds = %60
  %245 = load i32, i32* %8, align 4
  %246 = icmp sgt i32 %245, 2
  br i1 %246, label %247, label %411

247:                                              ; preds = %244
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* @A_ADDR16, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @A_IMM16, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %251, %247
  %256 = load i8*, i8** %11, align 8
  %257 = load i32*, i32** %7, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 256, %259
  %261 = load i32*, i32** %7, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 2
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %260, %263
  %265 = call i8* (i8*, i32, ...) @r_str_newf(i8* %256, i32 %264)
  store i8* %265, i8** %19, align 8
  br label %410

266:                                              ; preds = %251
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* @A_IMM16, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %266
  %271 = load i8*, i8** %11, align 8
  %272 = load i32*, i32** %7, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = mul nsw i32 256, %274
  %276 = load i32*, i32** %7, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %275, %278
  %280 = call i8* (i8*, i32, ...) @r_str_newf(i8* %271, i32 %279)
  store i8* %280, i8** %19, align 8
  br label %409

281:                                              ; preds = %266
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* @A_OFFSET, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %347

285:                                              ; preds = %281
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* @A_NONE, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %289, label %306

289:                                              ; preds = %285
  %290 = load i8*, i8** %11, align 8
  %291 = load i32*, i32** %7, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %12, align 4
  %295 = and i32 %293, %294
  %296 = load i32*, i32** %7, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %6, align 4
  %300 = add nsw i32 %299, 3
  %301 = load i32*, i32** %7, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @arg_offset(i32 %300, i32 %303)
  %305 = call i8* (i8*, i32, ...) @r_str_newf(i8* %290, i32 %295, i32 %298, i32 %304)
  store i8* %305, i8** %19, align 8
  br label %346

306:                                              ; preds = %285
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* @A_BIT, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %330

310:                                              ; preds = %306
  %311 = load i8*, i8** %11, align 8
  %312 = load i32*, i32** %7, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @arg_bit(i32 %314)
  %316 = load i32*, i32** %7, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 1
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, 7
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %320, 3
  %322 = load i32*, i32** %7, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 2
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @arg_offset(i32 %321, i32 %324)
  %326 = call i8* (i8*, i32, ...) @r_str_newf(i8* %311, i32 %315, i32 %319, i32 %325)
  store i8* %326, i8** %19, align 8
  %327 = load i32*, i32** %7, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %17, align 4
  br label %345

330:                                              ; preds = %306
  %331 = load i8*, i8** %11, align 8
  %332 = load i32*, i32** %7, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %6, align 4
  %336 = add nsw i32 %335, 3
  %337 = load i32*, i32** %7, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 2
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @arg_offset(i32 %336, i32 %339)
  %341 = call i8* (i8*, i32, ...) @r_str_newf(i8* %331, i32 %334, i32 %340)
  store i8* %341, i8** %19, align 8
  %342 = load i32*, i32** %7, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %17, align 4
  br label %345

345:                                              ; preds = %330, %310
  br label %346

346:                                              ; preds = %345, %289
  br label %408

347:                                              ; preds = %281
  %348 = load i32, i32* %15, align 4
  %349 = load i32, i32* @A_OFFSET, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %371

351:                                              ; preds = %347
  %352 = load i8*, i8** %11, align 8
  %353 = load i32*, i32** %7, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %12, align 4
  %357 = and i32 %355, %356
  %358 = load i32*, i32** %7, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %6, align 4
  %362 = add nsw i32 %361, 3
  %363 = load i32*, i32** %7, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 2
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @arg_offset(i32 %362, i32 %365)
  %367 = call i8* (i8*, i32, ...) @r_str_newf(i8* %352, i32 %357, i32 %360, i32 %366)
  store i8* %367, i8** %19, align 8
  %368 = load i32*, i32** %7, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 1
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %18, align 4
  br label %407

371:                                              ; preds = %347
  %372 = load i32, i32* %13, align 4
  %373 = load i32, i32* @A_DIRECT, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %394

375:                                              ; preds = %371
  %376 = load i32, i32* %14, align 4
  %377 = load i32, i32* @A_DIRECT, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %379, label %394

379:                                              ; preds = %375
  %380 = load i8*, i8** %11, align 8
  %381 = load i32*, i32** %7, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 2
  %383 = load i32, i32* %382, align 4
  %384 = load i32*, i32** %7, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 1
  %386 = load i32, i32* %385, align 4
  %387 = call i8* (i8*, i32, ...) @r_str_newf(i8* %380, i32 %383, i32 %386)
  store i8* %387, i8** %19, align 8
  %388 = load i32*, i32** %7, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 2
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %17, align 4
  %391 = load i32*, i32** %7, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 1
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %18, align 4
  br label %406

394:                                              ; preds = %375, %371
  %395 = load i8*, i8** %11, align 8
  %396 = load i32*, i32** %7, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 1
  %398 = load i32, i32* %397, align 4
  %399 = load i32*, i32** %7, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 2
  %401 = load i32, i32* %400, align 4
  %402 = call i8* (i8*, i32, ...) @r_str_newf(i8* %395, i32 %398, i32 %401)
  store i8* %402, i8** %19, align 8
  %403 = load i32*, i32** %7, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 1
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* %17, align 4
  br label %406

406:                                              ; preds = %394, %379
  br label %407

407:                                              ; preds = %406, %351
  br label %408

408:                                              ; preds = %407, %346
  br label %409

409:                                              ; preds = %408, %270
  br label %410

410:                                              ; preds = %409, %255
  br label %414

411:                                              ; preds = %244
  %412 = load i32*, i32** %9, align 8
  store i32 -1, i32* %412, align 4
  %413 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %413, i8** %5, align 8
  br label %433

414:                                              ; preds = %410
  br label %416

415:                                              ; preds = %60
  store i8* null, i8** %5, align 8
  br label %433

416:                                              ; preds = %414, %243, %117
  %417 = load i32, i32* %16, align 4
  %418 = load i32*, i32** %9, align 8
  store i32 %417, i32* %418, align 4
  %419 = load i8*, i8** %19, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %431

421:                                              ; preds = %416
  %422 = load i8*, i8** %19, align 8
  %423 = load i32, i32* %13, align 4
  %424 = load i32, i32* %17, align 4
  %425 = call i8* @_replace_register(i8* %422, i32 %423, i32 %424)
  store i8* %425, i8** %19, align 8
  %426 = load i8*, i8** %19, align 8
  %427 = load i32, i32* %14, align 4
  %428 = load i32, i32* %18, align 4
  %429 = call i8* @_replace_register(i8* %426, i32 %427, i32 %428)
  store i8* %429, i8** %19, align 8
  %430 = load i8*, i8** %19, align 8
  store i8* %430, i8** %5, align 8
  br label %433

431:                                              ; preds = %416
  store i8* null, i8** %5, align 8
  br label %433

432:                                              ; preds = %52
  store i8* null, i8** %5, align 8
  br label %433

433:                                              ; preds = %432, %431, %421, %415, %411, %240
  %434 = load i8*, i8** %5, align 8
  ret i8* %434
}

declare dso_local i8* @r_str_newf(i8*, i32, ...) #1

declare dso_local i8* @r_str_new(i8*) #1

declare dso_local i32 @arg_offset(i32, i32) #1

declare dso_local i32 @arg_addr11(i32, i32*) #1

declare dso_local i32 @arg_bit(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @_replace_register(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
