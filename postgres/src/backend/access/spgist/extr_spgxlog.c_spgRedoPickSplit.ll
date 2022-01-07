; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoPickSplit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoPickSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@SizeOfSpgxlogPickSplit = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@SPGIST_LEAF = common dso_local global i32 0, align 4
@SPGIST_NULLS = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@SPGIST_REDIRECT = common dso_local global i32 0, align 4
@SPGIST_PLACEHOLDER = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @spgRedoPickSplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgRedoPickSplit(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_18__, align 4
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_18__, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = call i8* @XLogRecGetData(%struct.TYPE_16__* %29)
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %5, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = call i32 @XLogRecGetBlockTag(%struct.TYPE_16__* %33, i32 2, i32* null, i32* null, i32* %19)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @fillFakeState(%struct.TYPE_17__* %8, i32 %37)
  %39 = load i32, i32* @SizeOfSpgxlogPickSplit, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %9, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %4, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %10, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = bitcast i8* %61 to i64*
  store i64* %62, i64** %11, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %4, align 8
  %70 = load i8*, i8** %4, align 8
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @memcpy(%struct.TYPE_18__* %7, i8* %71, i32 4)
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %4, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %1
  %83 = load i32, i32* @InvalidBuffer, align 4
  store i32 %83, i32* %12, align 4
  store i32* null, i32** %15, align 8
  br label %145

84:                                               ; preds = %1
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 10
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = call i32 @XLogInitBufferForRedo(%struct.TYPE_16__* %90, i32 0)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32* @BufferGetPage(i32 %92)
  store i32* %93, i32** %15, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @SPGIST_LEAF, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* @SPGIST_NULLS, align 4
  br label %103

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = or i32 %95, %104
  %106 = call i32 @SpGistInitBuffer(i32 %94, i32 %105)
  br label %144

107:                                              ; preds = %84
  store i32* null, i32** %15, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = call i64 @XLogReadBufferForRedo(%struct.TYPE_16__* %108, i32 0, i32* %12)
  %110 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %143

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = call i32* @BufferGetPage(i32 %113)
  store i32* %114, i32** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %112
  %119 = load i32*, i32** %15, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SPGIST_REDIRECT, align 4
  %125 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @spgPageIndexMultiDelete(%struct.TYPE_17__* %8, i32* %119, i32* %120, i32 %123, i32 %124, i32 %125, i32 %126, i32 %129)
  br label %142

131:                                              ; preds = %112
  %132 = load i32*, i32** %15, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  %138 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  %139 = load i32, i32* @InvalidBlockNumber, align 4
  %140 = load i32, i32* @InvalidOffsetNumber, align 4
  %141 = call i32 @spgPageIndexMultiDelete(%struct.TYPE_17__* %8, i32* %132, i32* %133, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %131, %118
  br label %143

143:                                              ; preds = %142, %107
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %144, %82
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %147 = call i64 @XLogRecHasBlockRef(%struct.TYPE_16__* %146, i32 1)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @InvalidBuffer, align 4
  store i32 %150, i32* %13, align 4
  store i32* null, i32** %16, align 8
  br label %185

151:                                              ; preds = %145
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 9
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %151
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %158 = call i32 @XLogInitBufferForRedo(%struct.TYPE_16__* %157, i32 1)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32* @BufferGetPage(i32 %159)
  store i32* %160, i32** %16, align 8
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @SPGIST_LEAF, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %156
  %168 = load i32, i32* @SPGIST_NULLS, align 4
  br label %170

169:                                              ; preds = %156
  br label %170

170:                                              ; preds = %169, %167
  %171 = phi i32 [ %168, %167 ], [ 0, %169 ]
  %172 = or i32 %162, %171
  %173 = call i32 @SpGistInitBuffer(i32 %161, i32 %172)
  br label %184

174:                                              ; preds = %151
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %176 = call i64 @XLogReadBufferForRedo(%struct.TYPE_16__* %175, i32 1, i32* %13)
  %177 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %13, align 4
  %181 = call i32* @BufferGetPage(i32 %180)
  store i32* %181, i32** %16, align 8
  br label %183

182:                                              ; preds = %174
  store i32* null, i32** %16, align 8
  br label %183

183:                                              ; preds = %182, %179
  br label %184

184:                                              ; preds = %183, %170
  br label %185

185:                                              ; preds = %184, %149
  store i32 0, i32* %18, align 4
  br label %186

186:                                              ; preds = %228, %185
  %187 = load i32, i32* %18, align 4
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %231

192:                                              ; preds = %186
  %193 = load i8*, i8** %4, align 8
  store i8* %193, i8** %21, align 8
  %194 = load i8*, i8** %21, align 8
  %195 = call i32 @memcpy(%struct.TYPE_18__* %22, i8* %194, i32 4)
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %4, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %4, align 8
  %201 = load i64*, i64** %11, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %192
  %208 = load i32*, i32** %16, align 8
  br label %211

209:                                              ; preds = %192
  %210 = load i32*, i32** %15, align 8
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32* [ %208, %207 ], [ %210, %209 ]
  store i32* %212, i32** %17, align 8
  %213 = load i32*, i32** %17, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %228

216:                                              ; preds = %211
  %217 = load i32*, i32** %17, align 8
  %218 = load i8*, i8** %21, align 8
  %219 = ptrtoint i8* %218 to i32
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %18, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @addOrReplaceTuple(i32* %217, i32 %219, i32 %221, i32 %226)
  br label %228

228:                                              ; preds = %216, %215
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %186

231:                                              ; preds = %186
  %232 = load i32*, i32** %15, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = load i32*, i32** %15, align 8
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @PageSetLSN(i32* %235, i32 %236)
  %238 = load i32, i32* %12, align 4
  %239 = call i32 @MarkBufferDirty(i32 %238)
  br label %240

240:                                              ; preds = %234, %231
  %241 = load i32*, i32** %16, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %249

243:                                              ; preds = %240
  %244 = load i32*, i32** %16, align 8
  %245 = load i32, i32* %3, align 4
  %246 = call i32 @PageSetLSN(i32* %244, i32 %245)
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @MarkBufferDirty(i32 %247)
  br label %249

249:                                              ; preds = %243, %240
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 8
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %269

254:                                              ; preds = %249
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %256 = call i32 @XLogInitBufferForRedo(%struct.TYPE_16__* %255, i32 2)
  store i32 %256, i32* %14, align 4
  %257 = load i32, i32* %14, align 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 7
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %254
  %263 = load i32, i32* @SPGIST_NULLS, align 4
  br label %265

264:                                              ; preds = %254
  br label %265

265:                                              ; preds = %264, %262
  %266 = phi i32 [ %263, %262 ], [ 0, %264 ]
  %267 = call i32 @SpGistInitBuffer(i32 %257, i32 %266)
  %268 = load i64, i64* @BLK_NEEDS_REDO, align 8
  store i64 %268, i64* %20, align 8
  br label %272

269:                                              ; preds = %249
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %271 = call i64 @XLogReadBufferForRedo(%struct.TYPE_16__* %270, i32 2, i32* %14)
  store i64 %271, i64* %20, align 8
  br label %272

272:                                              ; preds = %269, %265
  %273 = load i64, i64* %20, align 8
  %274 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %315

276:                                              ; preds = %272
  %277 = load i32, i32* %14, align 4
  %278 = call i32* @BufferGetPage(i32 %277)
  store i32* %278, i32** %17, align 8
  %279 = load i32*, i32** %17, align 8
  %280 = load i8*, i8** %6, align 8
  %281 = ptrtoint i8* %280 to i32
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @addOrReplaceTuple(i32* %279, i32 %281, i32 %283, i32 %286)
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %309

292:                                              ; preds = %276
  %293 = load i32*, i32** %17, align 8
  %294 = load i32*, i32** %17, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @PageGetItemId(i32* %294, i32 %297)
  %299 = call i64 @PageGetItem(i32* %293, i32 %298)
  store i64 %299, i64* %23, align 8
  %300 = load i64, i64* %23, align 8
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %19, align 4
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @spgUpdateNodeLink(i64 %300, i32 %303, i32 %304, i32 %307)
  br label %309

309:                                              ; preds = %292, %276
  %310 = load i32*, i32** %17, align 8
  %311 = load i32, i32* %3, align 4
  %312 = call i32 @PageSetLSN(i32* %310, i32 %311)
  %313 = load i32, i32* %14, align 4
  %314 = call i32 @MarkBufferDirty(i32 %313)
  br label %315

315:                                              ; preds = %309, %272
  %316 = load i32, i32* %14, align 4
  %317 = call i64 @BufferIsValid(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %315
  %320 = load i32, i32* %14, align 4
  %321 = call i32 @UnlockReleaseBuffer(i32 %320)
  br label %322

322:                                              ; preds = %319, %315
  %323 = load i32, i32* %12, align 4
  %324 = call i64 @BufferIsValid(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = load i32, i32* %12, align 4
  %328 = call i32 @UnlockReleaseBuffer(i32 %327)
  br label %329

329:                                              ; preds = %326, %322
  %330 = load i32, i32* %13, align 4
  %331 = call i64 @BufferIsValid(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = load i32, i32* %13, align 4
  %335 = call i32 @UnlockReleaseBuffer(i32 %334)
  br label %336

336:                                              ; preds = %333, %329
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %338 = call i64 @XLogRecHasBlockRef(%struct.TYPE_16__* %337, i32 3)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %377

340:                                              ; preds = %336
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %342 = call i64 @XLogReadBufferForRedo(%struct.TYPE_16__* %341, i32 3, i32* %24)
  %343 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %369

345:                                              ; preds = %340
  %346 = load i32, i32* %24, align 4
  %347 = call i32* @BufferGetPage(i32 %346)
  store i32* %347, i32** %17, align 8
  %348 = load i32*, i32** %17, align 8
  %349 = load i32*, i32** %17, align 8
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @PageGetItemId(i32* %349, i32 %352)
  %354 = call i64 @PageGetItem(i32* %348, i32 %353)
  store i64 %354, i64* %25, align 8
  %355 = load i64, i64* %25, align 8
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %19, align 4
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @spgUpdateNodeLink(i64 %355, i32 %358, i32 %359, i32 %362)
  %364 = load i32*, i32** %17, align 8
  %365 = load i32, i32* %3, align 4
  %366 = call i32 @PageSetLSN(i32* %364, i32 %365)
  %367 = load i32, i32* %24, align 4
  %368 = call i32 @MarkBufferDirty(i32 %367)
  br label %369

369:                                              ; preds = %345, %340
  %370 = load i32, i32* %24, align 4
  %371 = call i64 @BufferIsValid(i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %369
  %374 = load i32, i32* %24, align 4
  %375 = call i32 @UnlockReleaseBuffer(i32 %374)
  br label %376

376:                                              ; preds = %373, %369
  br label %391

377:                                              ; preds = %336
  %378 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %377
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br label %387

387:                                              ; preds = %382, %377
  %388 = phi i1 [ true, %377 ], [ %386, %382 ]
  %389 = zext i1 %388 to i32
  %390 = call i32 @Assert(i32 %389)
  br label %391

391:                                              ; preds = %387, %376
  ret void
}

declare dso_local i8* @XLogRecGetData(%struct.TYPE_16__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_16__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @fillFakeState(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @BufferGetPage(i32) #1

declare dso_local i32 @SpGistInitBuffer(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @spgPageIndexMultiDelete(%struct.TYPE_17__*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @XLogRecHasBlockRef(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @addOrReplaceTuple(i32*, i32, i32, i32) #1

declare dso_local i32 @PageSetLSN(i32*, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @PageGetItem(i32*, i32) #1

declare dso_local i32 @PageGetItemId(i32*, i32) #1

declare dso_local i32 @spgUpdateNodeLink(i64, i32, i32, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
