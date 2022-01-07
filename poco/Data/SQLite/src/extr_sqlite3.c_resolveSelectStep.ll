; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_resolveSelectStep.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_resolveSelectStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { %struct.TYPE_35__*, %struct.TYPE_44__ }
%struct.TYPE_35__ = type { i8*, i64, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i64 }
%struct.TYPE_44__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, %struct.TYPE_36__*, %struct.TYPE_39__, %struct.TYPE_45__*, i64, %struct.TYPE_34__*, %struct.TYPE_35__* }
%struct.TYPE_39__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_45__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i8*, %struct.TYPE_34__*, %struct.TYPE_42__, %struct.TYPE_41__ }
%struct.TYPE_42__ = type { %struct.TYPE_40__* }
%struct.TYPE_41__ = type { i32, i64 }
%struct.TYPE_34__ = type { i32, i64, %struct.TYPE_34__*, %struct.TYPE_38__*, %struct.TYPE_40__*, %struct.TYPE_47__*, %struct.TYPE_45__*, i32, i32, %struct.TYPE_37__*, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_47__ = type { %struct.TYPE_40__*, %struct.TYPE_40__*, %struct.TYPE_47__* }
%struct.TYPE_37__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32 }

@SF_Resolved = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@SF_Expanded = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@SF_Converted = common dso_local global i32 0, align 4
@NC_AllowAgg = common dso_local global i32 0, align 4
@NC_AllowWin = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@NC_HasAgg = common dso_local global i32 0, align 4
@NC_MinMaxAgg = common dso_local global i32 0, align 4
@SF_MinMaxAgg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"a GROUP BY clause is required before HAVING\00", align 1
@NC_UAggInfo = common dso_local global i32 0, align 4
@NC_UUpsert = common dso_local global i32 0, align 4
@NC_UEList = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ORDER\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@EP_Agg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"aggregate functions are not allowed in the GROUP BY clause\00", align 1
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_48__*, %struct.TYPE_34__*)* @resolveSelectStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolveSelectStep(%struct.TYPE_48__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_48__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_36__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_46__*, align 8
  %15 = alloca %struct.TYPE_34__*, align 8
  %16 = alloca %struct.SrcList_item*, align 8
  %17 = alloca %struct.TYPE_36__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.SrcList_item*, align 8
  %21 = alloca %struct.TYPE_34__*, align 8
  %22 = alloca %struct.ExprList_item*, align 8
  %23 = alloca %struct.TYPE_47__*, align 8
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %25 = icmp ne %struct.TYPE_34__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SF_Resolved, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @WRC_Prune, align 4
  store i32 %35, i32* %3, align 4
  br label %611

36:                                               ; preds = %2
  %37 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %39, align 8
  store %struct.TYPE_36__* %40, %struct.TYPE_36__** %6, align 8
  %41 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %42, align 8
  store %struct.TYPE_35__* %43, %struct.TYPE_35__** %10, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_46__*, %struct.TYPE_46__** %45, align 8
  store %struct.TYPE_46__* %46, %struct.TYPE_46__** %14, align 8
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SF_Expanded, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %36
  %54 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %57 = call i32 @sqlite3SelectPrep(%struct.TYPE_35__* %54, %struct.TYPE_34__* %55, %struct.TYPE_36__* %56)
  %58 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %53
  %68 = load i32, i32* @WRC_Abort, align 4
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @WRC_Prune, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %3, align 4
  br label %611

73:                                               ; preds = %36
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %75, align 8
  %77 = icmp ne %struct.TYPE_34__* %76, null
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_34__* %79, %struct.TYPE_34__** %13, align 8
  br label %80

80:                                               ; preds = %593, %73
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %82 = icmp ne %struct.TYPE_34__* %81, null
  br i1 %82, label %83, label %599

83:                                               ; preds = %80
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SF_Expanded, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SF_Resolved, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32, i32* @SF_Resolved, align 4
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = call i32 @memset(%struct.TYPE_36__* %7, i32 0, i32 56)
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 6
  store %struct.TYPE_35__* %106, %struct.TYPE_35__** %107, align 8
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 5
  store %struct.TYPE_34__* %108, %struct.TYPE_34__** %109, align 8
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_36__* %7, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %83
  %116 = load i32, i32* @WRC_Abort, align 4
  store i32 %116, i32* %3, align 4
  br label %611

117:                                              ; preds = %83
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SF_Converted, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %168

124:                                              ; preds = %117
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_45__*, %struct.TYPE_45__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %127, i32 0, i32 1
  %129 = load %struct.SrcList_item*, %struct.SrcList_item** %128, align 8
  %130 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %129, i64 0
  %131 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %130, i32 0, i32 1
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %131, align 8
  store %struct.TYPE_34__* %132, %struct.TYPE_34__** %15, align 8
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_45__*, %struct.TYPE_45__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %144

139:                                              ; preds = %124
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %139, %124
  %145 = phi i1 [ false, %124 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %149, align 8
  %151 = icmp ne %struct.TYPE_34__* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br label %157

157:                                              ; preds = %152, %144
  %158 = phi i1 [ false, %144 ], [ %156, %152 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  br label %168

168:                                              ; preds = %157, %117
  store i32 0, i32* %11, align 4
  br label %169

169:                                              ; preds = %288, %168
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 6
  %173 = load %struct.TYPE_45__*, %struct.TYPE_45__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %170, %175
  br i1 %176, label %177, label %291

177:                                              ; preds = %169
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_45__*, %struct.TYPE_45__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %180, i32 0, i32 1
  %182 = load %struct.SrcList_item*, %struct.SrcList_item** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %182, i64 %184
  store %struct.SrcList_item* %185, %struct.SrcList_item** %16, align 8
  %186 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %187 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %186, i32 0, i32 1
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %187, align 8
  %189 = icmp ne %struct.TYPE_34__* %188, null
  br i1 %189, label %190, label %287

190:                                              ; preds = %177
  %191 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %192 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %191, i32 0, i32 1
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @SF_Resolved, align 4
  %197 = and i32 %195, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %287

199:                                              ; preds = %190
  store i32 0, i32* %18, align 4
  %200 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %19, align 8
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_36__* %203, %struct.TYPE_36__** %17, align 8
  br label %204

204:                                              ; preds = %215, %199
  %205 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %206 = icmp ne %struct.TYPE_36__* %205, null
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %18, align 4
  br label %215

215:                                              ; preds = %207
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_36__*, %struct.TYPE_36__** %217, align 8
  store %struct.TYPE_36__* %218, %struct.TYPE_36__** %17, align 8
  br label %204

219:                                              ; preds = %204
  %220 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %221 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %226 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %228, i32 0, i32 0
  store i8* %227, i8** %229, align 8
  br label %230

230:                                              ; preds = %224, %219
  %231 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %232 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %233 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %232, i32 0, i32 1
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %233, align 8
  %235 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %236 = call i32 @sqlite3ResolveSelectNames(%struct.TYPE_35__* %231, %struct.TYPE_34__* %234, %struct.TYPE_36__* %235)
  %237 = load i8*, i8** %19, align 8
  %238 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %230
  %245 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %244, %230
  %250 = load i32, i32* @WRC_Abort, align 4
  store i32 %250, i32* %3, align 4
  br label %611

251:                                              ; preds = %244
  %252 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_36__* %252, %struct.TYPE_36__** %17, align 8
  br label %253

253:                                              ; preds = %264, %251
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %255 = icmp ne %struct.TYPE_36__* %254, null
  br i1 %255, label %256, label %268

256:                                              ; preds = %253
  %257 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %18, align 4
  %261 = sext i32 %260 to i64
  %262 = sub nsw i64 %261, %259
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %18, align 4
  br label %264

264:                                              ; preds = %256
  %265 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_36__*, %struct.TYPE_36__** %266, align 8
  store %struct.TYPE_36__* %267, %struct.TYPE_36__** %17, align 8
  br label %253

268:                                              ; preds = %253
  %269 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %270 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = load i32, i32* %18, align 4
  %276 = icmp sle i32 %275, 0
  br label %277

277:                                              ; preds = %274, %268
  %278 = phi i1 [ false, %268 ], [ %276, %274 ]
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load i32, i32* %18, align 4
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i32
  %284 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %285 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %285, i32 0, i32 0
  store i32 %283, i32* %286, align 8
  br label %287

287:                                              ; preds = %277, %190, %177
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %11, align 4
  br label %169

291:                                              ; preds = %169
  %292 = load i32, i32* @NC_AllowAgg, align 4
  %293 = load i32, i32* @NC_AllowWin, align 4
  %294 = or i32 %292, %293
  %295 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  store i32 %294, i32* %295, align 8
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %296, i32 0, i32 6
  %298 = load %struct.TYPE_45__*, %struct.TYPE_45__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 3
  store %struct.TYPE_45__* %298, %struct.TYPE_45__** %299, align 8
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  store %struct.TYPE_36__* %300, %struct.TYPE_36__** %301, align 8
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 4
  %304 = load %struct.TYPE_40__*, %struct.TYPE_40__** %303, align 8
  %305 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__* %7, %struct.TYPE_40__* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %291
  %308 = load i32, i32* @WRC_Abort, align 4
  store i32 %308, i32* %3, align 4
  br label %611

309:                                              ; preds = %291
  %310 = load i32, i32* @NC_AllowWin, align 4
  %311 = xor i32 %310, -1
  %312 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = and i32 %313, %311
  store i32 %314, i32* %312, align 8
  %315 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @SF_Aggregate, align 4
  %319 = and i32 %317, %318
  %320 = icmp eq i32 %319, 0
  %321 = zext i1 %320 to i32
  %322 = call i32 @assert(i32 %321)
  %323 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %323, i32 0, i32 9
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %324, align 8
  store %struct.TYPE_37__* %325, %struct.TYPE_37__** %12, align 8
  %326 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %327 = icmp ne %struct.TYPE_37__* %326, null
  br i1 %327, label %334, label %328

328:                                              ; preds = %309
  %329 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @NC_HasAgg, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %350

334:                                              ; preds = %328, %309
  %335 = load i32, i32* @NC_MinMaxAgg, align 4
  %336 = load i32, i32* @SF_MinMaxAgg, align 4
  %337 = icmp eq i32 %335, %336
  %338 = zext i1 %337 to i32
  %339 = call i32 @assert(i32 %338)
  %340 = load i32, i32* @SF_Aggregate, align 4
  %341 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @NC_MinMaxAgg, align 4
  %344 = and i32 %342, %343
  %345 = or i32 %340, %344
  %346 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 8
  br label %356

350:                                              ; preds = %328
  %351 = load i32, i32* @NC_AllowAgg, align 4
  %352 = xor i32 %351, -1
  %353 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = and i32 %354, %352
  store i32 %355, i32* %353, align 8
  br label %356

356:                                              ; preds = %350, %334
  %357 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %357, i32 0, i32 8
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %356
  %362 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %363 = icmp ne %struct.TYPE_37__* %362, null
  br i1 %363, label %368, label %364

364:                                              ; preds = %361
  %365 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %366 = call i32 @sqlite3ErrorMsg(%struct.TYPE_35__* %365, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %367 = load i32, i32* @WRC_Abort, align 4
  store i32 %367, i32* %3, align 4
  br label %611

368:                                              ; preds = %361, %356
  %369 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @NC_UAggInfo, align 4
  %372 = load i32, i32* @NC_UUpsert, align 4
  %373 = or i32 %371, %372
  %374 = and i32 %370, %373
  %375 = icmp eq i32 %374, 0
  %376 = zext i1 %375 to i32
  %377 = call i32 @assert(i32 %376)
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i32 0, i32 4
  %380 = load %struct.TYPE_40__*, %struct.TYPE_40__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %381, i32 0, i32 0
  store %struct.TYPE_40__* %380, %struct.TYPE_40__** %382, align 8
  %383 = load i32, i32* @NC_UEList, align 4
  %384 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = or i32 %385, %383
  store i32 %386, i32* %384, align 8
  %387 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %387, i32 0, i32 8
  %389 = load i32, i32* %388, align 4
  %390 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_36__* %7, i32 %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %368
  %393 = load i32, i32* @WRC_Abort, align 4
  store i32 %393, i32* %3, align 4
  br label %611

394:                                              ; preds = %368
  %395 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 8
  %398 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_36__* %7, i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %394
  %401 = load i32, i32* @WRC_Abort, align 4
  store i32 %401, i32* %3, align 4
  br label %611

402:                                              ; preds = %394
  store i32 0, i32* %11, align 4
  br label %403

403:                                              ; preds = %435, %402
  %404 = load i32, i32* %11, align 4
  %405 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %405, i32 0, i32 6
  %407 = load %struct.TYPE_45__*, %struct.TYPE_45__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = icmp slt i32 %404, %409
  br i1 %410, label %411, label %438

411:                                              ; preds = %403
  %412 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %412, i32 0, i32 6
  %414 = load %struct.TYPE_45__*, %struct.TYPE_45__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %414, i32 0, i32 1
  %416 = load %struct.SrcList_item*, %struct.SrcList_item** %415, align 8
  %417 = load i32, i32* %11, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %416, i64 %418
  store %struct.SrcList_item* %419, %struct.SrcList_item** %20, align 8
  %420 = load %struct.SrcList_item*, %struct.SrcList_item** %20, align 8
  %421 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %420, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %411
  %426 = load %struct.SrcList_item*, %struct.SrcList_item** %20, align 8
  %427 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_40__*, %struct.TYPE_40__** %428, align 8
  %430 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__* %7, %struct.TYPE_40__* %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %425
  %433 = load i32, i32* @WRC_Abort, align 4
  store i32 %433, i32* %3, align 4
  br label %611

434:                                              ; preds = %425, %411
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %11, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %11, align 4
  br label %403

438:                                              ; preds = %403
  %439 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %439, align 8
  %440 = load i32, i32* @NC_AllowAgg, align 4
  %441 = load i32, i32* @NC_AllowWin, align 4
  %442 = or i32 %440, %441
  %443 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = or i32 %444, %442
  store i32 %445, i32* %443, align 8
  %446 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @SF_Converted, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %468

452:                                              ; preds = %438
  %453 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %453, i32 0, i32 6
  %455 = load %struct.TYPE_45__*, %struct.TYPE_45__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %455, i32 0, i32 1
  %457 = load %struct.SrcList_item*, %struct.SrcList_item** %456, align 8
  %458 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %457, i64 0
  %459 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %458, i32 0, i32 1
  %460 = load %struct.TYPE_34__*, %struct.TYPE_34__** %459, align 8
  store %struct.TYPE_34__* %460, %struct.TYPE_34__** %21, align 8
  %461 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %462 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %461, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %464, i32 0, i32 1
  store i64 %463, i64* %465, align 8
  %466 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %467 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %466, i32 0, i32 1
  store i64 0, i64* %467, align 8
  br label %468

468:                                              ; preds = %452, %438
  %469 = load i32, i32* %8, align 4
  %470 = load i32, i32* %9, align 4
  %471 = icmp sle i32 %469, %470
  br i1 %471, label %472, label %482

472:                                              ; preds = %468
  %473 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %474 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %474, i32 0, i32 1
  %476 = load i64, i64* %475, align 8
  %477 = inttoptr i64 %476 to %struct.TYPE_37__*
  %478 = call i64 @resolveOrderGroupBy(%struct.TYPE_36__* %7, %struct.TYPE_34__* %473, %struct.TYPE_37__* %477, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %472
  %481 = load i32, i32* @WRC_Abort, align 4
  store i32 %481, i32* %3, align 4
  br label %611

482:                                              ; preds = %472, %468
  %483 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %484 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %482
  %488 = load i32, i32* @WRC_Abort, align 4
  store i32 %488, i32* %3, align 4
  br label %611

489:                                              ; preds = %482
  %490 = load i32, i32* @NC_AllowWin, align 4
  %491 = xor i32 %490, -1
  %492 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = and i32 %493, %491
  store i32 %494, i32* %492, align 8
  %495 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %496 = icmp ne %struct.TYPE_37__* %495, null
  br i1 %496, label %497, label %537

497:                                              ; preds = %489
  %498 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %499 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %500 = call i64 @resolveOrderGroupBy(%struct.TYPE_36__* %7, %struct.TYPE_34__* %498, %struct.TYPE_37__* %499, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %507, label %502

502:                                              ; preds = %497
  %503 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %504 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %502, %497
  %508 = load i32, i32* @WRC_Abort, align 4
  store i32 %508, i32* %3, align 4
  br label %611

509:                                              ; preds = %502
  store i32 0, i32* %11, align 4
  %510 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %511 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %510, i32 0, i32 1
  %512 = load %struct.ExprList_item*, %struct.ExprList_item** %511, align 8
  store %struct.ExprList_item* %512, %struct.ExprList_item** %22, align 8
  br label %513

513:                                              ; preds = %531, %509
  %514 = load i32, i32* %11, align 4
  %515 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %516 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = icmp slt i32 %514, %517
  br i1 %518, label %519, label %536

519:                                              ; preds = %513
  %520 = load %struct.ExprList_item*, %struct.ExprList_item** %22, align 8
  %521 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = load i32, i32* @EP_Agg, align 4
  %524 = call i64 @ExprHasProperty(i32 %522, i32 %523)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %519
  %527 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %528 = call i32 @sqlite3ErrorMsg(%struct.TYPE_35__* %527, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %529 = load i32, i32* @WRC_Abort, align 4
  store i32 %529, i32* %3, align 4
  br label %611

530:                                              ; preds = %519
  br label %531

531:                                              ; preds = %530
  %532 = load i32, i32* %11, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %11, align 4
  %534 = load %struct.ExprList_item*, %struct.ExprList_item** %22, align 8
  %535 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %534, i32 1
  store %struct.ExprList_item* %535, %struct.ExprList_item** %22, align 8
  br label %513

536:                                              ; preds = %513
  br label %537

537:                                              ; preds = %536, %489
  %538 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %567

540:                                              ; preds = %537
  %541 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %542 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %541, i32 0, i32 5
  %543 = load %struct.TYPE_47__*, %struct.TYPE_47__** %542, align 8
  store %struct.TYPE_47__* %543, %struct.TYPE_47__** %23, align 8
  br label %544

544:                                              ; preds = %562, %540
  %545 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %546 = icmp ne %struct.TYPE_47__* %545, null
  br i1 %546, label %547, label %566

547:                                              ; preds = %544
  %548 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %549 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %548, i32 0, i32 1
  %550 = load %struct.TYPE_40__*, %struct.TYPE_40__** %549, align 8
  %551 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__* %7, %struct.TYPE_40__* %550)
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %559, label %553

553:                                              ; preds = %547
  %554 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %555 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %554, i32 0, i32 0
  %556 = load %struct.TYPE_40__*, %struct.TYPE_40__** %555, align 8
  %557 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__* %7, %struct.TYPE_40__* %556)
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %561

559:                                              ; preds = %553, %547
  %560 = load i32, i32* @WRC_Abort, align 4
  store i32 %560, i32* %3, align 4
  br label %611

561:                                              ; preds = %553
  br label %562

562:                                              ; preds = %561
  %563 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %564 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %563, i32 0, i32 2
  %565 = load %struct.TYPE_47__*, %struct.TYPE_47__** %564, align 8
  store %struct.TYPE_47__* %565, %struct.TYPE_47__** %23, align 8
  br label %544

566:                                              ; preds = %544
  br label %567

567:                                              ; preds = %566, %537
  %568 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %568, i32 0, i32 3
  %570 = load %struct.TYPE_38__*, %struct.TYPE_38__** %569, align 8
  %571 = icmp ne %struct.TYPE_38__* %570, null
  br i1 %571, label %572, label %593

572:                                              ; preds = %567
  %573 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %574 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %573, i32 0, i32 4
  %575 = load %struct.TYPE_40__*, %struct.TYPE_40__** %574, align 8
  %576 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %575, i32 0, i32 0
  %577 = load i64, i64* %576, align 8
  %578 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %579 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %578, i32 0, i32 3
  %580 = load %struct.TYPE_38__*, %struct.TYPE_38__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %580, i32 0, i32 0
  %582 = load %struct.TYPE_43__*, %struct.TYPE_43__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %582, i32 0, i32 0
  %584 = load i64, i64* %583, align 8
  %585 = icmp ne i64 %577, %584
  br i1 %585, label %586, label %593

586:                                              ; preds = %572
  %587 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %588 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %589 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %588, i32 0, i32 3
  %590 = load %struct.TYPE_38__*, %struct.TYPE_38__** %589, align 8
  %591 = call i32 @sqlite3SelectWrongNumTermsError(%struct.TYPE_35__* %587, %struct.TYPE_38__* %590)
  %592 = load i32, i32* @WRC_Abort, align 4
  store i32 %592, i32* %3, align 4
  br label %611

593:                                              ; preds = %572, %567
  %594 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %595 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %594, i32 0, i32 2
  %596 = load %struct.TYPE_34__*, %struct.TYPE_34__** %595, align 8
  store %struct.TYPE_34__* %596, %struct.TYPE_34__** %5, align 8
  %597 = load i32, i32* %9, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %9, align 4
  br label %80

599:                                              ; preds = %80
  %600 = load i32, i32* %8, align 4
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %609

602:                                              ; preds = %599
  %603 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %604 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %605 = call i64 @resolveCompoundOrderBy(%struct.TYPE_35__* %603, %struct.TYPE_34__* %604)
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %609

607:                                              ; preds = %602
  %608 = load i32, i32* @WRC_Abort, align 4
  store i32 %608, i32* %3, align 4
  br label %611

609:                                              ; preds = %602, %599
  %610 = load i32, i32* @WRC_Prune, align 4
  store i32 %610, i32* %3, align 4
  br label %611

611:                                              ; preds = %609, %607, %586, %559, %526, %507, %487, %480, %432, %400, %392, %364, %307, %249, %115, %71, %34
  %612 = load i32, i32* %3, align 4
  ret i32 %612
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SelectPrep(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @memset(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i64 @sqlite3ResolveExprNames(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @sqlite3ResolveSelectNames(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i64 @sqlite3ResolveExprListNames(%struct.TYPE_36__*, %struct.TYPE_40__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_35__*, i8*) #1

declare dso_local i64 @resolveOrderGroupBy(%struct.TYPE_36__*, %struct.TYPE_34__*, %struct.TYPE_37__*, i8*) #1

declare dso_local i64 @ExprHasProperty(i32, i32) #1

declare dso_local i32 @sqlite3SelectWrongNumTermsError(%struct.TYPE_35__*, %struct.TYPE_38__*) #1

declare dso_local i64 @resolveCompoundOrderBy(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
