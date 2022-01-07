; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_generateSortTail.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_generateSortTail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@SRT_Output = common dso_local global i32 0, align 4
@SRT_Coroutine = common dso_local global i32 0, align 4
@OP_OpenPseudo = common dso_local global i32 0, align 4
@SF_UseSorter = common dso_local global i32 0, align 4
@OP_SorterSort = common dso_local global i32 0, align 4
@OP_SorterData = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OPFLAG_CLEARCACHE = common dso_local global i32 0, align 4
@OP_Sort = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_ResultRow = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@OP_SorterNext = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32, %struct.TYPE_13__*)* @generateSortTail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateSortTail(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @sqlite3VdbeMakeLabel(i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @sqlite3VdbeMakeLabel(i32* %26)
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %16, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %18, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = call i32 @sqlite3GetTempReg(%struct.TYPE_15__* %40)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* @SRT_Output, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %5
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @SRT_Coroutine, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45, %5
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @OP_OpenPseudo, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @sqlite3VdbeAddOp3(i32* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 0, i32* %20, align 4
  br label %63

60:                                               ; preds = %45
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = call i32 @sqlite3GetTempReg(%struct.TYPE_15__* %61)
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %60, %49
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SF_UseSorter, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %63
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  store i32 %74, i32* %21, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  store i32 %77, i32* %22, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @OP_OpenPseudo, align 4
  %81 = load i32, i32* %22, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 2
  %87 = call i32 @sqlite3VdbeAddOp3(i32* %79, i32 %80, i32 %81, i32 %82, i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* @OP_SorterSort, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @sqlite3VdbeAddOp2(i32* %88, i32 %89, i32 %90, i32 %91)
  %93 = add nsw i32 1, %92
  store i32 %93, i32* %13, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @codeOffset(i32* %94, %struct.TYPE_14__* %95, i32 %96)
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* @OP_SorterData, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %21, align 4
  %102 = call i32 @sqlite3VdbeAddOp2(i32* %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* @OP_Column, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @sqlite3VdbeAddOp3(i32* %103, i32 %104, i32 %105, i32 %109, i32 %110)
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @OPFLAG_CLEARCACHE, align 4
  %114 = call i32 @sqlite3VdbeChangeP5(i32* %112, i32 %113)
  br label %135

115:                                              ; preds = %63
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* @OP_Sort, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @sqlite3VdbeAddOp2(i32* %116, i32 %117, i32 %118, i32 %119)
  %121 = add nsw i32 1, %120
  store i32 %121, i32* %13, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @codeOffset(i32* %122, %struct.TYPE_14__* %123, i32 %124)
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* @OP_Column, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @sqlite3VdbeAddOp3(i32* %126, i32 %127, i32 %128, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %115, %70
  %136 = load i32, i32* %17, align 4
  switch i32 %136, label %189 [
    i32 128, label %137
    i32 131, label %137
    i32 129, label %160
    i32 130, label %180
  ]

137:                                              ; preds = %135, %135
  %138 = load i32, i32* %17, align 4
  %139 = icmp eq i32 %138, 128
  %140 = zext i1 %139 to i32
  %141 = call i32 @testcase(i32 %140)
  %142 = load i32, i32* %17, align 4
  %143 = icmp eq i32 %142, 131
  %144 = zext i1 %143 to i32
  %145 = call i32 @testcase(i32 %144)
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* @OP_NewRowid, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %20, align 4
  %150 = call i32 @sqlite3VdbeAddOp2(i32* %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* @OP_Insert, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %20, align 4
  %156 = call i32 @sqlite3VdbeAddOp3(i32* %151, i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* @OPFLAG_APPEND, align 4
  %159 = call i32 @sqlite3VdbeChangeP5(i32* %157, i32 %158)
  br label %271

160:                                              ; preds = %135
  %161 = load i32, i32* %9, align 4
  %162 = icmp eq i32 %161, 1
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* @OP_MakeRecord, align 4
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %20, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 3
  %171 = call i32 @sqlite3VdbeAddOp4(i32* %165, i32 %166, i32 %167, i32 1, i32 %168, i32* %170, i32 1)
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = load i32, i32* %19, align 4
  %174 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_15__* %172, i32 %173, i32 1)
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* @OP_IdxInsert, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %20, align 4
  %179 = call i32 @sqlite3VdbeAddOp2(i32* %175, i32 %176, i32 %177, i32 %178)
  br label %271

180:                                              ; preds = %135
  %181 = load i32, i32* %9, align 4
  %182 = icmp eq i32 %181, 1
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %18, align 4
  %188 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_15__* %185, i32 %186, i32 %187, i32 1)
  br label %271

189:                                              ; preds = %135
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* @SRT_Output, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* @SRT_Coroutine, align 4
  %196 = icmp eq i32 %194, %195
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i1 [ true, %189 ], [ %196, %193 ]
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* @SRT_Output, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @testcase(i32 %204)
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* @SRT_Coroutine, align 4
  %208 = icmp eq i32 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @testcase(i32 %209)
  store i32 0, i32* %23, align 4
  br label %211

211:                                              ; preds = %242, %197
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %245

215:                                              ; preds = %211
  %216 = load i32, i32* %19, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %23, align 4
  %221 = add nsw i32 %219, %220
  %222 = icmp ne i32 %216, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* @OP_Column, align 4
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* %23, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %23, align 4
  %233 = add nsw i32 %231, %232
  %234 = call i32 @sqlite3VdbeAddOp3(i32* %225, i32 %226, i32 %227, i32 %228, i32 %233)
  %235 = load i32, i32* %23, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %215
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* @OPFLAG_CLEARCACHE, align 4
  %240 = call i32 @sqlite3VdbeChangeP5(i32* %238, i32 %239)
  br label %241

241:                                              ; preds = %237, %215
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %23, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %23, align 4
  br label %211

245:                                              ; preds = %211
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* @SRT_Output, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %263

249:                                              ; preds = %245
  %250 = load i32*, i32** %8, align 8
  %251 = load i32, i32* @OP_ResultRow, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @sqlite3VdbeAddOp2(i32* %250, i32 %251, i32 %254, i32 %255)
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_15__* %257, i32 %260, i32 %261)
  br label %270

263:                                              ; preds = %245
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* @OP_Yield, align 4
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @sqlite3VdbeAddOp1(i32* %264, i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %263, %249
  br label %271

271:                                              ; preds = %270, %180, %160, %137
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %273 = load i32, i32* %19, align 4
  %274 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_15__* %272, i32 %273)
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %276 = load i32, i32* %20, align 4
  %277 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_15__* %275, i32 %276)
  %278 = load i32*, i32** %8, align 8
  %279 = load i32, i32* %12, align 4
  %280 = call i32 @sqlite3VdbeResolveLabel(i32* %278, i32 %279)
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @SF_UseSorter, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %271
  %288 = load i32*, i32** %8, align 8
  %289 = load i32, i32* @OP_SorterNext, align 4
  %290 = load i32, i32* %14, align 4
  %291 = load i32, i32* %13, align 4
  %292 = call i32 @sqlite3VdbeAddOp2(i32* %288, i32 %289, i32 %290, i32 %291)
  br label %299

293:                                              ; preds = %271
  %294 = load i32*, i32** %8, align 8
  %295 = load i32, i32* @OP_Next, align 4
  %296 = load i32, i32* %14, align 4
  %297 = load i32, i32* %13, align 4
  %298 = call i32 @sqlite3VdbeAddOp2(i32* %294, i32 %295, i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %293, %287
  %300 = load i32*, i32** %8, align 8
  %301 = load i32, i32* %11, align 4
  %302 = call i32 @sqlite3VdbeResolveLabel(i32* %300, i32 %301)
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* @SRT_Output, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %310, label %306

306:                                              ; preds = %299
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* @SRT_Coroutine, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %306, %299
  %311 = load i32*, i32** %8, align 8
  %312 = load i32, i32* @OP_Close, align 4
  %313 = load i32, i32* %15, align 4
  %314 = call i32 @sqlite3VdbeAddOp2(i32* %311, i32 %312, i32 %313, i32 0)
  br label %315

315:                                              ; preds = %310, %306
  ret void
}

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @codeOffset(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeMove(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
