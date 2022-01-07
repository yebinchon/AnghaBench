; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_readpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@P_HIKEY = common dso_local global i64 0, align 8
@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i64)* @_bt_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_readpage(%struct.TYPE_12__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BufferIsValid(i32 %32)
  %34 = call i32 @Assert(i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BufferGetPage(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @PageGetSpecialPointer(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %9, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %3
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @ScanDirectionIsForward(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @_bt_parallel_release(%struct.TYPE_12__* %52, i32 %55)
  br label %65

57:                                               ; preds = %47
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @BufferGetBlockNumber(i32 %62)
  %64 = call i32 @_bt_parallel_release(%struct.TYPE_12__* %58, i32 %63)
  br label %65

65:                                               ; preds = %57, %51
  br label %66

66:                                               ; preds = %65, %3
  store i32 1, i32* %13, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @IndexRelationGetNumberOfAttributes(i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_14__* %71)
  store i64 %72, i64* %10, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @PageGetMaxOffsetNumber(i32 %73)
  store i64 %74, i64* %11, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @BufferGetBlockNumber(i32 %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 9
  store i32 %79, i32* %82, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @BufferGetLSNAtomic(i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 8
  store i32 %87, i32* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 6
  store i32 %93, i32* %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = call i32 @BTScanPosIsPinned(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %101)
  %103 = call i32 @Assert(i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @ScanDirectionIsForward(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %203

107:                                              ; preds = %66
  store i32 0, i32* %12, align 4
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @Max(i64 %108, i64 %109)
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %152, %127, %107
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %11, align 8
  %114 = icmp sle i64 %112, %113
  br i1 %114, label %115, label %155

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @PageGetItemId(i32 %116, i64 %117)
  store i32 %118, i32* %15, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load i32, i32* %15, align 4
  %125 = call i64 @ItemIdIsDead(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, i64* %6, align 8
  %129 = call i64 @OffsetNumberNext(i64 %128)
  store i64 %129, i64* %6, align 8
  br label %111

130:                                              ; preds = %123, %115
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i64 @PageGetItem(i32 %131, i32 %132)
  store i64 %133, i64* %16, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @_bt_checkkeys(%struct.TYPE_12__* %134, i64 %135, i32 %136, i32 %137, i32* %13)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %130
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* %16, align 8
  %145 = call i32 @_bt_saveitem(%struct.TYPE_13__* %141, i32 %142, i64 %143, i64 %144)
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %140, %130
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  br label %155

152:                                              ; preds = %148
  %153 = load i64, i64* %6, align 8
  %154 = call i64 @OffsetNumberNext(i64 %153)
  store i64 %154, i64* %6, align 8
  br label %111

155:                                              ; preds = %151, %111
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %155
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %160 = call i32 @P_RIGHTMOST(%struct.TYPE_14__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %179, label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %8, align 4
  %164 = load i64, i64* @P_HIKEY, align 8
  %165 = call i32 @PageGetItemId(i32 %163, i64 %164)
  store i32 %165, i32* %17, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %17, align 4
  %168 = call i64 @PageGetItem(i32 %166, i32 %167)
  store i64 %168, i64* %18, align 8
  %169 = load i64, i64* %18, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @BTreeTupleGetNAtts(i64 %169, i32 %172)
  store i32 %173, i32* %19, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %175 = load i64, i64* %18, align 8
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @_bt_checkkeys(%struct.TYPE_12__* %174, i64 %175, i32 %176, i32 %177, i32* %13)
  br label %179

179:                                              ; preds = %162, %158, %155
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %182, %179
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %189 = icmp sle i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @Assert(i32 %190)
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  store i32 0, i32* %194, align 4
  %195 = load i32, i32* %12, align 4
  %196 = sub nsw i32 %195, 1
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  store i32 %196, i32* %199, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 3
  store i32 0, i32* %202, align 4
  br label %291

203:                                              ; preds = %66
  %204 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  store i32 %204, i32* %12, align 4
  %205 = load i64, i64* %6, align 8
  %206 = load i64, i64* %11, align 8
  %207 = call i64 @Min(i64 %205, i64 %206)
  store i64 %207, i64* %6, align 8
  br label %208

208:                                              ; preds = %269, %235, %203
  %209 = load i64, i64* %6, align 8
  %210 = load i64, i64* %10, align 8
  %211 = icmp sge i64 %209, %210
  br i1 %211, label %212, label %272

212:                                              ; preds = %208
  %213 = load i32, i32* %8, align 4
  %214 = load i64, i64* %6, align 8
  %215 = call i32 @PageGetItemId(i32 %213, i64 %214)
  store i32 %215, i32* %20, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %212
  %221 = load i32, i32* %20, align 4
  %222 = call i64 @ItemIdIsDead(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %220
  %225 = load i64, i64* %6, align 8
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %227 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_14__* %226)
  %228 = icmp sge i64 %225, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @Assert(i32 %229)
  %231 = load i64, i64* %6, align 8
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %233 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_14__* %232)
  %234 = icmp sgt i64 %231, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %224
  %236 = load i64, i64* %6, align 8
  %237 = call i64 @OffsetNumberPrev(i64 %236)
  store i64 %237, i64* %6, align 8
  br label %208

238:                                              ; preds = %224
  store i32 0, i32* %22, align 4
  br label %240

239:                                              ; preds = %220, %212
  store i32 1, i32* %22, align 4
  br label %240

240:                                              ; preds = %239, %238
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %20, align 4
  %243 = call i64 @PageGetItem(i32 %241, i32 %242)
  store i64 %243, i64* %21, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %245 = load i64, i64* %21, align 8
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* %5, align 4
  %248 = call i32 @_bt_checkkeys(%struct.TYPE_12__* %244, i64 %245, i32 %246, i32 %247, i32* %13)
  store i32 %248, i32* %23, align 4
  %249 = load i32, i32* %23, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %240
  %252 = load i32, i32* %22, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %251
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %12, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %258 = load i32, i32* %12, align 4
  %259 = load i64, i64* %6, align 8
  %260 = load i64, i64* %21, align 8
  %261 = call i32 @_bt_saveitem(%struct.TYPE_13__* %257, i32 %258, i64 %259, i64 %260)
  br label %262

262:                                              ; preds = %254, %251, %240
  %263 = load i32, i32* %13, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %262
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 4
  store i32 0, i32* %268, align 8
  br label %272

269:                                              ; preds = %262
  %270 = load i64, i64* %6, align 8
  %271 = call i64 @OffsetNumberPrev(i64 %270)
  store i64 %271, i64* %6, align 8
  br label %208

272:                                              ; preds = %265, %208
  %273 = load i32, i32* %12, align 4
  %274 = icmp sge i32 %273, 0
  %275 = zext i1 %274 to i32
  %276 = call i32 @Assert(i32 %275)
  %277 = load i32, i32* %12, align 4
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  store i32 %277, i32* %280, align 4
  %281 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %282 = sub nsw i32 %281, 1
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 2
  store i32 %282, i32* %285, align 8
  %286 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %287 = sub nsw i32 %286, 1
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 3
  store i32 %287, i32* %290, align 4
  br label %291

291:                                              ; preds = %272, %186
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = icmp sle i32 %295, %299
  %301 = zext i1 %300 to i32
  ret i32 %301
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @_bt_parallel_release(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfAttributes(i32) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_14__*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @BufferGetLSNAtomic(i32) #1

declare dso_local i32 @BTScanPosIsPinned(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

declare dso_local i64 @Max(i64, i64) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @_bt_checkkeys(%struct.TYPE_12__*, i64, i32, i32, i32*) #1

declare dso_local i32 @_bt_saveitem(%struct.TYPE_13__*, i32, i64, i64) #1

declare dso_local i32 @P_RIGHTMOST(%struct.TYPE_14__*) #1

declare dso_local i32 @BTreeTupleGetNAtts(i64, i32) #1

declare dso_local i64 @Min(i64, i64) #1

declare dso_local i64 @OffsetNumberPrev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
