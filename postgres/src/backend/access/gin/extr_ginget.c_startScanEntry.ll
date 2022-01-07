; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_startScanEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_startScanEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32, i64, i32, i32*, i32, i32 }
%struct.TYPE_24__ = type { i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)* }
%struct.TYPE_23__ = type { i32, i32, i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@GIN_CAT_EMPTY_QUERY = common dso_local global i32 0, align 4
@GIN_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_22__*, i32)* @startScanEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @startScanEntry(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %16

16:                                               ; preds = %111, %3
  %17 = load i32, i32* @InvalidBuffer, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 15
  %22 = call i32 @ItemPointerSetMin(i32* %21)
  %23 = load i32, i32* @InvalidOffsetNumber, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @pfree(i32* %33)
  br label %35

35:                                               ; preds = %30, %16
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 5
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 8
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 13
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = call i32 @ginPrepareEntryScan(%struct.TYPE_24__* %7, i32 %50, i32 %53, i32 %56, %struct.TYPE_21__* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call %struct.TYPE_23__* @ginFindLeafPage(%struct.TYPE_24__* %7, i32 1, i32 0, i32 %59)
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %8, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BufferGetPage(i32 %63)
  store i32 %64, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 11
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %35
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @GIN_CAT_EMPTY_QUERY, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %140

77:                                               ; preds = %71, %35
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %79 = load i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)** %78, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %81 = call i64 %79(%struct.TYPE_24__* %7, %struct.TYPE_23__* %80)
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @collectMatchBitmap(%struct.TYPE_24__* %7, %struct.TYPE_23__* %82, %struct.TYPE_22__* %83, i32 %84)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %77
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 8
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 9
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 9
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @tbm_end_iterate(i32* %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 9
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 8
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @tbm_free(i32* %107)
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 8
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %102, %87
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @GIN_UNLOCK, align 4
  %116 = call i32 @LockBuffer(i32 %114, i32 %115)
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %118 = call i32 @freeGinBtreeStack(%struct.TYPE_23__* %117)
  br label %16

119:                                              ; preds = %77
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 8
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 8
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @tbm_is_empty(i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %124
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 8
  %133 = load i32*, i32** %132, align 8
  %134 = call i32* @tbm_begin_iterate(i32* %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 9
  store i32* %134, i32** %136, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 3
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %130, %124, %119
  br label %262

140:                                              ; preds = %71
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %142 = load i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)** %141, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %144 = call i64 %142(%struct.TYPE_24__* %7, %struct.TYPE_23__* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %251

146:                                              ; preds = %140
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @PageGetItemId(i32 %148, i32 %151)
  %153 = call i32 @PageGetItem(i32 %147, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i64 @GinIsPostingTree(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %218

157:                                              ; preds = %146
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @GinGetPostingTree(i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @PredicateLockPage(i32 %162, i32 %163, i32 %164)
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @GIN_UNLOCK, align 4
  %170 = call i32 @LockBuffer(i32 %168, i32 %169)
  store i32 0, i32* %10, align 4
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call %struct.TYPE_23__* @ginScanBeginPostingTree(i32* %172, i32 %175, i32 %176, i32 %177)
  store %struct.TYPE_23__* %178, %struct.TYPE_23__** %13, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @IncrBufferRefCount(i32 %186)
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @BufferGetPage(i32 %190)
  store i32 %191, i32* %14, align 4
  %192 = call i32 @ItemPointerSetMin(i32* %15)
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32, i32* %15, align 4
  %197 = call i32* @GinDataLeafPageGetItems(i32 %193, i32* %195, i32 %196)
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 5
  store i32* %197, i32** %199, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %202, %205
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @GIN_UNLOCK, align 4
  %213 = call i32 @LockBuffer(i32 %211, i32 %212)
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %215 = call i32 @freeGinBtreeStack(%struct.TYPE_23__* %214)
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 3
  store i32 0, i32* %217, align 4
  br label %250

218:                                              ; preds = %146
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @BufferGetBlockNumber(i32 %224)
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @PredicateLockPage(i32 %221, i32 %225, i32 %226)
  %228 = load i32, i32* %11, align 4
  %229 = call i64 @GinGetNPosting(i32 %228)
  %230 = icmp sgt i64 %229, 0
  br i1 %230, label %231, label %249

231:                                              ; preds = %218
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 0
  %239 = call i32* @ginReadTuple(%struct.TYPE_21__* %232, i32 %235, i32 %236, i32* %238)
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 5
  store i32* %239, i32** %241, align 8
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 3
  store i32 0, i32* %248, align 4
  br label %249

249:                                              ; preds = %231, %218
  br label %250

250:                                              ; preds = %249, %157
  br label %261

251:                                              ; preds = %140
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @BufferGetBlockNumber(i32 %257)
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @PredicateLockPage(i32 %254, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %251, %250
  br label %262

262:                                              ; preds = %261, %139
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %262
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @GIN_UNLOCK, align 4
  %270 = call i32 @LockBuffer(i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %265, %262
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %273 = call i32 @freeGinBtreeStack(%struct.TYPE_23__* %272)
  ret void
}

declare dso_local i32 @ItemPointerSetMin(i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @ginPrepareEntryScan(%struct.TYPE_24__*, i32, i32, i32, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_23__* @ginFindLeafPage(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @collectMatchBitmap(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @tbm_end_iterate(i32*) #1

declare dso_local i32 @tbm_free(i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @freeGinBtreeStack(%struct.TYPE_23__*) #1

declare dso_local i32 @tbm_is_empty(i32*) #1

declare dso_local i32* @tbm_begin_iterate(i32*) #1

declare dso_local i32 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i64 @GinIsPostingTree(i32) #1

declare dso_local i32 @GinGetPostingTree(i32) #1

declare dso_local i32 @PredicateLockPage(i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @ginScanBeginPostingTree(i32*, i32, i32, i32) #1

declare dso_local i32 @IncrBufferRefCount(i32) #1

declare dso_local i32* @GinDataLeafPageGetItems(i32, i32*, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i64 @GinGetNPosting(i32) #1

declare dso_local i32* @ginReadTuple(%struct.TYPE_21__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
