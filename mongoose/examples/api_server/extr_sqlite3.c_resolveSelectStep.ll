; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_resolveSelectStep.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_resolveSelectStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_29__*, %struct.TYPE_24__ }
%struct.TYPE_29__ = type { i8*, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_25__*, i64, %struct.TYPE_29__* }
%struct.TYPE_31__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32* }
%struct.TYPE_25__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i8*, i32, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_28__*, %struct.TYPE_31__*, i32*, i32*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_25__*, i32*, i32* }

@SF_Resolved = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@SF_Expanded = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@NC_AllowAgg = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@NC_HasAgg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"a GROUP BY clause is required before HAVING\00", align 1
@NC_AsMaybe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ORDER\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@EP_Agg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"aggregate functions are not allowed in the GROUP BY clause\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_28__*)* @resolveSelectStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolveSelectStep(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_30__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.SrcList_item*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.ExprList_item*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %23 = icmp ne %struct.TYPE_28__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SF_Resolved, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @WRC_Prune, align 4
  store i32 %33, i32* %3, align 4
  br label %429

34:                                               ; preds = %2
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %37, align 8
  store %struct.TYPE_30__* %38, %struct.TYPE_30__** %6, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %40, align 8
  store %struct.TYPE_29__* %41, %struct.TYPE_29__** %10, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  store %struct.TYPE_26__* %44, %struct.TYPE_26__** %15, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SF_Expanded, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %34
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %55 = call i32 @sqlite3SelectPrep(%struct.TYPE_29__* %52, %struct.TYPE_28__* %53, %struct.TYPE_30__* %54)
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %51
  %66 = load i32, i32* @WRC_Abort, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @WRC_Prune, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %3, align 4
  br label %429

71:                                               ; preds = %34
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %73, align 8
  %75 = icmp ne %struct.TYPE_28__* %74, null
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_28__* %77, %struct.TYPE_28__** %14, align 8
  br label %78

78:                                               ; preds = %411, %71
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %80 = icmp ne %struct.TYPE_28__* %79, null
  br i1 %80, label %81, label %417

81:                                               ; preds = %78
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SF_Expanded, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SF_Resolved, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* @SF_Resolved, align 4
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = call i32 @memset(%struct.TYPE_30__* %7, i32 0, i32 48)
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 5
  store %struct.TYPE_29__* %104, %struct.TYPE_29__** %105, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 9
  %108 = load i32*, i32** %107, align 8
  %109 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_30__* %7, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %81
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 8
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_30__* %7, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111, %81
  %118 = load i32, i32* @WRC_Abort, align 4
  store i32 %118, i32* %3, align 4
  br label %429

119:                                              ; preds = %111
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %228, %119
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %121, %126
  br i1 %127, label %128, label %231

128:                                              ; preds = %120
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 7
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  %133 = load %struct.SrcList_item*, %struct.SrcList_item** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %133, i64 %135
  store %struct.SrcList_item* %136, %struct.SrcList_item** %16, align 8
  %137 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %138 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %227

141:                                              ; preds = %128
  store i32 0, i32* %18, align 4
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %19, align 8
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_30__* %145, %struct.TYPE_30__** %17, align 8
  br label %146

146:                                              ; preds = %157, %141
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %148 = icmp ne %struct.TYPE_30__* %147, null
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %18, align 4
  br label %157

157:                                              ; preds = %149
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %159, align 8
  store %struct.TYPE_30__* %160, %struct.TYPE_30__** %17, align 8
  br label %146

161:                                              ; preds = %146
  %162 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %163 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %168 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %166, %161
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %174 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %175 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %178 = call i32 @sqlite3ResolveSelectNames(%struct.TYPE_29__* %173, i64 %176, %struct.TYPE_30__* %177)
  %179 = load i8*, i8** %19, align 8
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %172
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186, %172
  %192 = load i32, i32* @WRC_Abort, align 4
  store i32 %192, i32* %3, align 4
  br label %429

193:                                              ; preds = %186
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_30__* %194, %struct.TYPE_30__** %17, align 8
  br label %195

195:                                              ; preds = %206, %193
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %197 = icmp ne %struct.TYPE_30__* %196, null
  br i1 %197, label %198, label %210

198:                                              ; preds = %195
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = sub nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %198
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %208, align 8
  store %struct.TYPE_30__* %209, %struct.TYPE_30__** %17, align 8
  br label %195

210:                                              ; preds = %195
  %211 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %212 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load i32, i32* %18, align 4
  %217 = icmp sle i32 %216, 0
  br label %218

218:                                              ; preds = %215, %210
  %219 = phi i1 [ false, %210 ], [ %217, %215 ]
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i32, i32* %18, align 4
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %226 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %218, %128
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %120

231:                                              ; preds = %120
  %232 = load i32, i32* @NC_AllowAgg, align 4
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  store i32 %232, i32* %233, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 7
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 3
  store %struct.TYPE_25__* %236, %struct.TYPE_25__** %237, align 8
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 1
  store %struct.TYPE_30__* %238, %struct.TYPE_30__** %239, align 8
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 5
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %241, align 8
  store %struct.TYPE_31__* %242, %struct.TYPE_31__** %11, align 8
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %244 = icmp ne %struct.TYPE_31__* %243, null
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  store i32 0, i32* %12, align 4
  br label %247

247:                                              ; preds = %268, %231
  %248 = load i32, i32* %12, align 4
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %271

253:                                              ; preds = %247
  %254 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %254, i32 0, i32 1
  %256 = load %struct.ExprList_item*, %struct.ExprList_item** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %256, i64 %258
  %260 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  store i32* %261, i32** %20, align 8
  %262 = load i32*, i32** %20, align 8
  %263 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_30__* %7, i32* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %253
  %266 = load i32, i32* @WRC_Abort, align 4
  store i32 %266, i32* %3, align 4
  br label %429

267:                                              ; preds = %253
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %12, align 4
  br label %247

271:                                              ; preds = %247
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @SF_Aggregate, align 4
  %276 = and i32 %274, %275
  %277 = icmp eq i32 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 6
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %281, align 8
  store %struct.TYPE_31__* %282, %struct.TYPE_31__** %13, align 8
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %284 = icmp ne %struct.TYPE_31__* %283, null
  br i1 %284, label %291, label %285

285:                                              ; preds = %271
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @NC_HasAgg, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %285, %271
  %292 = load i32, i32* @SF_Aggregate, align 4
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  br label %303

297:                                              ; preds = %285
  %298 = load i32, i32* @NC_AllowAgg, align 4
  %299 = xor i32 %298, -1
  %300 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = and i32 %301, %299
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %297, %291
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 4
  %306 = load i32*, i32** %305, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %315

308:                                              ; preds = %303
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %310 = icmp ne %struct.TYPE_31__* %309, null
  br i1 %310, label %315, label %311

311:                                              ; preds = %308
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %313 = call i32 @sqlite3ErrorMsg(%struct.TYPE_29__* %312, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %314 = load i32, i32* @WRC_Abort, align 4
  store i32 %314, i32* %3, align 4
  br label %429

315:                                              ; preds = %308, %303
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %316, i32 0, i32 5
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 2
  store %struct.TYPE_31__* %318, %struct.TYPE_31__** %319, align 8
  %320 = load i32, i32* @NC_AsMaybe, align 4
  %321 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = or i32 %322, %320
  store i32 %323, i32* %321, align 8
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 4
  %326 = load i32*, i32** %325, align 8
  %327 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_30__* %7, i32* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %315
  %330 = load i32, i32* @WRC_Abort, align 4
  store i32 %330, i32* %3, align 4
  br label %429

331:                                              ; preds = %315
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 3
  %334 = load i32*, i32** %333, align 8
  %335 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_30__* %7, i32* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %331
  %338 = load i32, i32* @WRC_Abort, align 4
  store i32 %338, i32* %3, align 4
  br label %429

339:                                              ; preds = %331
  %340 = load i32, i32* @NC_AsMaybe, align 4
  %341 = xor i32 %340, -1
  %342 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = and i32 %343, %341
  store i32 %344, i32* %342, align 8
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 1
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %345, align 8
  %346 = load i32, i32* @NC_AllowAgg, align 4
  %347 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = or i32 %348, %346
  store i32 %349, i32* %347, align 8
  %350 = load i32, i32* %8, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %361, label %352

352:                                              ; preds = %339
  %353 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %354 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %354, i32 0, i32 2
  %356 = load %struct.TYPE_31__*, %struct.TYPE_31__** %355, align 8
  %357 = call i64 @resolveOrderGroupBy(%struct.TYPE_30__* %7, %struct.TYPE_28__* %353, %struct.TYPE_31__* %356, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = load i32, i32* @WRC_Abort, align 4
  store i32 %360, i32* %3, align 4
  br label %429

361:                                              ; preds = %352, %339
  %362 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %361
  %367 = load i32, i32* @WRC_Abort, align 4
  store i32 %367, i32* %3, align 4
  br label %429

368:                                              ; preds = %361
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %370 = icmp ne %struct.TYPE_31__* %369, null
  br i1 %370, label %371, label %411

371:                                              ; preds = %368
  %372 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %373 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %374 = call i64 @resolveOrderGroupBy(%struct.TYPE_30__* %7, %struct.TYPE_28__* %372, %struct.TYPE_31__* %373, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %371
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %376, %371
  %382 = load i32, i32* @WRC_Abort, align 4
  store i32 %382, i32* %3, align 4
  br label %429

383:                                              ; preds = %376
  store i32 0, i32* %12, align 4
  %384 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %385 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %384, i32 0, i32 1
  %386 = load %struct.ExprList_item*, %struct.ExprList_item** %385, align 8
  store %struct.ExprList_item* %386, %struct.ExprList_item** %21, align 8
  br label %387

387:                                              ; preds = %405, %383
  %388 = load i32, i32* %12, align 4
  %389 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %390 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = icmp slt i32 %388, %391
  br i1 %392, label %393, label %410

393:                                              ; preds = %387
  %394 = load %struct.ExprList_item*, %struct.ExprList_item** %21, align 8
  %395 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %394, i32 0, i32 0
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* @EP_Agg, align 4
  %398 = call i64 @ExprHasProperty(i32* %396, i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %393
  %401 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %402 = call i32 @sqlite3ErrorMsg(%struct.TYPE_29__* %401, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %403 = load i32, i32* @WRC_Abort, align 4
  store i32 %403, i32* %3, align 4
  br label %429

404:                                              ; preds = %393
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %12, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %12, align 4
  %408 = load %struct.ExprList_item*, %struct.ExprList_item** %21, align 8
  %409 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %408, i32 1
  store %struct.ExprList_item* %409, %struct.ExprList_item** %21, align 8
  br label %387

410:                                              ; preds = %387
  br label %411

411:                                              ; preds = %410, %368
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 1
  %414 = load %struct.TYPE_28__*, %struct.TYPE_28__** %413, align 8
  store %struct.TYPE_28__* %414, %struct.TYPE_28__** %5, align 8
  %415 = load i32, i32* %9, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %9, align 4
  br label %78

417:                                              ; preds = %78
  %418 = load i32, i32* %8, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %427

420:                                              ; preds = %417
  %421 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %422 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %423 = call i64 @resolveCompoundOrderBy(%struct.TYPE_29__* %421, %struct.TYPE_28__* %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %420
  %426 = load i32, i32* @WRC_Abort, align 4
  store i32 %426, i32* %3, align 4
  br label %429

427:                                              ; preds = %420, %417
  %428 = load i32, i32* @WRC_Prune, align 4
  store i32 %428, i32* %3, align 4
  br label %429

429:                                              ; preds = %427, %425, %400, %381, %366, %359, %337, %329, %311, %265, %191, %117, %69, %32
  %430 = load i32, i32* %3, align 4
  ret i32 %430
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SelectPrep(%struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_30__*) #1

declare dso_local i32 @memset(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i64 @sqlite3ResolveExprNames(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @sqlite3ResolveSelectNames(%struct.TYPE_29__*, i64, %struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_29__*, i8*) #1

declare dso_local i64 @resolveOrderGroupBy(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_31__*, i8*) #1

declare dso_local i64 @ExprHasProperty(i32*, i32) #1

declare dso_local i64 @resolveCompoundOrderBy(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
