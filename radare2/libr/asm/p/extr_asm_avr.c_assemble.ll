; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_avr.c_assemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_avr.c_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64*, i32* }
%struct.TYPE_4__ = type { i32 }

@MAX_TOKEN_SIZE = common dso_local global i32 0, align 4
@TOKEN_DELIM = common dso_local global i32 0, align 4
@instructionSet = common dso_local global %struct.TYPE_5__* null, align 8
@OPERAND_LONG_ABSOLUTE_ADDRESS = common dso_local global i64 0, align 8
@OPERAND_REGISTER_GHOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i8*)* @assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assemble(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i32, i32* @MAX_TOKEN_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = mul nuw i64 3, %17
  %20 = alloca i8, i64 %19, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @TOKEN_DELIM, align 4
  %23 = call i8* @strtok(i8* %21, i32 %22)
  store i8* %23, i8** %9, align 8
  br label %24

24:                                               ; preds = %32, %3
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %14, align 4
  %29 = icmp ult i32 %28, 3
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %51

32:                                               ; preds = %30
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = mul nsw i64 %34, %17
  %36 = getelementptr inbounds i8, i8* %20, i64 %35
  %37 = load i32, i32* @MAX_TOKEN_SIZE, align 4
  %38 = call i32 @memset(i8* %36, i32 0, i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = zext i32 %39 to i64
  %41 = mul nsw i64 %40, %17
  %42 = getelementptr inbounds i8, i8* %20, i64 %41
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* @MAX_TOKEN_SIZE, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @strncpy(i8* %42, i8* %43, i32 %45)
  %47 = load i32, i32* @TOKEN_DELIM, align 4
  %48 = call i8* @strtok(i8* null, i32 %47)
  store i8* %48, i8** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %24

51:                                               ; preds = %30
  %52 = load i32, i32* %14, align 4
  %53 = icmp ugt i32 %52, 0
  br i1 %53, label %54, label %308

54:                                               ; preds = %51
  %55 = load i32*, i32** %4, align 8
  %56 = bitcast i8* %20 to i8**
  %57 = load i32, i32* %14, align 4
  %58 = sub i32 %57, 1
  %59 = call i32 @search_instruction(i32* %55, i8** %56, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %307

62:                                               ; preds = %54
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %306

80:                                               ; preds = %70, %62
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %202

88:                                               ; preds = %80
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %202

91:                                               ; preds = %88
  %92 = load i32*, i32** %4, align 8
  %93 = mul nsw i64 1, %17
  %94 = getelementptr inbounds i8, i8* %20, i64 %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @assemble_operand(i32* %92, i8* %94, i64 %102, i32* %12)
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %201

105:                                              ; preds = %91
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @OPERAND_LONG_ABSOLUTE_ADDRESS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %105
  %117 = load i32, i32* %12, align 4
  %118 = sdiv i32 %117, 2
  store i32 %118, i32* %12, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %12, align 4
  %126 = ashr i32 %125, 16
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @packDataByMask(i32 %126, i32 %134)
  %136 = or i32 %124, %135
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %12, align 4
  %138 = shl i32 %137, 16
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %200

141:                                              ; preds = %105
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @OPERAND_REGISTER_GHOST, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %181

152:                                              ; preds = %141
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @packDataByMask(i32 %159, i32 %167)
  %169 = or i32 %158, %168
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @packDataByMask(i32 %170, i32 %178)
  %180 = or i32 %169, %179
  store i32 %180, i32* %10, align 4
  br label %199

181:                                              ; preds = %141
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @packDataByMask(i32 %188, i32 %196)
  %198 = or i32 %187, %197
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %181, %152
  store i32 2, i32* %11, align 4
  br label %200

200:                                              ; preds = %199, %116
  br label %201

201:                                              ; preds = %200, %91
  br label %305

202:                                              ; preds = %88, %80
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %304

210:                                              ; preds = %202
  %211 = load i32, i32* %14, align 4
  %212 = icmp eq i32 %211, 3
  br i1 %212, label %213, label %304

213:                                              ; preds = %210
  %214 = load i32*, i32** %4, align 8
  %215 = mul nsw i64 1, %17
  %216 = getelementptr inbounds i8, i8* %20, i64 %215
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 2
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 0
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @assemble_operand(i32* %214, i8* %216, i64 %224, i32* %12)
  %226 = icmp sge i64 %225, 0
  br i1 %226, label %227, label %303

227:                                              ; preds = %213
  %228 = load i32*, i32** %4, align 8
  %229 = mul nsw i64 2, %17
  %230 = getelementptr inbounds i8, i8* %20, i64 %229
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load i64*, i64** %235, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 1
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @assemble_operand(i32* %228, i8* %230, i64 %238, i32* %13)
  %240 = icmp sge i64 %239, 0
  br i1 %240, label %241, label %303

241:                                              ; preds = %227
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %12, align 4
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @packDataByMask(i32 %248, i32 %256)
  %258 = or i32 %247, %257
  %259 = load i32, i32* %13, align 4
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @packDataByMask(i32 %259, i32 %267)
  %269 = or i32 %258, %268
  store i32 %269, i32* %10, align 4
  store i32 2, i32* %11, align 4
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 2
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @OPERAND_LONG_ABSOLUTE_ADDRESS, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %241
  %281 = load i32, i32* %12, align 4
  %282 = shl i32 %281, 16
  %283 = load i32, i32* %10, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %302

285:                                              ; preds = %241
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instructionSet, align 8
  %287 = load i32, i32* %15, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 2
  %291 = load i64*, i64** %290, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @OPERAND_LONG_ABSOLUTE_ADDRESS, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %285
  %297 = load i32, i32* %13, align 4
  %298 = shl i32 %297, 16
  %299 = load i32, i32* %10, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %301

301:                                              ; preds = %296, %285
  br label %302

302:                                              ; preds = %301, %280
  br label %303

303:                                              ; preds = %302, %227, %213
  br label %304

304:                                              ; preds = %303, %210, %202
  br label %305

305:                                              ; preds = %304, %201
  br label %306

306:                                              ; preds = %305, %73
  br label %307

307:                                              ; preds = %306, %54
  br label %308

308:                                              ; preds = %307, %51
  %309 = load i32, i32* %11, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i32, i32* %11, align 4
  %315 = call i32 @r_strbuf_setbin(i32* %313, i32* %10, i32 %314)
  br label %316

316:                                              ; preds = %311, %308
  %317 = load i32, i32* %11, align 4
  %318 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %318)
  ret i32 %317
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strtok(i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @search_instruction(i32*, i8**, i32) #2

declare dso_local i64 @assemble_operand(i32*, i8*, i64, i32*) #2

declare dso_local i32 @packDataByMask(i32, i32) #2

declare dso_local i32 @r_strbuf_setbin(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
