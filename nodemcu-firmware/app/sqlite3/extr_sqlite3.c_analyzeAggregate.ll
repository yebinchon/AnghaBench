; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_analyzeAggregate.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_analyzeAggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_27__*, %struct.TYPE_28__* }
%struct.TYPE_21__ = type { i32, i32, %struct.AggInfo_func*, i32, %struct.TYPE_30__*, %struct.AggInfo_col* }
%struct.AggInfo_func = type { i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_30__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { %struct.TYPE_20__* }
%struct.AggInfo_col = type { i32, %struct.TYPE_20__*, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_21__*, i8*, %struct.TYPE_25__, %struct.TYPE_23__, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_NoReduce = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@NC_InAggFunc = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@EP_Distinct = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_20__*)* @analyzeAggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyzeAggregate(%struct.TYPE_26__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.SrcList_item*, align 8
  %12 = alloca %struct.AggInfo_col*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.ExprList_item*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.AggInfo_func*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  store %struct.TYPE_29__* %24, %struct.TYPE_29__** %7, align 8
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  store %struct.TYPE_28__* %27, %struct.TYPE_28__** %8, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %9, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %10, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %405 [
    i32 130, label %37
    i32 128, label %37
    i32 129, label %250
  ]

37:                                               ; preds = %2, %2
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 130
  %42 = zext i1 %41 to i32
  %43 = call i32 @testcase(i32 %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 128
  %48 = zext i1 %47 to i32
  %49 = call i32 @testcase(i32 %48)
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %51 = icmp ne %struct.TYPE_27__* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @ALWAYS(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %248

55:                                               ; preds = %37
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = load %struct.SrcList_item*, %struct.SrcList_item** %57, align 8
  store %struct.SrcList_item* %58, %struct.SrcList_item** %11, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %242, %55
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %247

65:                                               ; preds = %59
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = load i32, i32* @EP_TokenOnly, align 4
  %68 = load i32, i32* @EP_Reduced, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @ExprHasProperty(%struct.TYPE_20__* %66, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %79 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %241

82:                                               ; preds = %65
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 5
  %85 = load %struct.AggInfo_col*, %struct.AggInfo_col** %84, align 8
  store %struct.AggInfo_col* %85, %struct.AggInfo_col** %12, align 8
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %110, %82
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %86
  %93 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %94 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %102 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %115

109:                                              ; preds = %100, %92
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  %113 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %114 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %113, i32 1
  store %struct.AggInfo_col* %114, %struct.AggInfo_col** %12, align 8
  br label %86

115:                                              ; preds = %108, %86
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %116, %119
  br i1 %120, label %121, label %227

121:                                              ; preds = %115
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %126 = call i32 @addAggInfoColumn(i32 %124, %struct.TYPE_21__* %125)
  store i32 %126, i32* %13, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %227

128:                                              ; preds = %121
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 5
  %131 = load %struct.AggInfo_col*, %struct.AggInfo_col** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %131, i64 %133
  store %struct.AggInfo_col* %134, %struct.AggInfo_col** %12, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %139 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %144 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %149 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %155 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %157 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %156, i32 0, i32 0
  store i32 -1, i32* %157, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %159 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %160 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %159, i32 0, i32 1
  store %struct.TYPE_20__* %158, %struct.TYPE_20__** %160, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %162, align 8
  %164 = icmp ne %struct.TYPE_30__* %163, null
  br i1 %164, label %165, label %214

165:                                              ; preds = %128
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %167, align 8
  store %struct.TYPE_30__* %168, %struct.TYPE_30__** %16, align 8
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 1
  %171 = load %struct.ExprList_item*, %struct.ExprList_item** %170, align 8
  store %struct.ExprList_item* %171, %struct.ExprList_item** %17, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %208, %165
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %213

179:                                              ; preds = %175
  %180 = load %struct.ExprList_item*, %struct.ExprList_item** %17, align 8
  %181 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %180, i32 0, i32 0
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %181, align 8
  store %struct.TYPE_20__* %182, %struct.TYPE_20__** %18, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 128
  br i1 %186, label %187, label %207

187:                                              ; preds = %179
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %190, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %187
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %198, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load i32, i32* %14, align 4
  %205 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %206 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %213

207:                                              ; preds = %195, %187, %179
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %14, align 4
  %211 = load %struct.ExprList_item*, %struct.ExprList_item** %17, align 8
  %212 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %211, i32 1
  store %struct.ExprList_item* %212, %struct.ExprList_item** %17, align 8
  br label %175

213:                                              ; preds = %203, %175
  br label %214

214:                                              ; preds = %213, %128
  %215 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %216 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  %224 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %225 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 8
  br label %226

226:                                              ; preds = %219, %214
  br label %227

227:                                              ; preds = %226, %121, %115
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %229 = load i32, i32* @EP_NoReduce, align 4
  %230 = call i32 @ExprSetVVAProperty(%struct.TYPE_20__* %228, i32 %229)
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 2
  store %struct.TYPE_21__* %231, %struct.TYPE_21__** %233, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  store i32 130, i32* %235, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 3
  store i8* %238, i8** %240, align 8
  br label %247

241:                                              ; preds = %65
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  %245 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %246 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %245, i32 1
  store %struct.SrcList_item* %246, %struct.SrcList_item** %11, align 8
  br label %59

247:                                              ; preds = %227, %59
  br label %248

248:                                              ; preds = %247, %37
  %249 = load i32, i32* @WRC_Prune, align 4
  store i32 %249, i32* %3, align 4
  br label %407

250:                                              ; preds = %2
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @NC_InAggFunc, align 4
  %255 = and i32 %253, %254
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %403

257:                                              ; preds = %250
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %260, %263
  br i1 %264, label %265, label %403

265:                                              ; preds = %257
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 2
  %268 = load %struct.AggInfo_func*, %struct.AggInfo_func** %267, align 8
  store %struct.AggInfo_func* %268, %struct.AggInfo_func** %19, align 8
  store i32 0, i32* %6, align 4
  br label %269

269:                                              ; preds = %284, %265
  %270 = load i32, i32* %6, align 4
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %289

275:                                              ; preds = %269
  %276 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %277 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %276, i32 0, i32 3
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %277, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %280 = call i32 @sqlite3ExprCompare(%struct.TYPE_20__* %278, %struct.TYPE_20__* %279, i32 -1)
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  br label %289

283:                                              ; preds = %275
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %6, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %6, align 4
  %287 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %288 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %287, i32 1
  store %struct.AggInfo_func* %288, %struct.AggInfo_func** %19, align 8
  br label %269

289:                                              ; preds = %282, %269
  %290 = load i32, i32* %6, align 4
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp sge i32 %290, %293
  br i1 %294, label %295, label %381

295:                                              ; preds = %289
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @ENC(i32 %298)
  store i32 %299, i32* %20, align 4
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %304 = call i32 @addAggInfoFunc(i32 %302, %struct.TYPE_21__* %303)
  store i32 %304, i32* %6, align 4
  %305 = load i32, i32* %6, align 4
  %306 = icmp sge i32 %305, 0
  br i1 %306, label %307, label %380

307:                                              ; preds = %295
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %309 = load i32, i32* @EP_xIsSelect, align 4
  %310 = call i32 @ExprHasProperty(%struct.TYPE_20__* %308, i32 %309)
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = call i32 @assert(i32 %313)
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 2
  %317 = load %struct.AggInfo_func*, %struct.AggInfo_func** %316, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %317, i64 %319
  store %struct.AggInfo_func* %320, %struct.AggInfo_func** %19, align 8
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %322 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %323 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %322, i32 0, i32 3
  store %struct.TYPE_20__* %321, %struct.TYPE_20__** %323, align 8
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  %328 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %329 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %328, i32 0, i32 2
  store i32 %327, i32* %329, align 8
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %331 = load i32, i32* @EP_IntValue, align 4
  %332 = call i32 @ExprHasProperty(%struct.TYPE_20__* %330, i32 %331)
  %333 = icmp ne i32 %332, 0
  %334 = xor i1 %333, true
  %335 = zext i1 %334 to i32
  %336 = call i32 @assert(i32 %335)
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %346, align 8
  %348 = icmp ne %struct.TYPE_24__* %347, null
  br i1 %348, label %349, label %356

349:                                              ; preds = %307
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  br label %357

356:                                              ; preds = %307
  br label %357

357:                                              ; preds = %356, %349
  %358 = phi i32 [ %355, %349 ], [ 0, %356 ]
  %359 = load i32, i32* %20, align 4
  %360 = call i32 @sqlite3FindFunction(i32 %339, i32 %343, i32 %358, i32 %359, i32 0)
  %361 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %362 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %361, i32 0, i32 1
  store i32 %360, i32* %362, align 4
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @EP_Distinct, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %357
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %371, align 4
  %374 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %375 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %374, i32 0, i32 0
  store i32 %372, i32* %375, align 8
  br label %379

376:                                              ; preds = %357
  %377 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %378 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %377, i32 0, i32 0
  store i32 -1, i32* %378, align 8
  br label %379

379:                                              ; preds = %376, %369
  br label %380

380:                                              ; preds = %379, %295
  br label %381

381:                                              ; preds = %380, %289
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %383 = load i32, i32* @EP_TokenOnly, align 4
  %384 = load i32, i32* @EP_Reduced, align 4
  %385 = or i32 %383, %384
  %386 = call i32 @ExprHasProperty(%struct.TYPE_20__* %382, i32 %385)
  %387 = icmp ne i32 %386, 0
  %388 = xor i1 %387, true
  %389 = zext i1 %388 to i32
  %390 = call i32 @assert(i32 %389)
  %391 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %392 = load i32, i32* @EP_NoReduce, align 4
  %393 = call i32 @ExprSetVVAProperty(%struct.TYPE_20__* %391, i32 %392)
  %394 = load i32, i32* %6, align 4
  %395 = sext i32 %394 to i64
  %396 = inttoptr i64 %395 to i8*
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %397, i32 0, i32 3
  store i8* %396, i8** %398, align 8
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 2
  store %struct.TYPE_21__* %399, %struct.TYPE_21__** %401, align 8
  %402 = load i32, i32* @WRC_Prune, align 4
  store i32 %402, i32* %3, align 4
  br label %407

403:                                              ; preds = %257, %250
  %404 = load i32, i32* @WRC_Continue, align 4
  store i32 %404, i32* %3, align 4
  br label %407

405:                                              ; preds = %2
  %406 = load i32, i32* @WRC_Continue, align 4
  store i32 %406, i32* %3, align 4
  br label %407

407:                                              ; preds = %405, %403, %381, %248
  %408 = load i32, i32* %3, align 4
  ret i32 %408
}

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @ALWAYS(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @addAggInfoColumn(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @ExprSetVVAProperty(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @sqlite3ExprCompare(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @ENC(i32) #1

declare dso_local i32 @addAggInfoFunc(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3FindFunction(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
