; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_analyzeAggregate.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_analyzeAggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_28__*, %struct.TYPE_29__* }
%struct.TYPE_22__ = type { i32, i32, %struct.AggInfo_func*, i32, %struct.TYPE_31__*, %struct.AggInfo_col* }
%struct.AggInfo_func = type { i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_31__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { %struct.TYPE_21__* }
%struct.AggInfo_col = type { i32, %struct.TYPE_21__*, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_22__*, i8*, %struct.TYPE_26__, %struct.TYPE_24__, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@NC_InAggFunc = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@EP_Distinct = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_21__*)* @analyzeAggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyzeAggregate(%struct.TYPE_27__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.SrcList_item*, align 8
  %12 = alloca %struct.AggInfo_col*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca %struct.ExprList_item*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.AggInfo_func*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  store %struct.TYPE_30__* %24, %struct.TYPE_30__** %7, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  store %struct.TYPE_29__* %27, %struct.TYPE_29__** %8, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  store %struct.TYPE_28__* %30, %struct.TYPE_28__** %9, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %10, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %408 [
    i32 130, label %37
    i32 128, label %37
    i32 129, label %249
  ]

37:                                               ; preds = %2, %2
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 130
  %42 = zext i1 %41 to i32
  %43 = call i32 @testcase(i32 %42)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 128
  %48 = zext i1 %47 to i32
  %49 = call i32 @testcase(i32 %48)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %51 = icmp ne %struct.TYPE_28__* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @ALWAYS(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %247

55:                                               ; preds = %37
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = load %struct.SrcList_item*, %struct.SrcList_item** %57, align 8
  store %struct.SrcList_item* %58, %struct.SrcList_item** %11, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %241, %55
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %246

65:                                               ; preds = %59
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = load i32, i32* @EP_TokenOnly, align 4
  %68 = load i32, i32* @EP_Reduced, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @ExprHasAnyProperty(%struct.TYPE_21__* %66, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %79 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %240

82:                                               ; preds = %65
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 5
  %85 = load %struct.AggInfo_col*, %struct.AggInfo_col** %84, align 8
  store %struct.AggInfo_col* %85, %struct.AggInfo_col** %12, align 8
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %110, %82
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %86
  %93 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %94 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %102 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 7
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
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %116, %119
  br i1 %120, label %121, label %227

121:                                              ; preds = %115
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %126 = call i32 @addAggInfoColumn(i32 %124, %struct.TYPE_22__* %125)
  store i32 %126, i32* %13, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %227

128:                                              ; preds = %121
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 5
  %131 = load %struct.AggInfo_col*, %struct.AggInfo_col** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %131, i64 %133
  store %struct.AggInfo_col* %134, %struct.AggInfo_col** %12, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %139 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %144 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %149 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %155 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %157 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %156, i32 0, i32 0
  store i32 -1, i32* %157, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %160 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %159, i32 0, i32 1
  store %struct.TYPE_21__* %158, %struct.TYPE_21__** %160, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %162, align 8
  %164 = icmp ne %struct.TYPE_31__* %163, null
  br i1 %164, label %165, label %214

165:                                              ; preds = %128
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %167, align 8
  store %struct.TYPE_31__* %168, %struct.TYPE_31__** %16, align 8
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 1
  %171 = load %struct.ExprList_item*, %struct.ExprList_item** %170, align 8
  store %struct.ExprList_item* %171, %struct.ExprList_item** %17, align 8
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 0
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
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  store %struct.TYPE_21__* %182, %struct.TYPE_21__** %18, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 128
  br i1 %186, label %187, label %207

187:                                              ; preds = %179
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %190, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %187
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 7
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
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 3
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
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %229 = call i32 @ExprSetIrreducible(%struct.TYPE_21__* %228)
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 2
  store %struct.TYPE_22__* %230, %struct.TYPE_22__** %232, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  store i32 130, i32* %234, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i8*
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 3
  store i8* %237, i8** %239, align 8
  br label %246

240:                                              ; preds = %65
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %6, align 4
  %244 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %245 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %244, i32 1
  store %struct.SrcList_item* %245, %struct.SrcList_item** %11, align 8
  br label %59

246:                                              ; preds = %227, %59
  br label %247

247:                                              ; preds = %246, %37
  %248 = load i32, i32* @WRC_Prune, align 4
  store i32 %248, i32* %3, align 4
  br label %410

249:                                              ; preds = %2
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @NC_InAggFunc, align 4
  %254 = and i32 %252, %253
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %406

256:                                              ; preds = %249
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %259, %262
  br i1 %263, label %264, label %406

264:                                              ; preds = %256
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 2
  %267 = load %struct.AggInfo_func*, %struct.AggInfo_func** %266, align 8
  store %struct.AggInfo_func* %267, %struct.AggInfo_func** %19, align 8
  store i32 0, i32* %6, align 4
  br label %268

268:                                              ; preds = %283, %264
  %269 = load i32, i32* %6, align 4
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %288

274:                                              ; preds = %268
  %275 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %276 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %275, i32 0, i32 3
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %276, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %279 = call i32 @sqlite3ExprCompare(%struct.TYPE_21__* %277, %struct.TYPE_21__* %278)
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %288

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  %286 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %287 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %286, i32 1
  store %struct.AggInfo_func* %287, %struct.AggInfo_func** %19, align 8
  br label %268

288:                                              ; preds = %281, %268
  %289 = load i32, i32* %6, align 4
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp sge i32 %289, %292
  br i1 %293, label %294, label %385

294:                                              ; preds = %288
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @ENC(i32 %297)
  store i32 %298, i32* %20, align 4
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %303 = call i32 @addAggInfoFunc(i32 %301, %struct.TYPE_22__* %302)
  store i32 %303, i32* %6, align 4
  %304 = load i32, i32* %6, align 4
  %305 = icmp sge i32 %304, 0
  br i1 %305, label %306, label %384

306:                                              ; preds = %294
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %308 = load i32, i32* @EP_xIsSelect, align 4
  %309 = call i32 @ExprHasProperty(%struct.TYPE_21__* %307, i32 %308)
  %310 = icmp ne i32 %309, 0
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 2
  %316 = load %struct.AggInfo_func*, %struct.AggInfo_func** %315, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %316, i64 %318
  store %struct.AggInfo_func* %319, %struct.AggInfo_func** %19, align 8
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %321 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %322 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %321, i32 0, i32 3
  store %struct.TYPE_21__* %320, %struct.TYPE_21__** %322, align 8
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %324, align 4
  %327 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %328 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %327, i32 0, i32 2
  store i32 %326, i32* %328, align 8
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %330 = load i32, i32* @EP_IntValue, align 4
  %331 = call i32 @ExprHasProperty(%struct.TYPE_21__* %329, i32 %330)
  %332 = icmp ne i32 %331, 0
  %333 = xor i1 %332, true
  %334 = zext i1 %333 to i32
  %335 = call i32 @assert(i32 %334)
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 5
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @sqlite3Strlen30(i32 %346)
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 4
  %350 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %350, align 8
  %352 = icmp ne %struct.TYPE_25__* %351, null
  br i1 %352, label %353, label %360

353:                                              ; preds = %306
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  br label %361

360:                                              ; preds = %306
  br label %361

361:                                              ; preds = %360, %353
  %362 = phi i32 [ %359, %353 ], [ 0, %360 ]
  %363 = load i32, i32* %20, align 4
  %364 = call i32 @sqlite3FindFunction(i32 %338, i32 %342, i32 %347, i32 %362, i32 %363, i32 0)
  %365 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %366 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @EP_Distinct, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %380

373:                                              ; preds = %361
  %374 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %375, align 4
  %378 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %379 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %378, i32 0, i32 0
  store i32 %376, i32* %379, align 8
  br label %383

380:                                              ; preds = %361
  %381 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %382 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %381, i32 0, i32 0
  store i32 -1, i32* %382, align 8
  br label %383

383:                                              ; preds = %380, %373
  br label %384

384:                                              ; preds = %383, %294
  br label %385

385:                                              ; preds = %384, %288
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %387 = load i32, i32* @EP_TokenOnly, align 4
  %388 = load i32, i32* @EP_Reduced, align 4
  %389 = or i32 %387, %388
  %390 = call i32 @ExprHasAnyProperty(%struct.TYPE_21__* %386, i32 %389)
  %391 = icmp ne i32 %390, 0
  %392 = xor i1 %391, true
  %393 = zext i1 %392 to i32
  %394 = call i32 @assert(i32 %393)
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %396 = call i32 @ExprSetIrreducible(%struct.TYPE_21__* %395)
  %397 = load i32, i32* %6, align 4
  %398 = sext i32 %397 to i64
  %399 = inttoptr i64 %398 to i8*
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %400, i32 0, i32 3
  store i8* %399, i8** %401, align 8
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %403, i32 0, i32 2
  store %struct.TYPE_22__* %402, %struct.TYPE_22__** %404, align 8
  %405 = load i32, i32* @WRC_Prune, align 4
  store i32 %405, i32* %3, align 4
  br label %410

406:                                              ; preds = %256, %249
  %407 = load i32, i32* @WRC_Continue, align 4
  store i32 %407, i32* %3, align 4
  br label %410

408:                                              ; preds = %2
  %409 = load i32, i32* @WRC_Continue, align 4
  store i32 %409, i32* %3, align 4
  br label %410

410:                                              ; preds = %408, %406, %385, %247
  %411 = load i32, i32* %3, align 4
  ret i32 %411
}

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @ALWAYS(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasAnyProperty(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @addAggInfoColumn(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ExprSetIrreducible(%struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3ExprCompare(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ENC(i32) #1

declare dso_local i32 @addAggInfoFunc(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @sqlite3FindFunction(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3Strlen30(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
