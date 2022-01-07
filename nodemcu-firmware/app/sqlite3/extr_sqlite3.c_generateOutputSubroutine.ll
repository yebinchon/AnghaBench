; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_generateOutputSubroutine.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_generateOutputSubroutine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i8* }

@OP_IfNot = common dso_local global i32 0, align 4
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@SRT_Exists = common dso_local global i32 0, align 4
@SRT_Table = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@SRT_Output = common dso_local global i32 0, align 4
@OP_ResultRow = common dso_local global i32 0, align 4
@OP_DecrJumpZero = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32*, i32)* @generateOutputSubroutine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generateOutputSubroutine(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %18, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = call i32 @sqlite3VdbeCurrentAddr(i32* %29)
  store i32 %30, i32* %20, align 4
  %31 = load i32*, i32** %18, align 8
  %32 = call i32 @sqlite3VdbeMakeLabel(i32* %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %8
  %36 = load i32*, i32** %18, align 8
  %37 = load i32, i32* @OP_IfNot, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @sqlite3VdbeAddOp1(i32* %36, i32 %37, i32 %38)
  store i32 %39, i32* %21, align 4
  %40 = load i32*, i32** %18, align 8
  %41 = call i32 @VdbeCoverage(i32* %40)
  %42 = load i32*, i32** %18, align 8
  %43 = load i32, i32* @OP_Compare, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = call i64 @sqlite3KeyInfoRef(i32* %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* @P4_KEYINFO, align 4
  %56 = call i32 @sqlite3VdbeAddOp4(i32* %42, i32 %43, i32 %46, i32 %48, i32 %51, i8* %54, i32 %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32*, i32** %18, align 8
  %58 = load i32, i32* @OP_Jump, align 4
  %59 = load i32, i32* %22, align 4
  %60 = add nsw i32 %59, 2
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %22, align 4
  %63 = add nsw i32 %62, 2
  %64 = call i32 @sqlite3VdbeAddOp3(i32* %57, i32 %58, i32 %60, i32 %61, i32 %63)
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 @VdbeCoverage(i32* %65)
  %67 = load i32*, i32** %18, align 8
  %68 = load i32, i32* %21, align 4
  %69 = call i32 @sqlite3VdbeJumpHere(i32* %67, i32 %68)
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* @OP_Copy, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @sqlite3VdbeAddOp3(i32* %70, i32 %71, i32 %74, i32 %76, i32 %80)
  %82 = load i32*, i32** %18, align 8
  %83 = load i32, i32* @OP_Integer, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @sqlite3VdbeAddOp2(i32* %82, i32 %83, i32 1, i32 %84)
  br label %86

86:                                               ; preds = %35, %8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %319

94:                                               ; preds = %86
  %95 = load i32*, i32** %18, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @codeOffset(i32* %95, i32 %98, i32 %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SRT_Exists, align 4
  %105 = icmp ne i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SRT_Table, align 4
  %112 = icmp ne i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %270 [
    i32 130, label %118
    i32 128, label %157
    i32 129, label %206
    i32 131, label %234
  ]

118:                                              ; preds = %94
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = call i32 @sqlite3GetTempReg(%struct.TYPE_17__* %119)
  store i32 %120, i32* %23, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %122 = call i32 @sqlite3GetTempReg(%struct.TYPE_17__* %121)
  store i32 %122, i32* %24, align 4
  %123 = load i32*, i32** %18, align 8
  %124 = load i32, i32* @OP_MakeRecord, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %23, align 4
  %132 = call i32 @sqlite3VdbeAddOp3(i32* %123, i32 %124, i32 %127, i32 %130, i32 %131)
  %133 = load i32*, i32** %18, align 8
  %134 = load i32, i32* @OP_NewRowid, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %24, align 4
  %139 = call i32 @sqlite3VdbeAddOp2(i32* %133, i32 %134, i32 %137, i32 %138)
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* @OP_Insert, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @sqlite3VdbeAddOp3(i32* %140, i32 %141, i32 %144, i32 %145, i32 %146)
  %148 = load i32*, i32** %18, align 8
  %149 = load i32, i32* @OPFLAG_APPEND, align 4
  %150 = call i32 @sqlite3VdbeChangeP5(i32* %148, i32 %149)
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = load i32, i32* %24, align 4
  %153 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__* %151, i32 %152)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = load i32, i32* %23, align 4
  %156 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__* %154, i32 %155)
  br label %295

157:                                              ; preds = %94
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp sgt i32 %160, 1
  %162 = zext i1 %161 to i32
  %163 = call i32 @testcase(i32 %162)
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %165 = call i32 @sqlite3GetTempReg(%struct.TYPE_17__* %164)
  store i32 %165, i32* %25, align 4
  %166 = load i32*, i32** %18, align 8
  %167 = load i32, i32* @OP_MakeRecord, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @sqlite3VdbeAddOp4(i32* %166, i32 %167, i32 %170, i32 %173, i32 %174, i8* %177, i32 %180)
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_17__* %182, i32 %185, i32 %188)
  %190 = load i32*, i32** %18, align 8
  %191 = load i32, i32* @OP_IdxInsert, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %25, align 4
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @sqlite3VdbeAddOp4Int(i32* %190, i32 %191, i32 %194, i32 %195, i32 %198, i32 %201)
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %204 = load i32, i32* %25, align 4
  %205 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__* %203, i32 %204)
  br label %295

206:                                              ; preds = %94
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sgt i32 %214, 0
  br label %216

216:                                              ; preds = %211, %206
  %217 = phi i1 [ true, %206 ], [ %215, %211 ]
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 1
  %224 = zext i1 %223 to i32
  %225 = call i32 @testcase(i32 %224)
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_17__* %226, i32 %229, i32 %232, i32 1)
  br label %295

234:                                              ; preds = %94
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %234
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @sqlite3GetTempRange(%struct.TYPE_17__* %240, i32 %243)
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %239, %234
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_17__* %253, i32 %256, i32 %259, i32 %262)
  %264 = load i32*, i32** %18, align 8
  %265 = load i32, i32* @OP_Yield, align 4
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @sqlite3VdbeAddOp1(i32* %264, i32 %265, i32 %268)
  br label %295

270:                                              ; preds = %94
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @SRT_Output, align 4
  %275 = icmp eq i32 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load i32*, i32** %18, align 8
  %279 = load i32, i32* @OP_ResultRow, align 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @sqlite3VdbeAddOp2(i32* %278, i32 %279, i32 %282, i32 %285)
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_17__* %287, i32 %290, i32 %293)
  br label %295

295:                                              ; preds = %270, %252, %216, %157, %118
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %310

300:                                              ; preds = %295
  %301 = load i32*, i32** %18, align 8
  %302 = load i32, i32* @OP_DecrJumpZero, align 4
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %17, align 4
  %307 = call i32 @sqlite3VdbeAddOp2(i32* %301, i32 %302, i32 %305, i32 %306)
  %308 = load i32*, i32** %18, align 8
  %309 = call i32 @VdbeCoverage(i32* %308)
  br label %310

310:                                              ; preds = %300, %295
  %311 = load i32*, i32** %18, align 8
  %312 = load i32, i32* %19, align 4
  %313 = call i32 @sqlite3VdbeResolveLabel(i32* %311, i32 %312)
  %314 = load i32*, i32** %18, align 8
  %315 = load i32, i32* @OP_Return, align 4
  %316 = load i32, i32* %14, align 4
  %317 = call i32 @sqlite3VdbeAddOp1(i32* %314, i32 %315, i32 %316)
  %318 = load i32, i32* %20, align 4
  store i32 %318, i32* %9, align 4
  br label %319

319:                                              ; preds = %310, %93
  %320 = load i32, i32* %9, align 4
  ret i32 %320
}

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @sqlite3KeyInfoRef(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @codeOffset(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeMove(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
