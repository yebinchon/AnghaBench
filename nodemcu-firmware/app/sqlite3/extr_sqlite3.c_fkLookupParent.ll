; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_fkLookupParent.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_fkLookupParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_23__* }

@OP_FkIfZero = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@OP_MustBeInt = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@SQLITE_NOTNULL = common dso_local global i32 0, align 4
@OP_OpenRead = common dso_local global i32 0, align 4
@OP_NotExists = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_Ne = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_Found = common dso_local global i32 0, align 4
@SQLITE_DeferFKs = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT_FOREIGNKEY = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@P4_STATIC = common dso_local global i32 0, align 4
@P5_ConstraintFK = common dso_local global i32 0, align 4
@OP_FkCounter = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32, %struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_26__*, i32*, i32, i32, i32)* @fkLookupParent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fkLookupParent(%struct.TYPE_24__* %0, i32 %1, %struct.TYPE_23__* %2, %struct.TYPE_25__* %3, %struct.TYPE_26__* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %33 = call i32* @sqlite3GetVdbe(%struct.TYPE_24__* %32)
  store i32* %33, i32** %20, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %21, align 4
  %38 = load i32*, i32** %20, align 8
  %39 = call i32 @sqlite3VdbeMakeLabel(i32* %38)
  store i32 %39, i32* %22, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %9
  %43 = load i32*, i32** %20, align 8
  %44 = load i32, i32* @OP_FkIfZero, align 4
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %22, align 4
  %49 = call i32 @sqlite3VdbeAddOp2(i32* %43, i32 %44, i32 %47, i32 %48)
  %50 = load i32*, i32** %20, align 8
  %51 = call i32 @VdbeCoverage(i32* %50)
  br label %52

52:                                               ; preds = %42, %9
  store i32 0, i32* %19, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %19, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %64, %65
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %23, align 4
  %68 = load i32*, i32** %20, align 8
  %69 = load i32, i32* @OP_IsNull, align 4
  %70 = load i32, i32* %23, align 4
  %71 = load i32, i32* %22, align 4
  %72 = call i32 @sqlite3VdbeAddOp2(i32* %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32*, i32** %20, align 8
  %74 = call i32 @VdbeCoverage(i32* %73)
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %19, align 4
  br label %53

78:                                               ; preds = %53
  %79 = load i32, i32* %18, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %313

81:                                               ; preds = %78
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %83 = icmp eq %struct.TYPE_25__* %82, null
  br i1 %83, label %84, label %151

84:                                               ; preds = %81
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %86 = call i32 @sqlite3GetTempReg(%struct.TYPE_24__* %85)
  store i32 %86, i32* %25, align 4
  %87 = load i32*, i32** %20, align 8
  %88 = load i32, i32* @OP_SCopy, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %25, align 4
  %96 = call i32 @sqlite3VdbeAddOp2(i32* %87, i32 %88, i32 %94, i32 %95)
  %97 = load i32*, i32** %20, align 8
  %98 = load i32, i32* @OP_MustBeInt, align 4
  %99 = load i32, i32* %25, align 4
  %100 = call i32 @sqlite3VdbeAddOp2(i32* %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %24, align 4
  %101 = load i32*, i32** %20, align 8
  %102 = call i32 @VdbeCoverage(i32* %101)
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = icmp eq %struct.TYPE_23__* %103, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %84
  %109 = load i32, i32* %17, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i32*, i32** %20, align 8
  %113 = load i32, i32* @OP_Eq, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %25, align 4
  %117 = call i32 @sqlite3VdbeAddOp3(i32* %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32*, i32** %20, align 8
  %119 = call i32 @VdbeCoverage(i32* %118)
  %120 = load i32*, i32** %20, align 8
  %121 = load i32, i32* @SQLITE_NOTNULL, align 4
  %122 = call i32 @sqlite3VdbeChangeP5(i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %111, %108, %84
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %128 = load i32, i32* @OP_OpenRead, align 4
  %129 = call i32 @sqlite3OpenTable(%struct.TYPE_24__* %124, i32 %125, i32 %126, %struct.TYPE_23__* %127, i32 %128)
  %130 = load i32*, i32** %20, align 8
  %131 = load i32, i32* @OP_NotExists, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %25, align 4
  %134 = call i32 @sqlite3VdbeAddOp3(i32* %130, i32 %131, i32 %132, i32 0, i32 %133)
  %135 = load i32*, i32** %20, align 8
  %136 = call i32 @VdbeCoverage(i32* %135)
  %137 = load i32*, i32** %20, align 8
  %138 = load i32, i32* %22, align 4
  %139 = call i32 @sqlite3VdbeGoto(i32* %137, i32 %138)
  %140 = load i32*, i32** %20, align 8
  %141 = load i32*, i32** %20, align 8
  %142 = call i32 @sqlite3VdbeCurrentAddr(i32* %141)
  %143 = sub nsw i32 %142, 2
  %144 = call i32 @sqlite3VdbeJumpHere(i32* %140, i32 %143)
  %145 = load i32*, i32** %20, align 8
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @sqlite3VdbeJumpHere(i32* %145, i32 %146)
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %149 = load i32, i32* %25, align 4
  %150 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %148, i32 %149)
  br label %312

151:                                              ; preds = %81
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %26, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %156 = load i32, i32* %26, align 4
  %157 = call i32 @sqlite3GetTempRange(%struct.TYPE_24__* %155, i32 %156)
  store i32 %157, i32* %27, align 4
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %159 = call i32 @sqlite3GetTempReg(%struct.TYPE_24__* %158)
  store i32 %159, i32* %28, align 4
  %160 = load i32*, i32** %20, align 8
  %161 = load i32, i32* @OP_OpenRead, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @sqlite3VdbeAddOp3(i32* %160, i32 %161, i32 %162, i32 %165, i32 %166)
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %170 = call i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_24__* %168, %struct.TYPE_25__* %169)
  store i32 0, i32* %19, align 4
  br label %171

171:                                              ; preds = %190, %151
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %26, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %171
  %176 = load i32*, i32** %20, align 8
  %177 = load i32, i32* @OP_Copy, align 4
  %178 = load i32*, i32** %15, align 8
  %179 = load i32, i32* %19, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* %27, align 4
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %186, %187
  %189 = call i32 @sqlite3VdbeAddOp2(i32* %176, i32 %177, i32 %185, i32 %188)
  br label %190

190:                                              ; preds = %175
  %191 = load i32, i32* %19, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %19, align 4
  br label %171

193:                                              ; preds = %171
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %196, align 8
  %198 = icmp eq %struct.TYPE_23__* %194, %197
  br i1 %198, label %199, label %284

199:                                              ; preds = %193
  %200 = load i32, i32* %17, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %284

202:                                              ; preds = %199
  %203 = load i32*, i32** %20, align 8
  %204 = call i32 @sqlite3VdbeCurrentAddr(i32* %203)
  %205 = load i32, i32* %26, align 4
  %206 = add nsw i32 %204, %205
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %29, align 4
  store i32 0, i32* %19, align 4
  br label %208

208:                                              ; preds = %277, %202
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* %26, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %280

212:                                              ; preds = %208
  %213 = load i32*, i32** %15, align 8
  %214 = load i32, i32* %19, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %218, %219
  store i32 %220, i32* %30, align 4
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  %229 = load i32, i32* %16, align 4
  %230 = add nsw i32 %228, %229
  store i32 %230, i32* %31, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp sge i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  %241 = load i32*, i32** %15, align 8
  %242 = load i32, i32* %19, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %245, %248
  %250 = zext i1 %249 to i32
  %251 = call i32 @assert(i32 %250)
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %19, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %258, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %212
  %264 = load i32, i32* %16, align 4
  store i32 %264, i32* %31, align 4
  br label %265

265:                                              ; preds = %263, %212
  %266 = load i32*, i32** %20, align 8
  %267 = load i32, i32* @OP_Ne, align 4
  %268 = load i32, i32* %30, align 4
  %269 = load i32, i32* %29, align 4
  %270 = load i32, i32* %31, align 4
  %271 = call i32 @sqlite3VdbeAddOp3(i32* %266, i32 %267, i32 %268, i32 %269, i32 %270)
  %272 = load i32*, i32** %20, align 8
  %273 = call i32 @VdbeCoverage(i32* %272)
  %274 = load i32*, i32** %20, align 8
  %275 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %276 = call i32 @sqlite3VdbeChangeP5(i32* %274, i32 %275)
  br label %277

277:                                              ; preds = %265
  %278 = load i32, i32* %19, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %19, align 4
  br label %208

280:                                              ; preds = %208
  %281 = load i32*, i32** %20, align 8
  %282 = load i32, i32* %22, align 4
  %283 = call i32 @sqlite3VdbeGoto(i32* %281, i32 %282)
  br label %284

284:                                              ; preds = %280, %199, %193
  %285 = load i32*, i32** %20, align 8
  %286 = load i32, i32* @OP_MakeRecord, align 4
  %287 = load i32, i32* %27, align 4
  %288 = load i32, i32* %26, align 4
  %289 = load i32, i32* %28, align 4
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 3
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %291, align 8
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %294 = call i32 @sqlite3IndexAffinityStr(%struct.TYPE_22__* %292, %struct.TYPE_25__* %293)
  %295 = load i32, i32* %26, align 4
  %296 = call i32 @sqlite3VdbeAddOp4(i32* %285, i32 %286, i32 %287, i32 %288, i32 %289, i32 %294, i32 %295)
  %297 = load i32*, i32** %20, align 8
  %298 = load i32, i32* @OP_Found, align 4
  %299 = load i32, i32* %21, align 4
  %300 = load i32, i32* %22, align 4
  %301 = load i32, i32* %28, align 4
  %302 = call i32 @sqlite3VdbeAddOp4Int(i32* %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 0)
  %303 = load i32*, i32** %20, align 8
  %304 = call i32 @VdbeCoverage(i32* %303)
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %306 = load i32, i32* %28, align 4
  %307 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %305, i32 %306)
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %309 = load i32, i32* %27, align 4
  %310 = load i32, i32* %26, align 4
  %311 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_24__* %308, i32 %309, i32 %310)
  br label %312

312:                                              ; preds = %284, %123
  br label %313

313:                                              ; preds = %312, %78
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %348, label %318

318:                                              ; preds = %313
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 3
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @SQLITE_DeferFKs, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %348, label %327

327:                                              ; preds = %318
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %348, label %332

332:                                              ; preds = %327
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %348, label %337

337:                                              ; preds = %332
  %338 = load i32, i32* %17, align 4
  %339 = icmp eq i32 %338, 1
  %340 = zext i1 %339 to i32
  %341 = call i32 @assert(i32 %340)
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %343 = load i32, i32* @SQLITE_CONSTRAINT_FOREIGNKEY, align 4
  %344 = load i32, i32* @OE_Abort, align 4
  %345 = load i32, i32* @P4_STATIC, align 4
  %346 = load i32, i32* @P5_ConstraintFK, align 4
  %347 = call i32 @sqlite3HaltConstraint(%struct.TYPE_24__* %342, i32 %343, i32 %344, i32 0, i32 %345, i32 %346)
  br label %367

348:                                              ; preds = %332, %327, %318, %313
  %349 = load i32, i32* %17, align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %348
  %352 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %358 = call i32 @sqlite3MayAbort(%struct.TYPE_24__* %357)
  br label %359

359:                                              ; preds = %356, %351, %348
  %360 = load i32*, i32** %20, align 8
  %361 = load i32, i32* @OP_FkCounter, align 4
  %362 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* %17, align 4
  %366 = call i32 @sqlite3VdbeAddOp2(i32* %360, i32 %361, i32 %364, i32 %365)
  br label %367

367:                                              ; preds = %359, %337
  %368 = load i32*, i32** %20, align 8
  %369 = load i32, i32* %22, align 4
  %370 = call i32 @sqlite3VdbeResolveLabel(i32* %368, i32 %369)
  %371 = load i32*, i32** %20, align 8
  %372 = load i32, i32* @OP_Close, align 4
  %373 = load i32, i32* %21, align 4
  %374 = call i32 @sqlite3VdbeAddOp1(i32* %371, i32 %372, i32 %373)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3OpenTable(%struct.TYPE_24__*, i32, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3IndexAffinityStr(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @sqlite3HaltConstraint(%struct.TYPE_24__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
