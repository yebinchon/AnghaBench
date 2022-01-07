; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_avr.c_search_instruction.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_avr.c_search_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i64* }

@MAX_TOKEN_SIZE = common dso_local global i32 0, align 4
@AVR_TOTAL_INSTRUCTIONS = common dso_local global i32 0, align 4
@instructionSet = common dso_local global %struct.TYPE_2__* null, align 8
@OPERAND_LONG_ABSOLUTE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @search_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_instruction(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MAX_TOKEN_SIZE, align 4
  %12 = zext i32 %11 to i64
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %333, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @AVR_TOTAL_INSTRUCTIONS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %336

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = mul nsw i64 0, %12
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @MAX_TOKEN_SIZE, align 4
  %29 = call i32 @strncmp(i8* %21, i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %332, label %31

31:                                               ; preds = %18
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %331

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %337

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 36868
  br i1 %52, label %53, label %78

53:                                               ; preds = %45
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %59, 36871
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = mul nsw i64 2, %12
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = call i64 @parse_specialreg(i8* %72)
  %74 = icmp eq i64 %69, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %337

77:                                               ; preds = %61
  br label %330

78:                                               ; preds = %53, %45
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 108
  br i1 %88, label %89, label %139

89:                                               ; preds = %78
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 100
  br i1 %99, label %100, label %139

100:                                              ; preds = %89
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 100
  br i1 %110, label %122, label %111

111:                                              ; preds = %100
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %111, %100
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  %130 = load i64, i64* %129, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = mul nsw i64 2, %12
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = call i64 @parse_specialreg(i8* %133)
  %135 = icmp eq i64 %130, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %122
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %4, align 4
  br label %337

138:                                              ; preds = %122
  br label %329

139:                                              ; preds = %111, %89, %78
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 108
  br i1 %149, label %150, label %201

150:                                              ; preds = %139
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 100
  br i1 %160, label %161, label %201

161:                                              ; preds = %150
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 115
  br i1 %171, label %172, label %201

172:                                              ; preds = %161
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 3
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @OPERAND_LONG_ABSOLUTE_ADDRESS, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %201

183:                                              ; preds = %172
  %184 = load i8*, i8** %6, align 8
  %185 = mul nsw i64 2, %12
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = call i64 @strlen(i8* %186)
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %183
  %190 = load i32*, i32** %5, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = mul nsw i64 2, %12
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  %194 = call i32 @getnum(i32* %190, i8* %193)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp sgt i32 %195, 127
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %4, align 4
  br label %337

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %183
  br label %328

201:                                              ; preds = %172, %161, %150, %139
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 115
  br i1 %211, label %212, label %262

212:                                              ; preds = %201
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 116
  br i1 %222, label %223, label %262

223:                                              ; preds = %212
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 2
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 100
  br i1 %233, label %245, label %234

234:                                              ; preds = %223
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 2
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %262

245:                                              ; preds = %234, %223
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 3
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = load i64, i64* %252, align 8
  %254 = load i8*, i8** %6, align 8
  %255 = mul nsw i64 1, %12
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  %257 = call i64 @parse_specialreg(i8* %256)
  %258 = icmp eq i64 %253, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %245
  %260 = load i32, i32* %8, align 4
  store i32 %260, i32* %4, align 4
  br label %337

261:                                              ; preds = %245
  br label %327

262:                                              ; preds = %234, %212, %201
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 115
  br i1 %272, label %273, label %324

273:                                              ; preds = %262
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %275 = load i32, i32* %8, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 1
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 116
  br i1 %283, label %284, label %324

284:                                              ; preds = %273
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 2
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %293, 115
  br i1 %294, label %295, label %324

295:                                              ; preds = %284
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 3
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @OPERAND_LONG_ABSOLUTE_ADDRESS, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %324

306:                                              ; preds = %295
  %307 = load i8*, i8** %6, align 8
  %308 = mul nsw i64 1, %12
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  %310 = call i64 @strlen(i8* %309)
  %311 = icmp sgt i64 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %306
  %313 = load i32*, i32** %5, align 8
  %314 = load i8*, i8** %6, align 8
  %315 = mul nsw i64 1, %12
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  %317 = call i32 @getnum(i32* %313, i8* %316)
  store i32 %317, i32* %9, align 4
  %318 = load i32, i32* %9, align 4
  %319 = icmp sgt i32 %318, 127
  br i1 %319, label %320, label %322

320:                                              ; preds = %312
  %321 = load i32, i32* %8, align 4
  store i32 %321, i32* %4, align 4
  br label %337

322:                                              ; preds = %312
  br label %323

323:                                              ; preds = %322, %306
  br label %326

324:                                              ; preds = %295, %284, %273, %262
  %325 = load i32, i32* %8, align 4
  store i32 %325, i32* %4, align 4
  br label %337

326:                                              ; preds = %323
  br label %327

327:                                              ; preds = %326, %261
  br label %328

328:                                              ; preds = %327, %200
  br label %329

329:                                              ; preds = %328, %138
  br label %330

330:                                              ; preds = %329, %77
  br label %331

331:                                              ; preds = %330, %31
  br label %332

332:                                              ; preds = %331, %18
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %8, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %8, align 4
  br label %13

336:                                              ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %337

337:                                              ; preds = %336, %324, %320, %259, %197, %136, %75, %43
  %338 = load i32, i32* %4, align 4
  ret i32 %338
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @parse_specialreg(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @getnum(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
