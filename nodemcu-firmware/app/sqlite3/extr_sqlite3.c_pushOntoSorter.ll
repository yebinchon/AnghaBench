; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pushOntoSorter.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pushOntoSorter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32 }

@SORTFLAG_UseSorter = common dso_local global i32 0, align 4
@SQLITE_ECEL_DUP = common dso_local global i32 0, align 4
@SQLITE_ECEL_REF = common dso_local global i32 0, align 4
@OP_Sequence = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IfNot = common dso_local global i32 0, align 4
@OP_SequenceTest = common dso_local global i32 0, align 4
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Gosub = common dso_local global i32 0, align 4
@OP_ResetSorter = common dso_local global i32 0, align 4
@OP_SorterInsert = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_IfNotZero = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@OP_Delete = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@SQLITE_NULLEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32, i32, i32)* @pushOntoSorter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushOntoSorter(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_21__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_25__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %15, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %18, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  store i32 %56, i32* %20, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %7
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, 1
  br label %65

65:                                               ; preds = %62, %7
  %66 = phi i1 [ true, %7 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br label %78

78:                                               ; preds = %75, %71, %65
  %79 = phi i1 [ true, %71 ], [ true, %65 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp eq i32 %85, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %17, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %16, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %19, align 4
  br label %107

97:                                               ; preds = %78
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %97, %84
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ true, %107 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  br label %135

130:                                              ; preds = %117
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  br label %135

135:                                              ; preds = %130, %125
  %136 = phi i64 [ %129, %125 ], [ %134, %130 ]
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %23, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = call i8* @sqlite3VdbeMakeLabel(i32* %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 7
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @SQLITE_ECEL_DUP, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %135
  %153 = load i32, i32* @SQLITE_ECEL_REF, align 4
  br label %155

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = or i32 %149, %156
  %158 = call i32 @sqlite3ExprCodeExprList(%struct.TYPE_24__* %143, %struct.TYPE_18__* %146, i32 %147, i32 %148, i32 %157)
  %159 = load i32, i32* %16, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load i32*, i32** %15, align 8
  %163 = load i32, i32* @OP_Sequence, align 4
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i32 @sqlite3VdbeAddOp2(i32* %162, i32 %163, i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %161, %155
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = load i32, i32* %13, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_24__* %178, i32 %179, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %177, %174, %171
  %188 = load i32*, i32** %15, align 8
  %189 = load i32, i32* @OP_MakeRecord, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %21, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* %20, align 4
  %197 = call i32 @sqlite3VdbeAddOp3(i32* %188, i32 %189, i32 %192, i32 %195, i32 %196)
  %198 = load i32, i32* %21, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %362

200:                                              ; preds = %187
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %24, align 4
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* %17, align 4
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %212, %215
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %216, %217
  store i32 %218, i32* %28, align 4
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %200
  %222 = load i32*, i32** %15, align 8
  %223 = load i32, i32* @OP_IfNot, align 4
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %224, %225
  %227 = call i32 @sqlite3VdbeAddOp1(i32* %222, i32 %223, i32 %226)
  store i32 %227, i32* %25, align 4
  br label %235

228:                                              ; preds = %200
  %229 = load i32*, i32** %15, align 8
  %230 = load i32, i32* @OP_SequenceTest, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @sqlite3VdbeAddOp1(i32* %229, i32 %230, i32 %233)
  store i32 %234, i32* %25, align 4
  br label %235

235:                                              ; preds = %228, %221
  %236 = load i32*, i32** %15, align 8
  %237 = call i32 @VdbeCoverage(i32* %236)
  %238 = load i32*, i32** %15, align 8
  %239 = load i32, i32* @OP_Compare, align 4
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* %19, align 4
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @sqlite3VdbeAddOp3(i32* %238, i32 %239, i32 %240, i32 %241, i32 %244)
  %246 = load i32*, i32** %15, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 8
  %250 = call %struct.TYPE_21__* @sqlite3VdbeGetOp(i32* %246, i32 %249)
  store %struct.TYPE_21__* %250, %struct.TYPE_21__** %27, align 8
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %235
  br label %453

258:                                              ; preds = %235
  %259 = load i32, i32* %28, align 4
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %259, %260
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %266, align 8
  store %struct.TYPE_25__* %267, %struct.TYPE_25__** %29, align 8
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @memset(i32 %270, i32 0, i32 %273)
  %275 = load i32*, i32** %15, align 8
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %277 = bitcast %struct.TYPE_25__* %276 to i8*
  %278 = load i32, i32* @P4_KEYINFO, align 4
  %279 = call i32 @sqlite3VdbeChangeP4(i32* %275, i32 -1, i8* %277, i32 %278)
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = icmp sgt i32 %282, 2
  %284 = zext i1 %283 to i32
  %285 = call i32 @testcase(i32 %284)
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 7
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %288, align 8
  %290 = load i32, i32* %21, align 4
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %293, 1
  %295 = call %struct.TYPE_25__* @keyInfoFromExprList(%struct.TYPE_24__* %286, %struct.TYPE_18__* %289, i32 %290, i32 %294)
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 0
  store %struct.TYPE_25__* %295, %struct.TYPE_25__** %298, align 8
  %299 = load i32*, i32** %15, align 8
  %300 = call i32 @sqlite3VdbeCurrentAddr(i32* %299)
  store i32 %300, i32* %26, align 4
  %301 = load i32*, i32** %15, align 8
  %302 = load i32, i32* @OP_Jump, align 4
  %303 = load i32, i32* %26, align 4
  %304 = add nsw i32 %303, 1
  %305 = load i32, i32* %26, align 4
  %306 = add nsw i32 %305, 1
  %307 = call i32 @sqlite3VdbeAddOp3(i32* %301, i32 %302, i32 %304, i32 0, i32 %306)
  %308 = load i32*, i32** %15, align 8
  %309 = call i32 @VdbeCoverage(i32* %308)
  %310 = load i32*, i32** %15, align 8
  %311 = call i8* @sqlite3VdbeMakeLabel(i32* %310)
  %312 = ptrtoint i8* %311 to i32
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 4
  store i32 %312, i32* %314, align 8
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 8
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 5
  store i32 %318, i32* %320, align 4
  %321 = load i32*, i32** %15, align 8
  %322 = load i32, i32* @OP_Gosub, align 4
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @sqlite3VdbeAddOp2(i32* %321, i32 %322, i32 %325, i32 %328)
  %330 = load i32*, i32** %15, align 8
  %331 = load i32, i32* @OP_ResetSorter, align 4
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @sqlite3VdbeAddOp1(i32* %330, i32 %331, i32 %334)
  %336 = load i32, i32* %23, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %348

338:                                              ; preds = %258
  %339 = load i32*, i32** %15, align 8
  %340 = load i32, i32* @OP_IfNot, align 4
  %341 = load i32, i32* %23, align 4
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @sqlite3VdbeAddOp2(i32* %339, i32 %340, i32 %341, i32 %344)
  %346 = load i32*, i32** %15, align 8
  %347 = call i32 @VdbeCoverage(i32* %346)
  br label %348

348:                                              ; preds = %338, %258
  %349 = load i32*, i32** %15, align 8
  %350 = load i32, i32* %25, align 4
  %351 = call i32 @sqlite3VdbeJumpHere(i32* %349, i32 %350)
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %353 = load i32, i32* %19, align 4
  %354 = load i32, i32* %24, align 4
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_24__* %352, i32 %353, i32 %354, i32 %357)
  %359 = load i32*, i32** %15, align 8
  %360 = load i32, i32* %26, align 4
  %361 = call i32 @sqlite3VdbeJumpHere(i32* %359, i32 %360)
  br label %362

362:                                              ; preds = %348, %187
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %362
  %370 = load i32, i32* @OP_SorterInsert, align 4
  store i32 %370, i32* %22, align 4
  br label %373

371:                                              ; preds = %362
  %372 = load i32, i32* @OP_IdxInsert, align 4
  store i32 %372, i32* %22, align 4
  br label %373

373:                                              ; preds = %371, %369
  %374 = load i32*, i32** %15, align 8
  %375 = load i32, i32* %22, align 4
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* %19, align 4
  %381 = load i32, i32* %21, align 4
  %382 = add nsw i32 %380, %381
  %383 = load i32, i32* %18, align 4
  %384 = load i32, i32* %21, align 4
  %385 = sub nsw i32 %383, %384
  %386 = call i32 @sqlite3VdbeAddOp4Int(i32* %374, i32 %375, i32 %378, i32 %379, i32 %382, i32 %385)
  %387 = load i32, i32* %23, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %453

389:                                              ; preds = %373
  store i32 0, i32* %31, align 4
  %390 = load i32*, i32** %15, align 8
  %391 = load i32, i32* @OP_IfNotZero, align 4
  %392 = load i32, i32* %23, align 4
  %393 = call i32 @sqlite3VdbeAddOp1(i32* %390, i32 %391, i32 %392)
  store i32 %393, i32* %30, align 4
  %394 = load i32*, i32** %15, align 8
  %395 = call i32 @VdbeCoverage(i32* %394)
  %396 = load i32*, i32** %15, align 8
  %397 = load i32, i32* @OP_Last, align 4
  %398 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @sqlite3VdbeAddOp1(i32* %396, i32 %397, i32 %400)
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 6
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %421

406:                                              ; preds = %389
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %408, align 8
  store i32 %410, i32* %31, align 4
  %411 = load i32*, i32** %15, align 8
  %412 = load i32, i32* @OP_Column, align 4
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* %17, align 4
  %417 = load i32, i32* %31, align 4
  %418 = call i32 @sqlite3VdbeAddOp3(i32* %411, i32 %412, i32 %415, i32 %416, i32 %417)
  %419 = load i32*, i32** %15, align 8
  %420 = call i32 @VdbeComment(i32* bitcast ([4 x i8]* @.str to i32*))
  br label %421

421:                                              ; preds = %406, %389
  %422 = load i32*, i32** %15, align 8
  %423 = load i32, i32* @OP_Delete, align 4
  %424 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @sqlite3VdbeAddOp1(i32* %422, i32 %423, i32 %426)
  %428 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 6
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %449

432:                                              ; preds = %421
  %433 = load i32*, i32** %15, align 8
  %434 = call i32 @sqlite3VdbeCurrentAddr(i32* %433)
  %435 = add nsw i32 %434, 2
  store i32 %435, i32* %32, align 4
  %436 = load i32*, i32** %15, align 8
  %437 = load i32, i32* @OP_Eq, align 4
  %438 = load i32, i32* %19, align 4
  %439 = load i32, i32* %17, align 4
  %440 = add nsw i32 %438, %439
  %441 = load i32, i32* %32, align 4
  %442 = load i32, i32* %31, align 4
  %443 = call i32 @sqlite3VdbeAddOp3(i32* %436, i32 %437, i32 %440, i32 %441, i32 %442)
  %444 = load i32*, i32** %15, align 8
  %445 = load i32, i32* @SQLITE_NULLEQ, align 4
  %446 = call i32 @sqlite3VdbeChangeP5(i32* %444, i32 %445)
  %447 = load i32*, i32** %15, align 8
  %448 = call i32 @VdbeCoverage(i32* %447)
  br label %449

449:                                              ; preds = %432, %421
  %450 = load i32*, i32** %15, align 8
  %451 = load i32, i32* %30, align 4
  %452 = call i32 @sqlite3VdbeJumpHere(i32* %450, i32 %451)
  br label %453

453:                                              ; preds = %257, %449, %373
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_24__*, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeMove(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local %struct.TYPE_21__* @sqlite3VdbeGetOp(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_25__* @keyInfoFromExprList(%struct.TYPE_24__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
