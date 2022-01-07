; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_readnextpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_readnextpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i32, i32 }
%struct.TYPE_17__ = type { i64 }

@P_NONE = common dso_local global i64 0, align 8
@BT_READ = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, i32)* @_bt_readnextpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_readnextpage(%struct.TYPE_15__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %8, align 8
  store i32 1, i32* %12, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @ScanDirectionIsForward(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %128

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %126, %24
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @P_NONE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29, %25
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = call i32 @_bt_parallel_done(%struct.TYPE_15__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = call i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %39)
  store i32 0, i32* %4, align 4
  br label %294

41:                                               ; preds = %29
  %42 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @BT_READ, align 4
  %46 = call i8* @_bt_getbuf(i32 %43, i64 %44, i32 %45)
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @BufferGetPage(i64 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @TestForOldSnapshot(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @PageGetSpecialPointer(i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %11, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %66 = call i32 @P_IGNORE(%struct.TYPE_17__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %41
  %69 = load i32, i32* %9, align 4
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PredicateLockPage(i32 %69, i64 %70, i32 %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %78 = call i32 @P_FIRSTDATAKEY(%struct.TYPE_17__* %77)
  %79 = call i64 @_bt_readpage(%struct.TYPE_15__* %75, i32 %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %127

82:                                               ; preds = %68
  br label %95

83:                                               ; preds = %41
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @_bt_parallel_release(%struct.TYPE_15__* %89, i64 %92)
  br label %94

94:                                               ; preds = %88, %83
  br label %95

95:                                               ; preds = %94, %82
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @_bt_relbuf(i32 %101, i64 %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = call i32 @_bt_parallel_seize(%struct.TYPE_15__* %107, i64* %6)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %100
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = call i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %113)
  store i32 0, i32* %4, align 4
  br label %294

115:                                              ; preds = %100
  br label %126

116:                                              ; preds = %95
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @_bt_relbuf(i32 %120, i64 %124)
  br label %126

126:                                              ; preds = %116, %115
  br label %25

127:                                              ; preds = %81
  br label %293

128:                                              ; preds = %3
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %128
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = call i32 @BTScanPosUnpinIfPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %137)
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  store i64 %139, i64* %142, align 8
  br label %143

143:                                              ; preds = %135, %128
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = call i64 @BTScanPosIsPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @BT_READ, align 4
  %154 = call i32 @LockBuffer(i64 %152, i32 %153)
  br label %167

155:                                              ; preds = %143
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @BT_READ, align 4
  %162 = call i8* @_bt_getbuf(i32 %156, i64 %160, i32 %161)
  %163 = ptrtoint i8* %162 to i64
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  store i64 %163, i64* %166, align 8
  br label %167

167:                                              ; preds = %155, %148
  br label %168

168:                                              ; preds = %291, %167
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @_bt_relbuf(i32 %175, i64 %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %182 = call i32 @_bt_parallel_done(%struct.TYPE_15__* %181)
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = call i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %184)
  store i32 0, i32* %4, align 4
  br label %294

186:                                              ; preds = %168
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @_bt_walk_left(i32 %187, i64 %191, i32 %194)
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  store i64 %195, i64* %198, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @InvalidBuffer, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %186
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = call i32 @_bt_parallel_done(%struct.TYPE_15__* %206)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = call i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %209)
  store i32 0, i32* %4, align 4
  br label %294

211:                                              ; preds = %186
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @BufferGetPage(i64 %215)
  store i32 %216, i32* %10, align 4
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @TestForOldSnapshot(i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* %10, align 4
  %224 = call i64 @PageGetSpecialPointer(i32 %223)
  %225 = inttoptr i64 %224 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %225, %struct.TYPE_17__** %11, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %227 = call i32 @P_IGNORE(%struct.TYPE_17__* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %248, label %229

229:                                              ; preds = %211
  %230 = load i32, i32* %9, align 4
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i64 @BufferGetBlockNumber(i64 %234)
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @PredicateLockPage(i32 %230, i64 %235, i32 %238)
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %10, align 4
  %243 = call i32 @PageGetMaxOffsetNumber(i32 %242)
  %244 = call i64 @_bt_readpage(%struct.TYPE_15__* %240, i32 %241, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %229
  br label %292

247:                                              ; preds = %229
  br label %262

248:                                              ; preds = %211
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %261

253:                                              ; preds = %248
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i64 @BufferGetBlockNumber(i64 %258)
  %260 = call i32 @_bt_parallel_release(%struct.TYPE_15__* %254, i64 %259)
  br label %261

261:                                              ; preds = %253, %248
  br label %262

262:                                              ; preds = %261, %247
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %291

267:                                              ; preds = %262
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @_bt_relbuf(i32 %268, i64 %272)
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %275 = call i32 @_bt_parallel_seize(%struct.TYPE_15__* %274, i64* %6)
  store i32 %275, i32* %12, align 4
  %276 = load i32, i32* %12, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %267
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = call i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %280)
  store i32 0, i32* %4, align 4
  br label %294

282:                                              ; preds = %267
  %283 = load i32, i32* %9, align 4
  %284 = load i64, i64* %6, align 8
  %285 = load i32, i32* @BT_READ, align 4
  %286 = call i8* @_bt_getbuf(i32 %283, i64 %284, i32 %285)
  %287 = ptrtoint i8* %286 to i64
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  store i64 %287, i64* %290, align 8
  br label %291

291:                                              ; preds = %282, %262
  br label %168

292:                                              ; preds = %246
  br label %293

293:                                              ; preds = %292, %127
  store i32 1, i32* %4, align 4
  br label %294

294:                                              ; preds = %293, %278, %205, %174, %111, %35
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @_bt_parallel_done(%struct.TYPE_15__*) #1

declare dso_local i32 @BTScanPosInvalidate(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i8* @_bt_getbuf(i32, i64, i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @P_IGNORE(%struct.TYPE_17__*) #1

declare dso_local i32 @PredicateLockPage(i32, i64, i32) #1

declare dso_local i64 @_bt_readpage(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @P_FIRSTDATAKEY(%struct.TYPE_17__*) #1

declare dso_local i32 @_bt_parallel_release(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @_bt_relbuf(i32, i64) #1

declare dso_local i32 @_bt_parallel_seize(%struct.TYPE_15__*, i64*) #1

declare dso_local i32 @BTScanPosUnpinIfPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i64 @BTScanPosIsPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i64 @_bt_walk_left(i32, i64, i32) #1

declare dso_local i64 @BufferGetBlockNumber(i64) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
