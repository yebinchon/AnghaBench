; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heapgettup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heapgettup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i64, i64, %struct.TYPE_8__, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32*, i32, i8* }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@SO_ALLOW_SYNC = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32, i32*)* @heapgettup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heapgettup(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 7
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %9, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ScanDirectionIsBackward(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @ScanDirectionIsForward(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %141

33:                                               ; preds = %4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %110, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43, %38
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @BufferIsValid(i32 %51)
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %571

59:                                               ; preds = %43
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %98

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = ptrtoint i32* %69 to i32
  store i32 %70, i32* %19, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @table_block_parallelscan_startblock_init(i32 %74, i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %19, align 4
  %82 = call i64 @table_block_parallelscan_nextpage(i32 %80, i32 %81)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @InvalidBlockNumber, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %65
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @BufferIsValid(i32 %89)
  %91 = icmp ne i64 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  br label %571

97:                                               ; preds = %65
  br label %102

98:                                               ; preds = %59
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %12, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = ptrtoint %struct.TYPE_10__* %103 to i32
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @heapgetpage(i32 %104, i64 %105)
  %107 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %107, i32* %16, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %118

110:                                              ; preds = %33
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %12, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = call i32 @ItemPointerGetOffsetNumber(i32* %115)
  %117 = call i32 @OffsetNumberNext(i32 %116)
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %110, %102
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %123 = call i32 @LockBuffer(i32 %121, i32 %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @BufferGetPage(i32 %126)
  store i64 %127, i64* %14, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @TestForOldSnapshot(i32 %128, i32 %132, i64 %133)
  %135 = load i64, i64* %14, align 8
  %136 = call i32 @PageGetMaxOffsetNumber(i64 %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %137, %138
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %17, align 4
  br label %305

141:                                              ; preds = %4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %242

144:                                              ; preds = %141
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @Assert(i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %204, label %156

156:                                              ; preds = %144
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161, %156
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @BufferIsValid(i32 %169)
  %171 = icmp ne i64 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @Assert(i32 %173)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i32* null, i32** %176, align 8
  br label %571

177:                                              ; preds = %161
  %178 = load i32, i32* @SO_ALLOW_SYNC, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, %179
  store i32 %184, i32* %182, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %177
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %192, 1
  store i64 %193, i64* %12, align 8
  br label %199

194:                                              ; preds = %177
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %197, 1
  store i64 %198, i64* %12, align 8
  br label %199

199:                                              ; preds = %194, %189
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %201 = ptrtoint %struct.TYPE_10__* %200 to i32
  %202 = load i64, i64* %12, align 8
  %203 = call i32 @heapgetpage(i32 %201, i64 %202)
  br label %208

204:                                              ; preds = %144
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %12, align 8
  br label %208

208:                                              ; preds = %204, %199
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %213 = call i32 @LockBuffer(i32 %211, i32 %212)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @BufferGetPage(i32 %216)
  store i64 %217, i64* %14, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i64, i64* %14, align 8
  %224 = call i32 @TestForOldSnapshot(i32 %218, i32 %222, i64 %223)
  %225 = load i64, i64* %14, align 8
  %226 = call i32 @PageGetMaxOffsetNumber(i64 %225)
  store i32 %226, i32* %15, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %208
  %232 = load i32, i32* %15, align 4
  store i32 %232, i32* %16, align 4
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  store i32 1, i32* %234, align 8
  br label %240

235:                                              ; preds = %208
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = call i32 @ItemPointerGetOffsetNumber(i32* %237)
  %239 = call i32 @OffsetNumberPrev(i32 %238)
  store i32 %239, i32* %16, align 4
  br label %240

240:                                              ; preds = %235, %231
  %241 = load i32, i32* %16, align 4
  store i32 %241, i32* %17, align 4
  br label %304

242:                                              ; preds = %141
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %258, label %247

247:                                              ; preds = %242
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = call i64 @BufferIsValid(i32 %250)
  %252 = icmp ne i64 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = call i32 @Assert(i32 %254)
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  store i32* null, i32** %257, align 8
  br label %571

258:                                              ; preds = %242
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = call i64 @ItemPointerGetBlockNumber(i32* %260)
  store i64 %261, i64* %12, align 8
  %262 = load i64, i64* %12, align 8
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %262, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %258
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %269 = ptrtoint %struct.TYPE_10__* %268 to i32
  %270 = load i64, i64* %12, align 8
  %271 = call i32 @heapgetpage(i32 %269, i64 %270)
  br label %272

272:                                              ; preds = %267, %258
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = call i64 @BufferGetPage(i32 %275)
  store i64 %276, i64* %14, align 8
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i64, i64* %14, align 8
  %283 = call i32 @TestForOldSnapshot(i32 %277, i32 %281, i64 %282)
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = call i32 @ItemPointerGetOffsetNumber(i32* %285)
  store i32 %286, i32* %16, align 4
  %287 = load i64, i64* %14, align 8
  %288 = load i32, i32* %16, align 4
  %289 = call i64 @PageGetItemId(i64 %287, i32 %288)
  store i64 %289, i64* %18, align 8
  %290 = load i64, i64* %18, align 8
  %291 = call i32 @ItemIdIsNormal(i64 %290)
  %292 = call i32 @Assert(i32 %291)
  %293 = load i64, i64* %14, align 8
  %294 = load i64, i64* %18, align 8
  %295 = call i64 @PageGetItem(i64 %293, i64 %294)
  %296 = inttoptr i64 %295 to i8*
  %297 = bitcast i8* %296 to i32*
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  store i32* %297, i32** %299, align 8
  %300 = load i64, i64* %18, align 8
  %301 = call i8* @ItemIdGetLength(i64 %300)
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  br label %571

304:                                              ; preds = %240
  br label %305

305:                                              ; preds = %304, %118
  %306 = load i64, i64* %14, align 8
  %307 = load i32, i32* %16, align 4
  %308 = call i64 @PageGetItemId(i64 %306, i32 %307)
  store i64 %308, i64* %18, align 8
  br label %309

309:                                              ; preds = %570, %305
  br label %310

310:                                              ; preds = %392, %309
  %311 = load i32, i32* %17, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %393

313:                                              ; preds = %310
  %314 = load i64, i64* %18, align 8
  %315 = call i32 @ItemIdIsNormal(i64 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %377

317:                                              ; preds = %313
  %318 = load i64, i64* %14, align 8
  %319 = load i64, i64* %18, align 8
  %320 = call i64 @PageGetItem(i64 %318, i64 %319)
  %321 = inttoptr i64 %320 to i8*
  %322 = bitcast i8* %321 to i32*
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 0
  store i32* %322, i32** %324, align 8
  %325 = load i64, i64* %18, align 8
  %326 = call i8* @ItemIdGetLength(i64 %325)
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 2
  store i8* %326, i8** %328, align 8
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 1
  %331 = load i64, i64* %12, align 8
  %332 = load i32, i32* %16, align 4
  %333 = call i32 @ItemPointerSet(i32* %330, i64 %331, i32 %332)
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %335 = load i32, i32* %10, align 4
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_9__* %334, i32 %335, i32 %338)
  store i32 %339, i32* %20, align 4
  %340 = load i32, i32* %20, align 4
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* %10, align 4
  %350 = call i32 @CheckForSerializableConflictOut(i32 %340, i32 %344, %struct.TYPE_9__* %345, i32 %348, i32 %349)
  %351 = load i32, i32* %20, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %367

353:                                              ; preds = %317
  %354 = load i32*, i32** %8, align 8
  %355 = icmp ne i32* %354, null
  br i1 %355, label %356, label %367

356:                                              ; preds = %353
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 5
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @RelationGetDescr(i32 %361)
  %363 = load i32, i32* %7, align 4
  %364 = load i32*, i32** %8, align 8
  %365 = load i32, i32* %20, align 4
  %366 = call i32 @HeapKeyTest(%struct.TYPE_9__* %357, i32 %362, i32 %363, i32* %364, i32 %365)
  br label %367

367:                                              ; preds = %356, %353, %317
  %368 = load i32, i32* %20, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %367
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 6
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %375 = call i32 @LockBuffer(i32 %373, i32 %374)
  br label %571

376:                                              ; preds = %367
  br label %377

377:                                              ; preds = %376, %313
  %378 = load i32, i32* %17, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %17, align 4
  %380 = load i32, i32* %11, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %377
  %383 = load i64, i64* %18, align 8
  %384 = add nsw i64 %383, -1
  store i64 %384, i64* %18, align 8
  %385 = load i32, i32* %16, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %16, align 4
  br label %392

387:                                              ; preds = %377
  %388 = load i64, i64* %18, align 8
  %389 = add nsw i64 %388, 1
  store i64 %389, i64* %18, align 8
  %390 = load i32, i32* %16, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %16, align 4
  br label %392

392:                                              ; preds = %387, %382
  br label %310

393:                                              ; preds = %310
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 6
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %398 = call i32 @LockBuffer(i32 %396, i32 %397)
  %399 = load i32, i32* %11, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %436

401:                                              ; preds = %393
  %402 = load i64, i64* %12, align 8
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 3
  %405 = load i64, i64* %404, align 8
  %406 = icmp eq i64 %402, %405
  br i1 %406, label %424, label %407

407:                                              ; preds = %401
  %408 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @InvalidBlockNumber, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %420

413:                                              ; preds = %407
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = add nsw i64 %416, -1
  store i64 %417, i64* %415, align 8
  %418 = icmp eq i64 %417, 0
  %419 = zext i1 %418 to i32
  br label %421

420:                                              ; preds = %407
  br label %421

421:                                              ; preds = %420, %413
  %422 = phi i32 [ %419, %413 ], [ 0, %420 ]
  %423 = icmp ne i32 %422, 0
  br label %424

424:                                              ; preds = %421, %401
  %425 = phi i1 [ true, %401 ], [ %423, %421 ]
  %426 = zext i1 %425 to i32
  store i32 %426, i32* %13, align 4
  %427 = load i64, i64* %12, align 8
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %12, align 8
  br label %433

433:                                              ; preds = %429, %424
  %434 = load i64, i64* %12, align 8
  %435 = add nsw i64 %434, -1
  store i64 %435, i64* %12, align 8
  br label %509

436:                                              ; preds = %393
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i32 0, i32 5
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 2
  %440 = load i32*, i32** %439, align 8
  %441 = icmp ne i32* %440, null
  br i1 %441, label %442, label %458

442:                                              ; preds = %436
  %443 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 5
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 2
  %446 = load i32*, i32** %445, align 8
  %447 = ptrtoint i32* %446 to i32
  store i32 %447, i32* %21, align 4
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 5
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* %21, align 4
  %453 = call i64 @table_block_parallelscan_nextpage(i32 %451, i32 %452)
  store i64 %453, i64* %12, align 8
  %454 = load i64, i64* %12, align 8
  %455 = load i64, i64* @InvalidBlockNumber, align 8
  %456 = icmp eq i64 %454, %455
  %457 = zext i1 %456 to i32
  store i32 %457, i32* %13, align 4
  br label %508

458:                                              ; preds = %436
  %459 = load i64, i64* %12, align 8
  %460 = add nsw i64 %459, 1
  store i64 %460, i64* %12, align 8
  %461 = load i64, i64* %12, align 8
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = icmp sge i64 %461, %464
  br i1 %465, label %466, label %467

466:                                              ; preds = %458
  store i64 0, i64* %12, align 8
  br label %467

467:                                              ; preds = %466, %458
  %468 = load i64, i64* %12, align 8
  %469 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 3
  %471 = load i64, i64* %470, align 8
  %472 = icmp eq i64 %468, %471
  br i1 %472, label %490, label %473

473:                                              ; preds = %467
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @InvalidBlockNumber, align 8
  %478 = icmp ne i64 %476, %477
  br i1 %478, label %479, label %486

479:                                              ; preds = %473
  %480 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %480, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = add nsw i64 %482, -1
  store i64 %483, i64* %481, align 8
  %484 = icmp eq i64 %483, 0
  %485 = zext i1 %484 to i32
  br label %487

486:                                              ; preds = %473
  br label %487

487:                                              ; preds = %486, %479
  %488 = phi i32 [ %485, %479 ], [ 0, %486 ]
  %489 = icmp ne i32 %488, 0
  br label %490

490:                                              ; preds = %487, %467
  %491 = phi i1 [ true, %467 ], [ %489, %487 ]
  %492 = zext i1 %491 to i32
  store i32 %492, i32* %13, align 4
  %493 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %493, i32 0, i32 5
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @SO_ALLOW_SYNC, align 4
  %498 = and i32 %496, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %507

500:                                              ; preds = %490
  %501 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = load i64, i64* %12, align 8
  %506 = call i32 @ss_report_location(i32 %504, i64 %505)
  br label %507

507:                                              ; preds = %500, %490
  br label %508

508:                                              ; preds = %507, %442
  br label %509

509:                                              ; preds = %508, %433
  %510 = load i32, i32* %13, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %534

512:                                              ; preds = %509
  %513 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i32 0, i32 6
  %515 = load i32, i32* %514, align 8
  %516 = call i64 @BufferIsValid(i32 %515)
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %523

518:                                              ; preds = %512
  %519 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %520 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %519, i32 0, i32 6
  %521 = load i32, i32* %520, align 8
  %522 = call i32 @ReleaseBuffer(i32 %521)
  br label %523

523:                                              ; preds = %518, %512
  %524 = load i32, i32* @InvalidBuffer, align 4
  %525 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %526 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %525, i32 0, i32 6
  store i32 %524, i32* %526, align 8
  %527 = load i64, i64* @InvalidBlockNumber, align 8
  %528 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %528, i32 0, i32 4
  store i64 %527, i64* %529, align 8
  %530 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %531 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %530, i32 0, i32 0
  store i32* null, i32** %531, align 8
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 0
  store i32 0, i32* %533, align 8
  br label %571

534:                                              ; preds = %509
  %535 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %536 = ptrtoint %struct.TYPE_10__* %535 to i32
  %537 = load i64, i64* %12, align 8
  %538 = call i32 @heapgetpage(i32 %536, i64 %537)
  %539 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %540 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %539, i32 0, i32 6
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %543 = call i32 @LockBuffer(i32 %541, i32 %542)
  %544 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %545 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %544, i32 0, i32 6
  %546 = load i32, i32* %545, align 8
  %547 = call i64 @BufferGetPage(i32 %546)
  store i64 %547, i64* %14, align 8
  %548 = load i32, i32* %10, align 4
  %549 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %550 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %549, i32 0, i32 5
  %551 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = load i64, i64* %14, align 8
  %554 = call i32 @TestForOldSnapshot(i32 %548, i32 %552, i64 %553)
  %555 = load i64, i64* %14, align 8
  %556 = call i32 @PageGetMaxOffsetNumber(i64 %555)
  store i32 %556, i32* %15, align 4
  %557 = load i32, i32* %15, align 4
  store i32 %557, i32* %17, align 4
  %558 = load i32, i32* %11, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %565

560:                                              ; preds = %534
  %561 = load i32, i32* %15, align 4
  store i32 %561, i32* %16, align 4
  %562 = load i64, i64* %14, align 8
  %563 = load i32, i32* %15, align 4
  %564 = call i64 @PageGetItemId(i64 %562, i32 %563)
  store i64 %564, i64* %18, align 8
  br label %570

565:                                              ; preds = %534
  %566 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %566, i32* %16, align 4
  %567 = load i64, i64* %14, align 8
  %568 = load i32, i32* @FirstOffsetNumber, align 4
  %569 = call i64 @PageGetItemId(i64 %567, i32 %568)
  store i64 %569, i64* %18, align 8
  br label %570

570:                                              ; preds = %565, %560
  br label %309

571:                                              ; preds = %523, %370, %272, %247, %166, %86, %48
  ret void
}

declare dso_local i32 @ScanDirectionIsBackward(i32) #1

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @table_block_parallelscan_startblock_init(i32, i32) #1

declare dso_local i64 @table_block_parallelscan_nextpage(i32, i32) #1

declare dso_local i32 @heapgetpage(i32, i64) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i64) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32 @OffsetNumberPrev(i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @PageGetItemId(i64, i32) #1

declare dso_local i32 @ItemIdIsNormal(i64) #1

declare dso_local i64 @PageGetItem(i64, i64) #1

declare dso_local i8* @ItemIdGetLength(i64) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i32) #1

declare dso_local i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @CheckForSerializableConflictOut(i32, i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @HeapKeyTest(%struct.TYPE_9__*, i32, i32, i32*, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @ss_report_location(i32, i64) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
