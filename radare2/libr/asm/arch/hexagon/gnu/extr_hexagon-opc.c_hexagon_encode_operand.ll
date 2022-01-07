; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_encode_operand.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_encode_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8, i32, i32, i8* }
%struct.TYPE_6__ = type { i8*, i32 }
%union.anon = type { i64 }

@hexagon_encode_operand.buf = internal global [500 x i8] zeroinitializer, align 16
@HEXAGON_OPERAND_IS_SIGNED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"low %d bits of immediate %ld must be zero\00", align 1
@HEXAGON_OPERAND_IS_LO16 = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_HI16 = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_SUBSET = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_PAIR = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_NEGATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"value %ld out of range: %ld-%ld\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"value %lu out of range: %lu-%lu\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"did not encode expected number of bits: %d != %d\0Aenc = %s\0A  operand = %s\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hexagon_encode_operand(%struct.TYPE_5__* %0, i32* %1, %struct.TYPE_6__* %2, i64 %3, i64* %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %union.anon, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64* %4, i64** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %21, align 8
  %36 = load i64, i64* %13, align 8
  %37 = bitcast %union.anon* %29 to i64*
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %8
  %41 = load i64*, i64** %14, align 8
  %42 = icmp ne i64* %41, null
  br label %43

43:                                               ; preds = %40, %8
  %44 = phi i1 [ false, %8 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %15, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @HEXAGON_OPERAND_IS_SIGNED, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %30, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i8, i8* %52, align 4
  store i8 %53, i8* %18, align 1
  %54 = load i32, i32* @FALSE, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %43
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 129
  switch i32 %63, label %70 [
    i32 129, label %64
    i32 128, label %67
  ]

64:                                               ; preds = %59
  %65 = load i8, i8* %18, align 1
  %66 = call signext i8 @TOLOWER(i8 signext %65)
  store i8 %66, i8* %18, align 1
  br label %70

67:                                               ; preds = %59
  %68 = load i8, i8* %18, align 1
  %69 = call signext i8 @TOUPPER(i8 signext %68)
  store i8 %69, i8* %18, align 1
  br label %70

70:                                               ; preds = %59, %67, %64
  br label %71

71:                                               ; preds = %70, %56, %43
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %71
  %77 = bitcast %union.anon* %29 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  %83 = shl i64 -1, %82
  %84 = xor i64 %83, -1
  %85 = and i64 %78, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %76
  %88 = load i8**, i8*** %17, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = bitcast %union.anon* %29 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hexagon_encode_operand.buf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load i8**, i8*** %17, align 8
  store i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hexagon_encode_operand.buf, i64 0, i64 0), i8** %98, align 8
  br label %99

99:                                               ; preds = %90, %87
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %9, align 4
  br label %343

101:                                              ; preds = %76
  br label %102

102:                                              ; preds = %101, %71
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @HEXAGON_OPERAND_IS_LO16, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = bitcast %union.anon* %29 to i64*
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @HEXAGON_LO16(i64 %111)
  %113 = bitcast %union.anon* %29 to i64*
  store i64 %112, i64* %113, align 8
  br label %145

114:                                              ; preds = %102
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @HEXAGON_OPERAND_IS_HI16, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = bitcast %union.anon* %29 to i64*
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @HEXAGON_HI16(i64 %123)
  %125 = bitcast %union.anon* %29 to i64*
  store i64 %124, i64* %125, align 8
  br label %144

126:                                              ; preds = %114
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @HEXAGON_OPERAND_IS_SUBSET, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %126
  %134 = bitcast %union.anon* %29 to i64*
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @HEXAGON_OPERAND_IS_PAIR, align 4
  %140 = and i32 %138, %139
  %141 = call i64 @HEXAGON_SUBREGS_TO(i64 %135, i32 %140)
  %142 = bitcast %union.anon* %29 to i64*
  store i64 %141, i64* %142, align 8
  br label %143

143:                                              ; preds = %133, %126
  br label %144

144:                                              ; preds = %143, %121
  br label %145

145:                                              ; preds = %144, %109
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = add i32 %148, %151
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = sub i32 %153, 1
  %155 = zext i32 %154 to i64
  %156 = shl i64 -1, %155
  %157 = xor i64 %156, -1
  store i64 %157, i64* %24, align 8
  %158 = load i32, i32* %22, align 4
  %159 = sub i32 %158, 1
  %160 = zext i32 %159 to i64
  %161 = shl i64 -1, %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @HEXAGON_OPERAND_IS_NEGATIVE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 1, i32 0
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %161, %170
  store i64 %171, i64* %23, align 8
  %172 = load i32, i32* %22, align 4
  %173 = zext i32 %172 to i64
  %174 = shl i64 -1, %173
  %175 = xor i64 %174, -1
  store i64 %175, i64* %26, align 8
  store i64 0, i64* %25, align 8
  %176 = bitcast %union.anon* %29 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %28, align 8
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %30, align 4
  %180 = call i64 @hexagon_extend(i64* %28, i32 %178, i32 %179)
  store i64 %180, i64* %27, align 8
  %181 = load i32, i32* %15, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %145
  %184 = load i64, i64* %28, align 8
  %185 = icmp slt i64 %184, 0
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %30, align 4
  %187 = load i64, i64* %27, align 8
  %188 = load i64*, i64** %14, align 8
  store i64 %187, i64* %188, align 8
  %189 = load i64, i64* %28, align 8
  %190 = bitcast %union.anon* %29 to i64*
  store i64 %189, i64* %190, align 8
  br label %191

191:                                              ; preds = %183, %145
  %192 = load i32, i32* %30, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %191
  %195 = bitcast %union.anon* %29 to i64*
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %23, align 8
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %207, label %199

199:                                              ; preds = %194
  %200 = load i64, i64* %24, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %221

202:                                              ; preds = %199
  %203 = bitcast %union.anon* %29 to i64*
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %24, align 8
  %206 = icmp sgt i64 %204, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %202, %194
  %208 = load i8**, i8*** %17, align 8
  %209 = icmp ne i8** %208, null
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = bitcast %union.anon* %29 to i64*
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = load i64, i64* %23, align 8
  %215 = trunc i64 %214 to i32
  %216 = load i64, i64* %24, align 8
  %217 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hexagon_encode_operand.buf, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %213, i32 %215, i64 %216)
  %218 = load i8**, i8*** %17, align 8
  store i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hexagon_encode_operand.buf, i64 0, i64 0), i8** %218, align 8
  br label %219

219:                                              ; preds = %210, %207
  %220 = load i32, i32* @FALSE, align 4
  store i32 %220, i32* %9, align 4
  br label %343

221:                                              ; preds = %202, %199
  br label %250

222:                                              ; preds = %191
  %223 = bitcast %union.anon* %29 to i64*
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %25, align 8
  %226 = icmp ult i64 %224, %225
  br i1 %226, label %235, label %227

227:                                              ; preds = %222
  %228 = load i64, i64* %26, align 8
  %229 = icmp ugt i64 %228, 0
  br i1 %229, label %230, label %249

230:                                              ; preds = %227
  %231 = bitcast %union.anon* %29 to i64*
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %26, align 8
  %234 = icmp ugt i64 %232, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %230, %222
  %236 = load i8**, i8*** %17, align 8
  %237 = icmp ne i8** %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = bitcast %union.anon* %29 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = load i64, i64* %25, align 8
  %243 = trunc i64 %242 to i32
  %244 = load i64, i64* %26, align 8
  %245 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hexagon_encode_operand.buf, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %241, i32 %243, i64 %244)
  %246 = load i8**, i8*** %17, align 8
  store i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hexagon_encode_operand.buf, i64 0, i64 0), i8** %246, align 8
  br label %247

247:                                              ; preds = %238, %235
  %248 = load i32, i32* @FALSE, align 4
  store i32 %248, i32* %9, align 4
  br label %343

249:                                              ; preds = %230, %227
  br label %250

250:                                              ; preds = %249, %221
  %251 = load i32, i32* %15, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %250
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = bitcast %union.anon* %29 to i64*
  %258 = load i64, i64* %257, align 8
  %259 = zext i32 %256 to i64
  %260 = ashr i64 %258, %259
  store i64 %260, i64* %257, align 8
  br label %261

261:                                              ; preds = %253, %250
  %262 = load i64, i64* %21, align 8
  %263 = sub i64 %262, 1
  store i64 %263, i64* %31, align 8
  br label %264

264:                                              ; preds = %314, %261
  %265 = load i64, i64* %31, align 8
  %266 = icmp uge i64 %265, 0
  br i1 %266, label %267, label %317

267:                                              ; preds = %264
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = load i64, i64* %31, align 8
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = call i32 @ISSPACE(i8 signext %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %313, label %276

276:                                              ; preds = %267
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = load i64, i64* %31, align 8
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = load i8, i8* %18, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %283, %285
  br i1 %286, label %287, label %310

287:                                              ; preds = %276
  %288 = load i32, i32* %19, align 4
  %289 = shl i32 1, %288
  %290 = xor i32 %289, -1
  %291 = load i32*, i32** %11, align 8
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, %290
  store i32 %293, i32* %291, align 4
  %294 = bitcast %union.anon* %29 to i64*
  %295 = load i64, i64* %294, align 8
  %296 = and i64 %295, 1
  %297 = load i32, i32* %19, align 4
  %298 = zext i32 %297 to i64
  %299 = shl i64 %296, %298
  %300 = load i32*, i32** %11, align 8
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = or i64 %302, %299
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  %305 = bitcast %union.anon* %29 to i64*
  %306 = load i64, i64* %305, align 8
  %307 = ashr i64 %306, 1
  store i64 %307, i64* %305, align 8
  %308 = load i32, i32* %20, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %20, align 4
  br label %310

310:                                              ; preds = %287, %276
  %311 = load i32, i32* %19, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %19, align 4
  br label %313

313:                                              ; preds = %310, %267
  br label %314

314:                                              ; preds = %313
  %315 = load i64, i64* %31, align 8
  %316 = add i64 %315, -1
  store i64 %316, i64* %31, align 8
  br label %264

317:                                              ; preds = %264
  %318 = load i32, i32* %20, align 4
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %318, %321
  br i1 %322, label %323, label %341

323:                                              ; preds = %317
  %324 = load i8**, i8*** %17, align 8
  %325 = icmp ne i8** %324, null
  br i1 %325, label %326, label %339

326:                                              ; preds = %323
  %327 = load i32, i32* %20, align 4
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 4
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hexagon_encode_operand.buf, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %327, i32 %330, i8* %333, i8* %336)
  %338 = load i8**, i8*** %17, align 8
  store i8* getelementptr inbounds ([500 x i8], [500 x i8]* @hexagon_encode_operand.buf, i64 0, i64 0), i8** %338, align 8
  br label %339

339:                                              ; preds = %326, %323
  %340 = load i32, i32* @FALSE, align 4
  store i32 %340, i32* %9, align 4
  br label %343

341:                                              ; preds = %317
  %342 = load i32, i32* @TRUE, align 4
  store i32 %342, i32* %9, align 4
  br label %343

343:                                              ; preds = %341, %339, %247, %219, %99
  %344 = load i32, i32* %9, align 4
  ret i32 %344
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #1

declare dso_local i64 @HEXAGON_LO16(i64) #1

declare dso_local i64 @HEXAGON_HI16(i64) #1

declare dso_local i64 @HEXAGON_SUBREGS_TO(i64, i32) #1

declare dso_local i64 @hexagon_extend(i64*, i32, i32) #1

declare dso_local i32 @ISSPACE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
