; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_updateAccumulator.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_updateAccumulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__*, i32* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.AggInfo_col*, %struct.AggInfo_func* }
%struct.AggInfo_col = type { i32, i32 }
%struct.AggInfo_func = type { i64, %struct.TYPE_24__*, i32, %struct.TYPE_18__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32 }

@EP_xIsSelect = common dso_local global i32 0, align 4
@SQLITE_ECEL_DUP = common dso_local global i32 0, align 4
@SQLITE_FUNC_NEEDCOLL = common dso_local global i32 0, align 4
@OP_CollSeq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_AggStep = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@OP_If = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32, %struct.TYPE_23__*)* @updateAccumulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateAccumulator(%struct.TYPE_21__* %0, i32 %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.AggInfo_func*, align 8
  %12 = alloca %struct.AggInfo_col*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ExprList_item*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  store i32 0, i32* %8, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 4
  %27 = load %struct.AggInfo_func*, %struct.AggInfo_func** %26, align 8
  store %struct.AggInfo_func* %27, %struct.AggInfo_func** %11, align 8
  br label %28

28:                                               ; preds = %183, %3
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %188

34:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  %35 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %36 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %35, i32 0, i32 3
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %16, align 8
  %41 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %42 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %41, i32 0, i32 3
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = load i32, i32* @EP_xIsSelect, align 4
  %45 = call i32 @ExprHasProperty(%struct.TYPE_18__* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %51 = icmp ne %struct.TYPE_22__* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %34
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @sqlite3GetTempRange(%struct.TYPE_21__* %56, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @SQLITE_ECEL_DUP, align 4
  %63 = call i32 @sqlite3ExprCodeExprList(%struct.TYPE_21__* %59, %struct.TYPE_22__* %60, i32 %61, i32 0, i32 %62)
  br label %65

64:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %67 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_21__* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @testcase(i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp sgt i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = call i32 @testcase(i32 %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %83 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @codeDistinct(%struct.TYPE_21__* %81, i64 %84, i32 %85, i32 1, i32 %86)
  br label %88

88:                                               ; preds = %70, %65
  %89 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %90 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %89, i32 0, i32 1
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SQLITE_FUNC_NEEDCOLL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %155

97:                                               ; preds = %88
  store i32* null, i32** %17, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %99 = icmp ne %struct.TYPE_22__* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  store i32 0, i32* %19, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load %struct.ExprList_item*, %struct.ExprList_item** %103, align 8
  store %struct.ExprList_item* %104, %struct.ExprList_item** %18, align 8
  br label %105

105:                                              ; preds = %120, %97
  %106 = load i32*, i32** %17, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %109, %110
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i1 [ false, %105 ], [ %111, %108 ]
  br i1 %113, label %114, label %125

114:                                              ; preds = %112
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = load %struct.ExprList_item*, %struct.ExprList_item** %18, align 8
  %117 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_21__* %115, i32 %118)
  store i32* %119, i32** %17, align 8
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  %123 = load %struct.ExprList_item*, %struct.ExprList_item** %18, align 8
  %124 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %123, i32 1
  store %struct.ExprList_item* %124, %struct.ExprList_item** %18, align 8
  br label %105

125:                                              ; preds = %112
  %126 = load i32*, i32** %17, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %17, align 8
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %9, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %142, %137, %134
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* @OP_CollSeq, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32*, i32** %17, align 8
  %152 = bitcast i32* %151 to i8*
  %153 = load i32, i32* @P4_COLLSEQ, align 4
  %154 = call i32 @sqlite3VdbeAddOp4(i32* %148, i32 %149, i32 %150, i32 0, i32 0, i8* %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %88
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* @OP_AggStep, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %160 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @sqlite3VdbeAddOp3(i32* %156, i32 %157, i32 0, i32 %158, i32 %161)
  %163 = load i32*, i32** %7, align 8
  %164 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %165 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %164, i32 0, i32 1
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %165, align 8
  %167 = load i32, i32* @P4_FUNCDEF, align 4
  %168 = call i32 @sqlite3VdbeAppendP4(i32* %163, %struct.TYPE_24__* %166, i32 %167)
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @sqlite3VdbeChangeP5(i32* %169, i32 %170)
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_21__* %172, i32 %173, i32 %174)
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %155
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @sqlite3VdbeResolveLabel(i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %155
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  %186 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %187 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %186, i32 1
  store %struct.AggInfo_func* %187, %struct.AggInfo_func** %11, align 8
  br label %28

188:                                              ; preds = %28
  %189 = load i32, i32* %9, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load i32, i32* %5, align 4
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %196, %191, %188
  %199 = load i32, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load i32*, i32** %7, align 8
  %203 = load i32, i32* @OP_If, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @sqlite3VdbeAddOp1(i32* %202, i32 %203, i32 %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 @VdbeCoverage(i32* %206)
  br label %208

208:                                              ; preds = %201, %198
  store i32 0, i32* %8, align 4
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 3
  %211 = load %struct.AggInfo_col*, %struct.AggInfo_col** %210, align 8
  store %struct.AggInfo_col* %211, %struct.AggInfo_col** %12, align 8
  br label %212

212:                                              ; preds = %227, %208
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %212
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %220 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %221 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %224 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @sqlite3ExprCode(%struct.TYPE_21__* %219, i32 %222, i32 %225)
  br label %227

227:                                              ; preds = %218
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  %230 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %231 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %230, i32 1
  store %struct.AggInfo_col* %231, %struct.AggInfo_col** %12, align 8
  br label %212

232:                                              ; preds = %212
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  store i32 0, i32* %234, align 8
  %235 = load i32, i32* %10, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load i32*, i32** %7, align 8
  %239 = load i32, i32* %10, align 4
  %240 = call i32 @sqlite3VdbeJumpHere(i32* %238, i32 %239)
  br label %241

241:                                              ; preds = %237, %232
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_21__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @codeDistinct(%struct.TYPE_21__*, i64, i32, i32, i32) #1

declare dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
