; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_generateOutputSubroutine.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_generateOutputSubroutine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i8 }

@OP_IfNot = common dso_local global i32 0, align 4
@OP_Compare = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@SRT_Output = common dso_local global i32 0, align 4
@OP_ResultRow = common dso_local global i32 0, align 4
@OP_IfZero = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32, i32*, i32, i32)* @generateOutputSubroutine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generateOutputSubroutine(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
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
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %20, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = call i32 @sqlite3VdbeCurrentAddr(i32* %31)
  store i32 %32, i32* %22, align 4
  %33 = load i32*, i32** %20, align 8
  %34 = call i32 @sqlite3VdbeMakeLabel(i32* %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %83

37:                                               ; preds = %9
  %38 = load i32*, i32** %20, align 8
  %39 = load i32, i32* @OP_IfNot, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @sqlite3VdbeAddOp1(i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %23, align 4
  %42 = load i32*, i32** %20, align 8
  %43 = load i32, i32* @OP_Compare, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %17, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @sqlite3VdbeAddOp4(i32* %42, i32 %43, i32 %46, i32 %48, i32 %51, i8* %53, i32 %54)
  store i32 %55, i32* %24, align 4
  %56 = load i32*, i32** %20, align 8
  %57 = load i32, i32* @OP_Jump, align 4
  %58 = load i32, i32* %24, align 4
  %59 = add nsw i32 %58, 2
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %24, align 4
  %62 = add nsw i32 %61, 2
  %63 = call i32 @sqlite3VdbeAddOp3(i32* %56, i32 %57, i32 %59, i32 %60, i32 %62)
  %64 = load i32*, i32** %20, align 8
  %65 = load i32, i32* %23, align 4
  %66 = call i32 @sqlite3VdbeJumpHere(i32* %64, i32 %65)
  %67 = load i32*, i32** %20, align 8
  %68 = load i32, i32* @OP_Copy, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call i32 @sqlite3VdbeAddOp3(i32* %67, i32 %68, i32 %71, i32 %73, i32 %77)
  %79 = load i32*, i32** %20, align 8
  %80 = load i32, i32* @OP_Integer, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @sqlite3VdbeAddOp2(i32* %79, i32 %80, i32 1, i32 %81)
  br label %83

83:                                               ; preds = %37, %9
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %295

91:                                               ; preds = %83
  %92 = load i32*, i32** %20, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %94 = load i32, i32* %21, align 4
  %95 = call i32 @codeOffset(i32* %92, %struct.TYPE_21__* %93, i32 %94)
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %248 [
    i32 128, label %99
    i32 132, label %99
    i32 129, label %150
    i32 130, label %197
    i32 133, label %212
  ]

99:                                               ; preds = %91, %91
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %101 = call i32 @sqlite3GetTempReg(%struct.TYPE_22__* %100)
  store i32 %101, i32* %25, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %103 = call i32 @sqlite3GetTempReg(%struct.TYPE_22__* %102)
  store i32 %103, i32* %26, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 128
  %108 = zext i1 %107 to i32
  %109 = call i32 @testcase(i32 %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 132
  %114 = zext i1 %113 to i32
  %115 = call i32 @testcase(i32 %114)
  %116 = load i32*, i32** %20, align 8
  %117 = load i32, i32* @OP_MakeRecord, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %25, align 4
  %125 = call i32 @sqlite3VdbeAddOp3(i32* %116, i32 %117, i32 %120, i32 %123, i32 %124)
  %126 = load i32*, i32** %20, align 8
  %127 = load i32, i32* @OP_NewRowid, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %26, align 4
  %132 = call i32 @sqlite3VdbeAddOp2(i32* %126, i32 %127, i32 %130, i32 %131)
  %133 = load i32*, i32** %20, align 8
  %134 = load i32, i32* @OP_Insert, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %25, align 4
  %139 = load i32, i32* %26, align 4
  %140 = call i32 @sqlite3VdbeAddOp3(i32* %133, i32 %134, i32 %137, i32 %138, i32 %139)
  %141 = load i32*, i32** %20, align 8
  %142 = load i32, i32* @OPFLAG_APPEND, align 4
  %143 = call i32 @sqlite3VdbeChangeP5(i32* %141, i32 %142)
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %145 = load i32, i32* %26, align 4
  %146 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_22__* %144, i32 %145)
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %148 = load i32, i32* %25, align 4
  %149 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_22__* %147, i32 %148)
  br label %273

150:                                              ; preds = %91
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 1
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 4
  %167 = load i8, i8* %166, align 4
  %168 = call signext i8 @sqlite3CompareAffinity(i32 %164, i8 signext %167)
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 4
  store i8 %168, i8* %170, align 4
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %172 = call i32 @sqlite3GetTempReg(%struct.TYPE_22__* %171)
  store i32 %172, i32* %27, align 4
  %173 = load i32*, i32** %20, align 8
  %174 = load i32, i32* @OP_MakeRecord, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %27, align 4
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 4
  %181 = call i32 @sqlite3VdbeAddOp4(i32* %173, i32 %174, i32 %177, i32 1, i32 %178, i8* %180, i32 1)
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_22__* %182, i32 %185, i32 1)
  %187 = load i32*, i32** %20, align 8
  %188 = load i32, i32* @OP_IdxInsert, align 4
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %27, align 4
  %193 = call i32 @sqlite3VdbeAddOp2(i32* %187, i32 %188, i32 %191, i32 %192)
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %195 = load i32, i32* %27, align 4
  %196 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_22__* %194, i32 %195)
  br label %273

197:                                              ; preds = %91
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 1
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_22__* %204, i32 %207, i32 %210, i32 1)
  br label %273

212:                                              ; preds = %91
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %212
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @sqlite3GetTempRange(%struct.TYPE_22__* %218, i32 %221)
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %217, %212
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_22__* %231, i32 %234, i32 %237, i32 %240)
  %242 = load i32*, i32** %20, align 8
  %243 = load i32, i32* @OP_Yield, align 4
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @sqlite3VdbeAddOp1(i32* %242, i32 %243, i32 %246)
  br label %273

248:                                              ; preds = %91
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @SRT_Output, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  %256 = load i32*, i32** %20, align 8
  %257 = load i32, i32* @OP_ResultRow, align 4
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @sqlite3VdbeAddOp2(i32* %256, i32 %257, i32 %260, i32 %263)
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_22__* %265, i32 %268, i32 %271)
  br label %273

273:                                              ; preds = %248, %230, %197, %150, %99
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %273
  %279 = load i32*, i32** %20, align 8
  %280 = load i32, i32* @OP_IfZero, align 4
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %19, align 4
  %285 = call i32 @sqlite3VdbeAddOp3(i32* %279, i32 %280, i32 %283, i32 %284, i32 -1)
  br label %286

286:                                              ; preds = %278, %273
  %287 = load i32*, i32** %20, align 8
  %288 = load i32, i32* %21, align 4
  %289 = call i32 @sqlite3VdbeResolveLabel(i32* %287, i32 %288)
  %290 = load i32*, i32** %20, align 8
  %291 = load i32, i32* @OP_Return, align 4
  %292 = load i32, i32* %15, align 4
  %293 = call i32 @sqlite3VdbeAddOp1(i32* %290, i32 %291, i32 %292)
  %294 = load i32, i32* %22, align 4
  store i32 %294, i32* %10, align 4
  br label %295

295:                                              ; preds = %286, %90
  %296 = load i32, i32* %10, align 4
  ret i32 %296
}

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @codeOffset(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_22__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local signext i8 @sqlite3CompareAffinity(i32, i8 signext) #1

declare dso_local i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeMove(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
