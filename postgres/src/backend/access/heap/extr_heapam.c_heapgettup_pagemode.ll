; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heapgettup_pagemode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heapgettup_pagemode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i32, i32, i64*, %struct.TYPE_6__, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32*, i32, i8* }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@SO_ALLOW_SYNC = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32*)* @heapgettup_pagemode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heapgettup_pagemode(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 10
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ScanDirectionIsBackward(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @ScanDirectionIsForward(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %134

29:                                               ; preds = %4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %105, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @BufferIsValid(i32 %47)
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %561

55:                                               ; preds = %39
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %94

61:                                               ; preds = %55
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = ptrtoint i32* %65 to i32
  store i32 %66, i32* %19, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @table_block_parallelscan_startblock_init(i32 %70, i32 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %19, align 4
  %78 = call i64 @table_block_parallelscan_nextpage(i32 %76, i32 %77)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @InvalidBlockNumber, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %61
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @BufferIsValid(i32 %85)
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %561

93:                                               ; preds = %61
  br label %98

94:                                               ; preds = %55
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %94, %93
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = ptrtoint %struct.TYPE_8__* %99 to i32
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @heapgetpage(i32 %100, i64 %101)
  store i32 0, i32* %15, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %113

105:                                              ; preds = %29
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %11, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %105, %98
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @BufferGetPage(i32 %116)
  store i64 %117, i64* %13, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @TestForOldSnapshot(i32 %121, i32 %125, i64 %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %17, align 4
  br label %324

134:                                              ; preds = %4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %236

137:                                              ; preds = %134
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 @Assert(i32 %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %197, label %149

149:                                              ; preds = %137
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154, %149
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @BufferIsValid(i32 %162)
  %164 = icmp ne i64 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i32 @Assert(i32 %166)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  store i32* null, i32** %169, align 8
  br label %561

170:                                              ; preds = %154
  %171 = load i32, i32* @SO_ALLOW_SYNC, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %172
  store i32 %177, i32* %175, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %170
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %185, 1
  store i64 %186, i64* %11, align 8
  br label %192

187:                                              ; preds = %170
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %190, 1
  store i64 %191, i64* %11, align 8
  br label %192

192:                                              ; preds = %187, %182
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %194 = ptrtoint %struct.TYPE_8__* %193 to i32
  %195 = load i64, i64* %11, align 8
  %196 = call i32 @heapgetpage(i32 %194, i64 %195)
  br label %201

197:                                              ; preds = %137
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %11, align 8
  br label %201

201:                                              ; preds = %197, %192
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @BufferGetPage(i32 %204)
  store i64 %205, i64* %13, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i64, i64* %13, align 8
  %215 = call i32 @TestForOldSnapshot(i32 %209, i32 %213, i64 %214)
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %14, align 4
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %201
  %224 = load i32, i32* %14, align 4
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %15, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  br label %233

228:                                              ; preds = %201
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  br label %233

233:                                              ; preds = %228, %223
  %234 = load i32, i32* %15, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %17, align 4
  br label %323

236:                                              ; preds = %134
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %252, label %241

241:                                              ; preds = %236
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = call i64 @BufferIsValid(i32 %244)
  %246 = icmp ne i64 %245, 0
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = call i32 @Assert(i32 %248)
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  store i32* null, i32** %251, align 8
  br label %561

252:                                              ; preds = %236
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 1
  %255 = call i64 @ItemPointerGetBlockNumber(i32* %254)
  store i64 %255, i64* %11, align 8
  %256 = load i64, i64* %11, align 8
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %256, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %252
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %263 = ptrtoint %struct.TYPE_8__* %262 to i32
  %264 = load i64, i64* %11, align 8
  %265 = call i32 @heapgetpage(i32 %263, i64 %264)
  br label %266

266:                                              ; preds = %261, %252
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 9
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @BufferGetPage(i32 %269)
  store i64 %270, i64* %13, align 8
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i64, i64* %13, align 8
  %280 = call i32 @TestForOldSnapshot(i32 %274, i32 %278, i64 %279)
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 1
  %283 = call i64 @ItemPointerGetOffsetNumber(i32* %282)
  store i64 %283, i64* %16, align 8
  %284 = load i64, i64* %13, align 8
  %285 = load i64, i64* %16, align 8
  %286 = call i32 @PageGetItemId(i64 %284, i64 %285)
  store i32 %286, i32* %18, align 4
  %287 = load i32, i32* %18, align 4
  %288 = call i32 @ItemIdIsNormal(i32 %287)
  %289 = call i32 @Assert(i32 %288)
  %290 = load i64, i64* %13, align 8
  %291 = load i32, i32* %18, align 4
  %292 = call i64 @PageGetItem(i64 %290, i32 %291)
  %293 = inttoptr i64 %292 to i8*
  %294 = bitcast i8* %293 to i32*
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  store i32* %294, i32** %296, align 8
  %297 = load i32, i32* %18, align 4
  %298 = call i8* @ItemIdGetLength(i32 %297)
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 2
  store i8* %298, i8** %300, align 8
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 4
  %307 = icmp slt i32 %303, %306
  %308 = zext i1 %307 to i32
  %309 = call i32 @Assert(i32 %308)
  %310 = load i64, i64* %16, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 7
  %313 = load i64*, i64** %312, align 8
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %313, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = icmp eq i64 %310, %319
  %321 = zext i1 %320 to i32
  %322 = call i32 @Assert(i32 %321)
  br label %561

323:                                              ; preds = %233
  br label %324

324:                                              ; preds = %323, %113
  br label %325

325:                                              ; preds = %560, %324
  br label %326

326:                                              ; preds = %394, %325
  %327 = load i32, i32* %17, align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %395

329:                                              ; preds = %326
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 7
  %332 = load i64*, i64** %331, align 8
  %333 = load i32, i32* %15, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64, i64* %332, i64 %334
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %16, align 8
  %337 = load i64, i64* %13, align 8
  %338 = load i64, i64* %16, align 8
  %339 = call i32 @PageGetItemId(i64 %337, i64 %338)
  store i32 %339, i32* %18, align 4
  %340 = load i32, i32* %18, align 4
  %341 = call i32 @ItemIdIsNormal(i32 %340)
  %342 = call i32 @Assert(i32 %341)
  %343 = load i64, i64* %13, align 8
  %344 = load i32, i32* %18, align 4
  %345 = call i64 @PageGetItem(i64 %343, i32 %344)
  %346 = inttoptr i64 %345 to i8*
  %347 = bitcast i8* %346 to i32*
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  store i32* %347, i32** %349, align 8
  %350 = load i32, i32* %18, align 4
  %351 = call i8* @ItemIdGetLength(i32 %350)
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 2
  store i8* %351, i8** %353, align 8
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 1
  %356 = load i64, i64* %11, align 8
  %357 = load i64, i64* %16, align 8
  %358 = call i32 @ItemPointerSet(i32* %355, i64 %356, i64 %357)
  %359 = load i32*, i32** %8, align 8
  %360 = icmp ne i32* %359, null
  br i1 %360, label %361, label %379

361:                                              ; preds = %329
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @RelationGetDescr(i32 %366)
  %368 = load i32, i32* %7, align 4
  %369 = load i32*, i32** %8, align 8
  %370 = load i32, i32* %20, align 4
  %371 = call i32 @HeapKeyTest(%struct.TYPE_7__* %362, i32 %367, i32 %368, i32* %369, i32 %370)
  %372 = load i32, i32* %20, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %361
  %375 = load i32, i32* %15, align 4
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 5
  store i32 %375, i32* %377, align 8
  br label %561

378:                                              ; preds = %361
  br label %383

379:                                              ; preds = %329
  %380 = load i32, i32* %15, align 4
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 5
  store i32 %380, i32* %382, align 8
  br label %561

383:                                              ; preds = %378
  %384 = load i32, i32* %17, align 4
  %385 = add nsw i32 %384, -1
  store i32 %385, i32* %17, align 4
  %386 = load i32, i32* %10, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %383
  %389 = load i32, i32* %15, align 4
  %390 = add nsw i32 %389, -1
  store i32 %390, i32* %15, align 4
  br label %394

391:                                              ; preds = %383
  %392 = load i32, i32* %15, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %15, align 4
  br label %394

394:                                              ; preds = %391, %388
  br label %326

395:                                              ; preds = %326
  %396 = load i32, i32* %10, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %433

398:                                              ; preds = %395
  %399 = load i64, i64* %11, align 8
  %400 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 3
  %402 = load i64, i64* %401, align 8
  %403 = icmp eq i64 %399, %402
  br i1 %403, label %421, label %404

404:                                              ; preds = %398
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @InvalidBlockNumber, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %417

410:                                              ; preds = %404
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = add nsw i64 %413, -1
  store i64 %414, i64* %412, align 8
  %415 = icmp eq i64 %414, 0
  %416 = zext i1 %415 to i32
  br label %418

417:                                              ; preds = %404
  br label %418

418:                                              ; preds = %417, %410
  %419 = phi i32 [ %416, %410 ], [ 0, %417 ]
  %420 = icmp ne i32 %419, 0
  br label %421

421:                                              ; preds = %418, %398
  %422 = phi i1 [ true, %398 ], [ %420, %418 ]
  %423 = zext i1 %422 to i32
  store i32 %423, i32* %12, align 4
  %424 = load i64, i64* %11, align 8
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %421
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %11, align 8
  br label %430

430:                                              ; preds = %426, %421
  %431 = load i64, i64* %11, align 8
  %432 = add nsw i64 %431, -1
  store i64 %432, i64* %11, align 8
  br label %506

433:                                              ; preds = %395
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 8
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 3
  %437 = load i32*, i32** %436, align 8
  %438 = icmp ne i32* %437, null
  br i1 %438, label %439, label %455

439:                                              ; preds = %433
  %440 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i32 0, i32 8
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 3
  %443 = load i32*, i32** %442, align 8
  %444 = ptrtoint i32* %443 to i32
  store i32 %444, i32* %21, align 4
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 8
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* %21, align 4
  %450 = call i64 @table_block_parallelscan_nextpage(i32 %448, i32 %449)
  store i64 %450, i64* %11, align 8
  %451 = load i64, i64* %11, align 8
  %452 = load i64, i64* @InvalidBlockNumber, align 8
  %453 = icmp eq i64 %451, %452
  %454 = zext i1 %453 to i32
  store i32 %454, i32* %12, align 4
  br label %505

455:                                              ; preds = %433
  %456 = load i64, i64* %11, align 8
  %457 = add nsw i64 %456, 1
  store i64 %457, i64* %11, align 8
  %458 = load i64, i64* %11, align 8
  %459 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = icmp sge i64 %458, %461
  br i1 %462, label %463, label %464

463:                                              ; preds = %455
  store i64 0, i64* %11, align 8
  br label %464

464:                                              ; preds = %463, %455
  %465 = load i64, i64* %11, align 8
  %466 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 3
  %468 = load i64, i64* %467, align 8
  %469 = icmp eq i64 %465, %468
  br i1 %469, label %487, label %470

470:                                              ; preds = %464
  %471 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 2
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @InvalidBlockNumber, align 8
  %475 = icmp ne i64 %473, %474
  br i1 %475, label %476, label %483

476:                                              ; preds = %470
  %477 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = add nsw i64 %479, -1
  store i64 %480, i64* %478, align 8
  %481 = icmp eq i64 %480, 0
  %482 = zext i1 %481 to i32
  br label %484

483:                                              ; preds = %470
  br label %484

484:                                              ; preds = %483, %476
  %485 = phi i32 [ %482, %476 ], [ 0, %483 ]
  %486 = icmp ne i32 %485, 0
  br label %487

487:                                              ; preds = %484, %464
  %488 = phi i1 [ true, %464 ], [ %486, %484 ]
  %489 = zext i1 %488 to i32
  store i32 %489, i32* %12, align 4
  %490 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 8
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = load i32, i32* @SO_ALLOW_SYNC, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %504

497:                                              ; preds = %487
  %498 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %498, i32 0, i32 8
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 4
  %502 = load i64, i64* %11, align 8
  %503 = call i32 @ss_report_location(i32 %501, i64 %502)
  br label %504

504:                                              ; preds = %497, %487
  br label %505

505:                                              ; preds = %504, %439
  br label %506

506:                                              ; preds = %505, %430
  %507 = load i32, i32* %12, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %531

509:                                              ; preds = %506
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 9
  %512 = load i32, i32* %511, align 8
  %513 = call i64 @BufferIsValid(i32 %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %509
  %516 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 9
  %518 = load i32, i32* %517, align 8
  %519 = call i32 @ReleaseBuffer(i32 %518)
  br label %520

520:                                              ; preds = %515, %509
  %521 = load i32, i32* @InvalidBuffer, align 4
  %522 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %522, i32 0, i32 9
  store i32 %521, i32* %523, align 8
  %524 = load i64, i64* @InvalidBlockNumber, align 8
  %525 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %526 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %525, i32 0, i32 4
  store i64 %524, i64* %526, align 8
  %527 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %528 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %527, i32 0, i32 0
  store i32* null, i32** %528, align 8
  %529 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %530 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %529, i32 0, i32 0
  store i32 0, i32* %530, align 8
  br label %561

531:                                              ; preds = %506
  %532 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %533 = ptrtoint %struct.TYPE_8__* %532 to i32
  %534 = load i64, i64* %11, align 8
  %535 = call i32 @heapgetpage(i32 %533, i64 %534)
  %536 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 9
  %538 = load i32, i32* %537, align 8
  %539 = call i64 @BufferGetPage(i32 %538)
  store i64 %539, i64* %13, align 8
  %540 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 8
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %545 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %544, i32 0, i32 8
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  %548 = load i64, i64* %13, align 8
  %549 = call i32 @TestForOldSnapshot(i32 %543, i32 %547, i64 %548)
  %550 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %550, i32 0, i32 6
  %552 = load i32, i32* %551, align 4
  store i32 %552, i32* %14, align 4
  %553 = load i32, i32* %14, align 4
  store i32 %553, i32* %17, align 4
  %554 = load i32, i32* %10, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %559

556:                                              ; preds = %531
  %557 = load i32, i32* %14, align 4
  %558 = sub nsw i32 %557, 1
  store i32 %558, i32* %15, align 4
  br label %560

559:                                              ; preds = %531
  store i32 0, i32* %15, align 4
  br label %560

560:                                              ; preds = %559, %556
  br label %325

561:                                              ; preds = %520, %379, %374, %266, %241, %159, %82, %44
  ret void
}

declare dso_local i32 @ScanDirectionIsBackward(i32) #1

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @table_block_parallelscan_startblock_init(i32, i32) #1

declare dso_local i64 @table_block_parallelscan_nextpage(i32, i32) #1

declare dso_local i32 @heapgetpage(i32, i64) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i64) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @PageGetItemId(i64, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i64, i32) #1

declare dso_local i8* @ItemIdGetLength(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i64) #1

declare dso_local i32 @HeapKeyTest(%struct.TYPE_7__*, i32, i32, i32*, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @ss_report_location(i32, i64) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
