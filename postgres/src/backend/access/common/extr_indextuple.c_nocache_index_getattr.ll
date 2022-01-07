; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_indextuple.c_nocache_index_getattr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_indextuple.c_nocache_index_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nocache_index_getattr(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IndexInfoFindDataOffset(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = call i64 @IndexTupleHasNulls(%struct.TYPE_12__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = bitcast %struct.TYPE_12__* %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 3
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 7
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %14, align 4
  %49 = shl i32 1, %48
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  br label %72

54:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 255
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  br label %71

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %55

71:                                               ; preds = %66, %55
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %72, %3
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = bitcast %struct.TYPE_12__* %74 to i8*
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8* %78, i8** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %120, label %81

81:                                               ; preds = %73
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %82, i32 %83)
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %16, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = call i32 @fetchatt(%struct.TYPE_13__* %90, i8* %95)
  store i32 %96, i32* %4, align 4
  br label %318

97:                                               ; preds = %81
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = call i64 @IndexTupleHasVarwidths(%struct.TYPE_12__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  store i32 0, i32* %17, align 4
  br label %102

102:                                              ; preds = %115, %101
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = load i32, i32* %17, align 4
  %109 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %107, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 1, i32* %10, align 4
  br label %118

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %102

118:                                              ; preds = %113, %102
  br label %119

119:                                              ; preds = %118, %97
  br label %120

120:                                              ; preds = %119, %73
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %206, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %127, i32 0)
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %143, %123
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %136 = load i32, i32* %19, align 4
  %137 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %135, i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br label %141

141:                                              ; preds = %134, %130
  %142 = phi i1 [ false, %130 ], [ %140, %134 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  br label %130

146:                                              ; preds = %141
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sub nsw i32 %148, 1
  %150 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %147, i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sub nsw i32 %154, 1
  %156 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %153, i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %152, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %191, %146
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %194

165:                                              ; preds = %161
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %167 = load i32, i32* %19, align 4
  %168 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %166, i32 %167)
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %20, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp sle i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %194

174:                                              ; preds = %165
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @att_align_nominal(i32 %175, i32 %178)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %174
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %19, align 4
  br label %161

194:                                              ; preds = %173, %161
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp sgt i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @Assert(i32 %198)
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %200, i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %12, align 4
  br label %309

206:                                              ; preds = %120
  store i32 1, i32* %21, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %22, align 4
  br label %207

207:                                              ; preds = %305, %206
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %209 = load i32, i32* %22, align 4
  %210 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %208, i32 %209)
  store %struct.TYPE_13__* %210, %struct.TYPE_13__** %23, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %212 = call i64 @IndexTupleHasNulls(%struct.TYPE_12__* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load i32, i32* %22, align 4
  %216 = load i32*, i32** %9, align 8
  %217 = call i64 @att_isnull(i32 %215, i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 0, i32* %21, align 4
  br label %305

220:                                              ; preds = %214, %207
  %221 = load i32, i32* %21, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp sge i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %12, align 4
  br label %280

233:                                              ; preds = %223, %220
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, -1
  br i1 %237, label %238, label %265

238:                                              ; preds = %233
  %239 = load i32, i32* %21, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %238
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %12, align 4
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @att_align_nominal(i32 %243, i32 %246)
  %248 = icmp eq i32 %242, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %241
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  br label %264

254:                                              ; preds = %241, %238
  %255 = load i32, i32* %12, align 4
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i8*, i8** %8, align 8
  %260 = load i32, i32* %12, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %259, i64 %261
  %263 = call i32 @att_align_pointer(i32 %255, i32 %258, i32 -1, i8* %262)
  store i32 %263, i32* %12, align 4
  store i32 0, i32* %21, align 4
  br label %264

264:                                              ; preds = %254, %249
  br label %279

265:                                              ; preds = %233
  %266 = load i32, i32* %12, align 4
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @att_align_nominal(i32 %266, i32 %269)
  store i32 %270, i32* %12, align 4
  %271 = load i32, i32* %21, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %265
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  store i64 %275, i64* %277, align 8
  br label %278

278:                                              ; preds = %273, %265
  br label %279

279:                                              ; preds = %278, %264
  br label %280

280:                                              ; preds = %279, %228
  %281 = load i32, i32* %22, align 4
  %282 = load i32, i32* %6, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  br label %308

285:                                              ; preds = %280
  %286 = load i32, i32* %12, align 4
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = load i8*, i8** %8, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %291, i64 %293
  %295 = call i32 @att_addlength_pointer(i32 %286, i32 %290, i8* %294)
  store i32 %295, i32* %12, align 4
  %296 = load i32, i32* %21, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %285
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = icmp sle i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  store i32 0, i32* %21, align 4
  br label %304

304:                                              ; preds = %303, %298, %285
  br label %305

305:                                              ; preds = %304, %219
  %306 = load i32, i32* %22, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %22, align 4
  br label %207

308:                                              ; preds = %284
  br label %309

309:                                              ; preds = %308, %194
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %311 = load i32, i32* %6, align 4
  %312 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %310, i32 %311)
  %313 = load i8*, i8** %8, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  %317 = call i32 @fetchatt(%struct.TYPE_13__* %312, i8* %316)
  store i32 %317, i32* %4, align 4
  br label %318

318:                                              ; preds = %309, %89
  %319 = load i32, i32* %4, align 4
  ret i32 %319
}

declare dso_local i32 @IndexInfoFindDataOffset(i32) #1

declare dso_local i64 @IndexTupleHasNulls(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @fetchatt(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @IndexTupleHasVarwidths(%struct.TYPE_12__*) #1

declare dso_local i32 @att_align_nominal(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @att_isnull(i32, i32*) #1

declare dso_local i32 @att_align_pointer(i32, i32, i32, i8*) #1

declare dso_local i32 @att_addlength_pointer(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
