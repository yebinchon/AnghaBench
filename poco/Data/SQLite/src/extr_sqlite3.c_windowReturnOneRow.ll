; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowReturnOneRow.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowReturnOneRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32*, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_14__*, %struct.TYPE_13__*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@nth_valueName = common dso_local global i64 0, align 8
@first_valueName = common dso_local global i64 0, align 8
@OP_Null = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@OP_Add = common dso_local global i32 0, align 4
@OP_Gt = common dso_local global i32 0, align 4
@OP_SeekRowid = common dso_local global i32 0, align 4
@leadName = common dso_local global i64 0, align 8
@lagName = common dso_local global i64 0, align 8
@OP_Rowid = common dso_local global i32 0, align 4
@OP_AddImm = common dso_local global i32 0, align 4
@OP_Subtract = common dso_local global i32 0, align 4
@OP_Gosub = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @windowReturnOneRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowReturnOneRow(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %3, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %4, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = call i32 @windowFullScan(%struct.TYPE_12__* %30)
  br label %274

32:                                               ; preds = %1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %5, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %6, align 8
  br label %37

37:                                               ; preds = %269, %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %273

40:                                               ; preds = %37
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %7, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @nth_valueName, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @first_valueName, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %137

55:                                               ; preds = %49, %40
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %8, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @sqlite3VdbeMakeLabel(i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @sqlite3GetTempReg(i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @OP_Null, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sqlite3VdbeAddOp2(i32* %63, i32 %64, i32 0, i32 %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @nth_valueName, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %55
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @OP_Column, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @sqlite3VdbeAddOp3(i32* %75, i32 %76, i32 %79, i32 %83, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @windowCheckValue(i32* %86, i32 %87, i32 2)
  br label %94

89:                                               ; preds = %55
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @OP_Integer, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @sqlite3VdbeAddOp2(i32* %90, i32 %91, i32 1, i32 %92)
  br label %94

94:                                               ; preds = %89, %74
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @OP_Add, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @sqlite3VdbeAddOp3(i32* %95, i32 %96, i32 %97, i32 %100, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @OP_Gt, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @sqlite3VdbeAddOp3(i32* %103, i32 %104, i32 %108, i32 %109, i32 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @VdbeCoverageNeverNull(i32* %112)
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* @OP_SeekRowid, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @sqlite3VdbeAddOp3(i32* %114, i32 %115, i32 %116, i32 0, i32 %117)
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @VdbeCoverageNeverTaken(i32* %119)
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* @OP_Column, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @sqlite3VdbeAddOp3(i32* %121, i32 %122, i32 %123, i32 %126, i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @sqlite3VdbeResolveLabel(i32* %131, i32 %132)
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @sqlite3ReleaseTempReg(i32* %134, i32 %135)
  br label %268

137:                                              ; preds = %49
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @leadName, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @lagName, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %267

149:                                              ; preds = %143, %137
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %11, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %12, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @sqlite3VdbeMakeLabel(i32* %161)
  store i32 %162, i32* %13, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @sqlite3GetTempReg(i32* %163)
  store i32 %164, i32* %14, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %168, 3
  br i1 %169, label %170, label %177

170:                                              ; preds = %149
  %171 = load i32*, i32** %4, align 8
  %172 = load i32, i32* @OP_Null, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @sqlite3VdbeAddOp2(i32* %171, i32 %172, i32 0, i32 %175)
  br label %189

177:                                              ; preds = %149
  %178 = load i32*, i32** %4, align 8
  %179 = load i32, i32* @OP_Column, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 2
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @sqlite3VdbeAddOp3(i32* %178, i32 %179, i32 %180, i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %177, %170
  %190 = load i32*, i32** %4, align 8
  %191 = load i32, i32* @OP_Rowid, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @sqlite3VdbeAddOp2(i32* %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %195, 2
  br i1 %196, label %197, label %210

197:                                              ; preds = %189
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @leadName, align 8
  %202 = icmp eq i64 %200, %201
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 1, i32 -1
  store i32 %204, i32* %16, align 4
  %205 = load i32*, i32** %4, align 8
  %206 = load i32, i32* @OP_AddImm, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %16, align 4
  %209 = call i32 @sqlite3VdbeAddOp2(i32* %205, i32 %206, i32 %207, i32 %208)
  br label %242

210:                                              ; preds = %189
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @leadName, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i32, i32* @OP_Add, align 4
  br label %220

218:                                              ; preds = %210
  %219 = load i32, i32* @OP_Subtract, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  store i32 %221, i32* %17, align 4
  %222 = load i32*, i32** %5, align 8
  %223 = call i32 @sqlite3GetTempReg(i32* %222)
  store i32 %223, i32* %18, align 4
  %224 = load i32*, i32** %4, align 8
  %225 = load i32, i32* @OP_Column, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  %231 = load i32, i32* %18, align 4
  %232 = call i32 @sqlite3VdbeAddOp3(i32* %224, i32 %225, i32 %226, i32 %230, i32 %231)
  %233 = load i32*, i32** %4, align 8
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* %14, align 4
  %238 = call i32 @sqlite3VdbeAddOp3(i32* %233, i32 %234, i32 %235, i32 %236, i32 %237)
  %239 = load i32*, i32** %5, align 8
  %240 = load i32, i32* %18, align 4
  %241 = call i32 @sqlite3ReleaseTempReg(i32* %239, i32 %240)
  br label %242

242:                                              ; preds = %220, %197
  %243 = load i32*, i32** %4, align 8
  %244 = load i32, i32* @OP_SeekRowid, align 4
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %14, align 4
  %248 = call i32 @sqlite3VdbeAddOp3(i32* %243, i32 %244, i32 %245, i32 %246, i32 %247)
  %249 = load i32*, i32** %4, align 8
  %250 = call i32 @VdbeCoverage(i32* %249)
  %251 = load i32*, i32** %4, align 8
  %252 = load i32, i32* @OP_Column, align 4
  %253 = load i32, i32* %12, align 4
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @sqlite3VdbeAddOp3(i32* %251, i32 %252, i32 %253, i32 %256, i32 %259)
  %261 = load i32*, i32** %4, align 8
  %262 = load i32, i32* %13, align 4
  %263 = call i32 @sqlite3VdbeResolveLabel(i32* %261, i32 %262)
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %14, align 4
  %266 = call i32 @sqlite3ReleaseTempReg(i32* %264, i32 %265)
  br label %267

267:                                              ; preds = %242, %143
  br label %268

268:                                              ; preds = %267, %94
  br label %269

269:                                              ; preds = %268
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 7
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %271, align 8
  store %struct.TYPE_13__* %272, %struct.TYPE_13__** %6, align 8
  br label %37

273:                                              ; preds = %37
  br label %274

274:                                              ; preds = %273, %29
  %275 = load i32*, i32** %4, align 8
  %276 = load i32, i32* @OP_Gosub, align 4
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @sqlite3VdbeAddOp2(i32* %275, i32 %276, i32 %279, i32 %282)
  ret void
}

declare dso_local i32 @windowFullScan(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @windowCheckValue(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverageNeverNull(i32*) #1

declare dso_local i32 @VdbeCoverageNeverTaken(i32*) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
