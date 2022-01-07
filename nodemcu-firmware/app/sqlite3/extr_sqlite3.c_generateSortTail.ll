; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_generateSortTail.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_generateSortTail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.ExprList_item* }
%struct.ExprList_item = type { i64, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }

@OP_Gosub = common dso_local global i32 0, align 4
@SRT_Output = common dso_local global i32 0, align 4
@SRT_Coroutine = common dso_local global i32 0, align 4
@SORTFLAG_UseSorter = common dso_local global i32 0, align 4
@OP_Once = common dso_local global i32 0, align 4
@OP_OpenPseudo = common dso_local global i32 0, align 4
@OP_SorterSort = common dso_local global i32 0, align 4
@OP_SorterData = common dso_local global i32 0, align 4
@OP_Sort = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_ResultRow = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@OP_SorterNext = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_21__*, i32, %struct.TYPE_22__*)* @generateSortTail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateSortTail(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, %struct.TYPE_21__* %2, i32 %3, %struct.TYPE_22__* %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.ExprList_item*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %10, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @sqlite3VdbeMakeLabel(i32* %37)
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %17, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %18, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %19, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load %struct.ExprList_item*, %struct.ExprList_item** %51, align 8
  store %struct.ExprList_item* %52, %struct.ExprList_item** %28, align 8
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %5
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @OP_Gosub, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sqlite3VdbeAddOp2(i32* %62, i32 %63, i32 %66, i32 %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @sqlite3VdbeGoto(i32* %71, i32 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sqlite3VdbeResolveLabel(i32* %74, i32 %77)
  br label %79

79:                                               ; preds = %61, %5
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* @SRT_Output, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* @SRT_Coroutine, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %18, align 4
  %92 = icmp eq i32 %91, 130
  br i1 %92, label %93, label %98

93:                                               ; preds = %90, %86, %79
  store i32 0, i32* %21, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %25, align 4
  br label %105

98:                                               ; preds = %90
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %100 = call i32 @sqlite3GetTempReg(%struct.TYPE_24__* %99)
  store i32 %100, i32* %21, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @sqlite3GetTempRange(%struct.TYPE_24__* %101, i32 %102)
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %25, align 4
  br label %105

105:                                              ; preds = %98, %93
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  store i32 %112, i32* %23, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %175

119:                                              ; preds = %105
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  store i32 %123, i32* %29, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  store i32 %126, i32* %24, align 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %119
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* @OP_Once, align 4
  %135 = call i32 @sqlite3VdbeAddOp0(i32* %133, i32 %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @VdbeCoverage(i32* %136)
  br label %138

138:                                              ; preds = %132, %119
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* @OP_OpenPseudo, align 4
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* %29, align 4
  %143 = load i32, i32* %23, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %144, %145
  %147 = call i32 @sqlite3VdbeAddOp3(i32* %139, i32 %140, i32 %141, i32 %142, i32 %146)
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %138
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @sqlite3VdbeJumpHere(i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %138
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* @OP_SorterSort, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @sqlite3VdbeAddOp2(i32* %155, i32 %156, i32 %157, i32 %158)
  %160 = add nsw i32 1, %159
  store i32 %160, i32* %14, align 4
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @VdbeCoverage(i32* %161)
  %163 = load i32*, i32** %11, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @codeOffset(i32* %163, i32 %166, i32 %167)
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* @OP_SorterData, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %29, align 4
  %173 = load i32, i32* %24, align 4
  %174 = call i32 @sqlite3VdbeAddOp3(i32* %169, i32 %170, i32 %171, i32 %172, i32 %173)
  store i32 0, i32* %27, align 4
  br label %191

175:                                              ; preds = %105
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* @OP_Sort, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @sqlite3VdbeAddOp2(i32* %176, i32 %177, i32 %178, i32 %179)
  %181 = add nsw i32 1, %180
  store i32 %181, i32* %14, align 4
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @VdbeCoverage(i32* %182)
  %184 = load i32*, i32** %11, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @codeOffset(i32* %184, i32 %187, i32 %188)
  %190 = load i32, i32* %16, align 4
  store i32 %190, i32* %24, align 4
  store i32 1, i32* %27, align 4
  br label %191

191:                                              ; preds = %175, %154
  store i32 0, i32* %26, align 4
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* %27, align 4
  %194 = add nsw i32 %192, %193
  store i32 %194, i32* %22, align 4
  br label %195

195:                                              ; preds = %257, %191
  %196 = load i32, i32* %26, align 4
  %197 = load i32, i32* %25, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %260

199:                                              ; preds = %195
  %200 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %201 = load i32, i32* %26, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %200, i64 %202
  %204 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %199
  %210 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %211 = load i32, i32* %26, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %210, i64 %212
  %214 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %217, 1
  store i32 %218, i32* %30, align 4
  br label %222

219:                                              ; preds = %199
  %220 = load i32, i32* %22, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %22, align 4
  store i32 %220, i32* %30, align 4
  br label %222

222:                                              ; preds = %219, %209
  %223 = load i32*, i32** %11, align 8
  %224 = load i32, i32* @OP_Column, align 4
  %225 = load i32, i32* %24, align 4
  %226 = load i32, i32* %30, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %26, align 4
  %229 = add nsw i32 %227, %228
  %230 = call i32 @sqlite3VdbeAddOp3(i32* %223, i32 %224, i32 %225, i32 %226, i32 %229)
  %231 = load i32*, i32** %11, align 8
  %232 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %233 = load i32, i32* %26, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %232, i64 %234
  %236 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %222
  %240 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %241 = load i32, i32* %26, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %240, i64 %242
  %244 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  br label %253

246:                                              ; preds = %222
  %247 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %248 = load i32, i32* %26, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %247, i64 %249
  %251 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  br label %253

253:                                              ; preds = %246, %239
  %254 = phi i64 [ %245, %239 ], [ %252, %246 ]
  %255 = inttoptr i64 %254 to i32*
  %256 = call i32 @VdbeComment(i32* %255)
  br label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %26, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %26, align 4
  br label %195

260:                                              ; preds = %195
  %261 = load i32, i32* %18, align 4
  switch i32 %261, label %308 [
    i32 128, label %262
    i32 131, label %262
    i32 129, label %277
    i32 130, label %307
  ]

262:                                              ; preds = %260, %260
  %263 = load i32*, i32** %11, align 8
  %264 = load i32, i32* @OP_NewRowid, align 4
  %265 = load i32, i32* %19, align 4
  %266 = load i32, i32* %21, align 4
  %267 = call i32 @sqlite3VdbeAddOp2(i32* %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32*, i32** %11, align 8
  %269 = load i32, i32* @OP_Insert, align 4
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* %21, align 4
  %273 = call i32 @sqlite3VdbeAddOp3(i32* %268, i32 %269, i32 %270, i32 %271, i32 %272)
  %274 = load i32*, i32** %11, align 8
  %275 = load i32, i32* @OPFLAG_APPEND, align 4
  %276 = call i32 @sqlite3VdbeChangeP5(i32* %274, i32 %275)
  br label %355

277:                                              ; preds = %260
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @sqlite3Strlen30(i32 %281)
  %283 = icmp eq i32 %278, %282
  %284 = zext i1 %283 to i32
  %285 = call i32 @assert(i32 %284)
  %286 = load i32*, i32** %11, align 8
  %287 = load i32, i32* @OP_MakeRecord, align 4
  %288 = load i32, i32* %20, align 4
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* %21, align 4
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %9, align 4
  %295 = call i32 @sqlite3VdbeAddOp4(i32* %286, i32 %287, i32 %288, i32 %289, i32 %290, i32 %293, i32 %294)
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %297 = load i32, i32* %20, align 4
  %298 = load i32, i32* %9, align 4
  %299 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_24__* %296, i32 %297, i32 %298)
  %300 = load i32*, i32** %11, align 8
  %301 = load i32, i32* @OP_IdxInsert, align 4
  %302 = load i32, i32* %19, align 4
  %303 = load i32, i32* %21, align 4
  %304 = load i32, i32* %20, align 4
  %305 = load i32, i32* %9, align 4
  %306 = call i32 @sqlite3VdbeAddOp4Int(i32* %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305)
  br label %355

307:                                              ; preds = %260
  br label %355

308:                                              ; preds = %260
  %309 = load i32, i32* %18, align 4
  %310 = load i32, i32* @SRT_Output, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = load i32, i32* %18, align 4
  %314 = load i32, i32* @SRT_Coroutine, align 4
  %315 = icmp eq i32 %313, %314
  br label %316

316:                                              ; preds = %312, %308
  %317 = phi i1 [ true, %308 ], [ %315, %312 ]
  %318 = zext i1 %317 to i32
  %319 = call i32 @assert(i32 %318)
  %320 = load i32, i32* %18, align 4
  %321 = load i32, i32* @SRT_Output, align 4
  %322 = icmp eq i32 %320, %321
  %323 = zext i1 %322 to i32
  %324 = call i32 @testcase(i32 %323)
  %325 = load i32, i32* %18, align 4
  %326 = load i32, i32* @SRT_Coroutine, align 4
  %327 = icmp eq i32 %325, %326
  %328 = zext i1 %327 to i32
  %329 = call i32 @testcase(i32 %328)
  %330 = load i32, i32* %18, align 4
  %331 = load i32, i32* @SRT_Output, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %347

333:                                              ; preds = %316
  %334 = load i32*, i32** %11, align 8
  %335 = load i32, i32* @OP_ResultRow, align 4
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %9, align 4
  %340 = call i32 @sqlite3VdbeAddOp2(i32* %334, i32 %335, i32 %338, i32 %339)
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %9, align 4
  %346 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_24__* %341, i32 %344, i32 %345)
  br label %354

347:                                              ; preds = %316
  %348 = load i32*, i32** %11, align 8
  %349 = load i32, i32* @OP_Yield, align 4
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @sqlite3VdbeAddOp1(i32* %348, i32 %349, i32 %352)
  br label %354

354:                                              ; preds = %347, %333
  br label %355

355:                                              ; preds = %354, %307, %277, %262
  %356 = load i32, i32* %21, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %374

358:                                              ; preds = %355
  %359 = load i32, i32* %18, align 4
  %360 = icmp eq i32 %359, 129
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %363 = load i32, i32* %20, align 4
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_24__* %362, i32 %363, i32 %364)
  br label %370

366:                                              ; preds = %358
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %368 = load i32, i32* %20, align 4
  %369 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %367, i32 %368)
  br label %370

370:                                              ; preds = %366, %361
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %372 = load i32, i32* %21, align 4
  %373 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %371, i32 %372)
  br label %374

374:                                              ; preds = %370, %355
  %375 = load i32*, i32** %11, align 8
  %376 = load i32, i32* %13, align 4
  %377 = call i32 @sqlite3VdbeResolveLabel(i32* %375, i32 %376)
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %392

384:                                              ; preds = %374
  %385 = load i32*, i32** %11, align 8
  %386 = load i32, i32* @OP_SorterNext, align 4
  %387 = load i32, i32* %16, align 4
  %388 = load i32, i32* %14, align 4
  %389 = call i32 @sqlite3VdbeAddOp2(i32* %385, i32 %386, i32 %387, i32 %388)
  %390 = load i32*, i32** %11, align 8
  %391 = call i32 @VdbeCoverage(i32* %390)
  br label %400

392:                                              ; preds = %374
  %393 = load i32*, i32** %11, align 8
  %394 = load i32, i32* @OP_Next, align 4
  %395 = load i32, i32* %16, align 4
  %396 = load i32, i32* %14, align 4
  %397 = call i32 @sqlite3VdbeAddOp2(i32* %393, i32 %394, i32 %395, i32 %396)
  %398 = load i32*, i32** %11, align 8
  %399 = call i32 @VdbeCoverage(i32* %398)
  br label %400

400:                                              ; preds = %392, %384
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %412

405:                                              ; preds = %400
  %406 = load i32*, i32** %11, align 8
  %407 = load i32, i32* @OP_Return, align 4
  %408 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @sqlite3VdbeAddOp1(i32* %406, i32 %407, i32 %410)
  br label %412

412:                                              ; preds = %405, %400
  %413 = load i32*, i32** %11, align 8
  %414 = load i32, i32* %12, align 4
  %415 = call i32 @sqlite3VdbeResolveLabel(i32* %413, i32 %414)
  ret void
}

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @codeOffset(i32*, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3Strlen30(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
