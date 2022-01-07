; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_blocks.c_blocks_draw.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_blocks.c_blocks_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fall = type { i32, i32, i64, i32 }
%struct.blocks = type { i64*, %struct.block_state*, %struct.TYPE_2__* }
%struct.block_state = type { i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@COLOR_BLACK = common dso_local global i32 0, align 4
@block_sizes = common dso_local global i64* null, align 8
@fall = common dso_local global %struct.fall** null, align 8
@ROT_0 = common dso_local global i32 0, align 4
@ROT_90 = common dso_local global i32 0, align 4
@ROT_180 = common dso_local global i32 0, align 4
@ROT_MAX = common dso_local global i32 0, align 4
@SHAPE_SQUARE = common dso_local global i32 0, align 4
@COLOR_WHITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blocks_draw(%struct.blocks* %0, i32 %1) #0 {
  %3 = alloca %struct.blocks*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.block_state*, align 8
  %11 = alloca %struct.fall*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fall*, align 8
  store %struct.blocks* %0, %struct.blocks** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.blocks*, %struct.blocks** %3, align 8
  %16 = getelementptr inbounds %struct.blocks, %struct.blocks* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.blocks*, %struct.blocks** %3, align 8
  %21 = getelementptr inbounds %struct.blocks, %struct.blocks* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.blocks*, %struct.blocks** %3, align 8
  %26 = getelementptr inbounds %struct.blocks, %struct.blocks* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @COLOR_BLACK, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = call i32 @memset(i8* %30, i32 %31, i64 %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %273, %2
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %276

40:                                               ; preds = %37
  %41 = load %struct.blocks*, %struct.blocks** %3, align 8
  %42 = getelementptr inbounds %struct.blocks, %struct.blocks* %41, i32 0, i32 1
  %43 = load %struct.block_state*, %struct.block_state** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.block_state, %struct.block_state* %43, i64 %45
  store %struct.block_state* %46, %struct.block_state** %10, align 8
  %47 = load %struct.block_state*, %struct.block_state** %10, align 8
  %48 = getelementptr inbounds %struct.block_state, %struct.block_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.blocks*, %struct.blocks** %3, align 8
  %51 = getelementptr inbounds %struct.blocks, %struct.blocks* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %49, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %40
  %59 = load %struct.block_state*, %struct.block_state** %10, align 8
  %60 = getelementptr inbounds %struct.block_state, %struct.block_state* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  %61 = load %struct.block_state*, %struct.block_state** %10, align 8
  %62 = getelementptr inbounds %struct.block_state, %struct.block_state* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.block_state*, %struct.block_state** %10, align 8
  %64 = getelementptr inbounds %struct.block_state, %struct.block_state* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.blocks*, %struct.blocks** %3, align 8
  %67 = getelementptr inbounds %struct.blocks, %struct.blocks* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %65, i64* %71, align 8
  br label %72

72:                                               ; preds = %58, %40
  %73 = load %struct.block_state*, %struct.block_state** %10, align 8
  %74 = getelementptr inbounds %struct.block_state, %struct.block_state* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** @block_sizes, align 8
  %77 = load %struct.block_state*, %struct.block_state** %10, align 8
  %78 = getelementptr inbounds %struct.block_state, %struct.block_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %75, %81
  br i1 %82, label %83, label %224

83:                                               ; preds = %72
  %84 = load %struct.fall**, %struct.fall*** @fall, align 8
  %85 = load %struct.block_state*, %struct.block_state** %10, align 8
  %86 = getelementptr inbounds %struct.block_state, %struct.block_state* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.fall*, %struct.fall** %84, i64 %87
  %89 = load %struct.fall*, %struct.fall** %88, align 8
  %90 = load %struct.block_state*, %struct.block_state** %10, align 8
  %91 = getelementptr inbounds %struct.block_state, %struct.block_state* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.fall, %struct.fall* %89, i64 %92
  store %struct.fall* %93, %struct.fall** %11, align 8
  %94 = load %struct.fall*, %struct.fall** %11, align 8
  %95 = getelementptr inbounds %struct.fall, %struct.fall* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  switch i32 %97, label %173 [
    i32 1, label %98
    i32 2, label %110
    i32 3, label %135
  ]

98:                                               ; preds = %83
  %99 = load %struct.block_state*, %struct.block_state** %10, align 8
  %100 = getelementptr inbounds %struct.block_state, %struct.block_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.fall*, %struct.fall** %11, align 8
  %103 = getelementptr inbounds %struct.fall, %struct.fall* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 2
  %106 = icmp slt i32 %101, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* @ROT_0, align 4
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %107, %98
  br label %173

110:                                              ; preds = %83
  %111 = load %struct.block_state*, %struct.block_state** %10, align 8
  %112 = getelementptr inbounds %struct.block_state, %struct.block_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.fall*, %struct.fall** %11, align 8
  %115 = getelementptr inbounds %struct.fall, %struct.fall* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, 3
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* @ROT_0, align 4
  store i32 %120, i32* %12, align 4
  br label %134

121:                                              ; preds = %110
  %122 = load %struct.block_state*, %struct.block_state** %10, align 8
  %123 = getelementptr inbounds %struct.block_state, %struct.block_state* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.fall*, %struct.fall** %11, align 8
  %126 = getelementptr inbounds %struct.fall, %struct.fall* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 %127, 3
  %129 = mul nsw i32 %128, 2
  %130 = icmp slt i32 %124, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* @ROT_90, align 4
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %131, %121
  br label %134

134:                                              ; preds = %133, %119
  br label %173

135:                                              ; preds = %83
  %136 = load %struct.block_state*, %struct.block_state** %10, align 8
  %137 = getelementptr inbounds %struct.block_state, %struct.block_state* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.fall*, %struct.fall** %11, align 8
  %140 = getelementptr inbounds %struct.fall, %struct.fall* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 4
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* @ROT_0, align 4
  store i32 %145, i32* %12, align 4
  br label %172

146:                                              ; preds = %135
  %147 = load %struct.block_state*, %struct.block_state** %10, align 8
  %148 = getelementptr inbounds %struct.block_state, %struct.block_state* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.fall*, %struct.fall** %11, align 8
  %151 = getelementptr inbounds %struct.fall, %struct.fall* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %152, 4
  %154 = mul nsw i32 %153, 2
  %155 = icmp slt i32 %149, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @ROT_90, align 4
  store i32 %157, i32* %12, align 4
  br label %171

158:                                              ; preds = %146
  %159 = load %struct.block_state*, %struct.block_state** %10, align 8
  %160 = getelementptr inbounds %struct.block_state, %struct.block_state* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.fall*, %struct.fall** %11, align 8
  %163 = getelementptr inbounds %struct.fall, %struct.fall* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %164, 4
  %166 = mul nsw i32 %165, 3
  %167 = icmp slt i32 %161, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @ROT_180, align 4
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %168, %158
  br label %171

171:                                              ; preds = %170, %156
  br label %172

172:                                              ; preds = %171, %144
  br label %173

173:                                              ; preds = %83, %172, %134, %109
  %174 = load i32, i32* %12, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @ROT_MAX, align 4
  %179 = icmp slt i32 %177, %178
  br label %180

180:                                              ; preds = %176, %173
  %181 = phi i1 [ false, %173 ], [ %179, %176 ]
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = load %struct.fall*, %struct.fall** %11, align 8
  %185 = getelementptr inbounds %struct.fall, %struct.fall* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.fall*, %struct.fall** %11, align 8
  %188 = getelementptr inbounds %struct.fall, %struct.fall* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.block_state*, %struct.block_state** %10, align 8
  %191 = getelementptr inbounds %struct.block_state, %struct.block_state* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %189, %192
  %194 = load %struct.block_state*, %struct.block_state** %10, align 8
  %195 = getelementptr inbounds %struct.block_state, %struct.block_state* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i8*, i8** %5, align 8
  %202 = call i32 @draw_shape(i32 %186, i64 %193, i32 %197, i32 %198, i32 %199, i32 %200, i8* %201)
  %203 = load %struct.block_state*, %struct.block_state** %10, align 8
  %204 = getelementptr inbounds %struct.block_state, %struct.block_state* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = load %struct.block_state*, %struct.block_state** %10, align 8
  %208 = getelementptr inbounds %struct.block_state, %struct.block_state* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.fall*, %struct.fall** %11, align 8
  %211 = getelementptr inbounds %struct.fall, %struct.fall* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp sgt i32 %209, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %180
  %215 = load %struct.block_state*, %struct.block_state** %10, align 8
  %216 = getelementptr inbounds %struct.block_state, %struct.block_state* %215, i32 0, i32 1
  store i32 0, i32* %216, align 8
  %217 = load %struct.block_state*, %struct.block_state** %10, align 8
  %218 = getelementptr inbounds %struct.block_state, %struct.block_state* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  br label %221

221:                                              ; preds = %214, %180
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %221, %72
  %225 = load %struct.block_state*, %struct.block_state** %10, align 8
  %226 = getelementptr inbounds %struct.block_state, %struct.block_state* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ugt i64 %227, 0
  br i1 %228, label %229, label %272

229:                                              ; preds = %224
  store i32 0, i32* %13, align 4
  br label %230

230:                                              ; preds = %268, %229
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = load %struct.block_state*, %struct.block_state** %10, align 8
  %234 = getelementptr inbounds %struct.block_state, %struct.block_state* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp ult i64 %232, %235
  br i1 %236, label %237, label %271

237:                                              ; preds = %230
  %238 = load %struct.fall**, %struct.fall*** @fall, align 8
  %239 = load %struct.block_state*, %struct.block_state** %10, align 8
  %240 = getelementptr inbounds %struct.block_state, %struct.block_state* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.fall*, %struct.fall** %238, i64 %241
  %243 = load %struct.fall*, %struct.fall** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.fall, %struct.fall* %243, i64 %245
  store %struct.fall* %246, %struct.fall** %14, align 8
  %247 = load %struct.fall*, %struct.fall** %14, align 8
  %248 = getelementptr inbounds %struct.fall, %struct.fall* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.fall*, %struct.fall** %14, align 8
  %251 = getelementptr inbounds %struct.fall, %struct.fall* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.block_state*, %struct.block_state** %10, align 8
  %254 = getelementptr inbounds %struct.block_state, %struct.block_state* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %252, %255
  %257 = load %struct.fall*, %struct.fall** %14, align 8
  %258 = getelementptr inbounds %struct.fall, %struct.fall* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %259, 1
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.fall*, %struct.fall** %14, align 8
  %264 = getelementptr inbounds %struct.fall, %struct.fall* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i8*, i8** %5, align 8
  %267 = call i32 @draw_shape(i32 %249, i64 %256, i32 %260, i32 %261, i32 %262, i32 %265, i8* %266)
  br label %268

268:                                              ; preds = %237
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %13, align 4
  br label %230

271:                                              ; preds = %230
  br label %272

272:                                              ; preds = %271, %224
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %7, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %7, align 4
  br label %37

276:                                              ; preds = %37
  %277 = load i32, i32* %4, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %294

279:                                              ; preds = %276
  %280 = load i32, i32* @SHAPE_SQUARE, align 4
  %281 = load i32, i32* @COLOR_WHITE, align 4
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @ROT_0, align 4
  %285 = load i8*, i8** %5, align 8
  %286 = call i32 @draw_shape_full(i32 %280, i32 %281, i32 15, i32 13, i32 %282, i32 %283, i32 %284, i8* %285)
  %287 = load i32, i32* @SHAPE_SQUARE, align 4
  %288 = load i32, i32* @COLOR_WHITE, align 4
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* @ROT_0, align 4
  %292 = load i8*, i8** %5, align 8
  %293 = call i32 @draw_shape_full(i32 %287, i32 %288, i32 15, i32 9, i32 %289, i32 %290, i32 %291, i8* %292)
  br label %294

294:                                              ; preds = %279, %276
  %295 = load i32, i32* %6, align 4
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i32 100, i32 500
  ret i32 %298
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @draw_shape(i32, i64, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @draw_shape_full(i32, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
