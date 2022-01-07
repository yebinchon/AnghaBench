; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_allocateIndexInfo.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_allocateIndexInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.SrcList_item = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i64, i32 }
%struct.sqlite3_index_constraint = type { i32, i32, i32 }
%struct.sqlite3_index_orderby = type { i32, i32 }
%struct.sqlite3_index_constraint_usage = type { i32 }
%struct.HiddenIndexInfo = type { %struct.TYPE_24__*, %struct.TYPE_23__* }

@WO_EQUIV = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@WO_ALL = common dso_local global i32 0, align 4
@TERM_VNULL = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@JT_LEFT = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@WO_AUX = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_ISNULL = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_IS = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i32 0, align 4
@WO_LT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i32 0, align 4
@WO_LE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i32 0, align 4
@WO_GT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GT = common dso_local global i32 0, align 4
@WO_GE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_24__*, %struct.TYPE_23__*, i32, %struct.SrcList_item*, %struct.TYPE_25__*, i32*)* @allocateIndexInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @allocateIndexInfo(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32 %2, %struct.SrcList_item* %3, %struct.TYPE_25__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.SrcList_item*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sqlite3_index_constraint*, align 8
  %18 = alloca %struct.sqlite3_index_orderby*, align 8
  %19 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  %20 = alloca %struct.HiddenIndexInfo*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_26__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.SrcList_item* %3, %struct.SrcList_item** %11, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %21, align 8
  br label %32

32:                                               ; preds = %114, %6
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %32
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %43 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %114

47:                                               ; preds = %38
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %114

55:                                               ; preds = %47
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WO_EQUIV, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @IsPowerOfTwo(i32 %61)
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WO_IN, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @testcase(i32 %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @WO_ISNULL, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @testcase(i32 %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @WO_IS, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @testcase(i32 %80)
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WO_ALL, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @testcase(i32 %86)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @WO_EQUIV, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %55
  br label %114

96:                                               ; preds = %55
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TERM_VNULL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %114

104:                                              ; preds = %96
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, -1
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %104, %103, %95, %54, %46
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 1
  store %struct.TYPE_22__* %118, %struct.TYPE_22__** %21, align 8
  br label %32

119:                                              ; preds = %32
  store i32 0, i32* %22, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %121 = icmp ne %struct.TYPE_25__* %120, null
  br i1 %121, label %122, label %164

122:                                              ; preds = %119
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %25, align 4
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %154, %122
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %25, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %126
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  store %struct.TYPE_26__* %138, %struct.TYPE_26__** %26, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TK_COLUMN, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %130
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %149 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144, %130
  br label %157

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %126

157:                                              ; preds = %152, %126
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %25, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* %25, align 4
  store i32 %162, i32* %22, align 4
  br label %163

163:                                              ; preds = %161, %157
  br label %164

164:                                              ; preds = %163, %119
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 16, %169
  %171 = add i64 20, %170
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 8, %173
  %175 = add i64 %171, %174
  %176 = add i64 %175, 16
  %177 = trunc i64 %176 to i32
  %178 = call %struct.TYPE_21__* @sqlite3DbMallocZero(i32 %167, i32 %177)
  store %struct.TYPE_21__* %178, %struct.TYPE_21__** %23, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %180 = icmp eq %struct.TYPE_21__* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %164
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %183 = call i32 @sqlite3ErrorMsg(%struct.TYPE_24__* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %560

184:                                              ; preds = %164
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i64 1
  %187 = bitcast %struct.TYPE_21__* %186 to %struct.HiddenIndexInfo*
  store %struct.HiddenIndexInfo* %187, %struct.HiddenIndexInfo** %20, align 8
  %188 = load %struct.HiddenIndexInfo*, %struct.HiddenIndexInfo** %20, align 8
  %189 = getelementptr inbounds %struct.HiddenIndexInfo, %struct.HiddenIndexInfo* %188, i64 1
  %190 = bitcast %struct.HiddenIndexInfo* %189 to %struct.sqlite3_index_constraint*
  store %struct.sqlite3_index_constraint* %190, %struct.sqlite3_index_constraint** %17, align 8
  %191 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %191, i64 %193
  %195 = bitcast %struct.sqlite3_index_constraint* %194 to %struct.sqlite3_index_orderby*
  store %struct.sqlite3_index_orderby* %195, %struct.sqlite3_index_orderby** %18, align 8
  %196 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %197 = load i32, i32* %22, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %196, i64 %198
  %200 = bitcast %struct.sqlite3_index_orderby* %199 to %struct.sqlite3_index_constraint_usage*
  store %struct.sqlite3_index_constraint_usage* %200, %struct.sqlite3_index_constraint_usage** %19, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %22, align 4
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  %207 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 2
  %210 = bitcast i32* %209 to %struct.sqlite3_index_constraint**
  store %struct.sqlite3_index_constraint* %207, %struct.sqlite3_index_constraint** %210, align 4
  %211 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 1
  %214 = bitcast i32* %213 to %struct.sqlite3_index_orderby**
  store %struct.sqlite3_index_orderby* %211, %struct.sqlite3_index_orderby** %214, align 4
  %215 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %19, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = bitcast i32* %217 to %struct.sqlite3_index_constraint_usage**
  store %struct.sqlite3_index_constraint_usage* %215, %struct.sqlite3_index_constraint_usage** %218, align 4
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %220 = load %struct.HiddenIndexInfo*, %struct.HiddenIndexInfo** %20, align 8
  %221 = getelementptr inbounds %struct.HiddenIndexInfo, %struct.HiddenIndexInfo* %220, i32 0, i32 1
  store %struct.TYPE_23__* %219, %struct.TYPE_23__** %221, align 8
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %223 = load %struct.HiddenIndexInfo*, %struct.HiddenIndexInfo** %20, align 8
  %224 = getelementptr inbounds %struct.HiddenIndexInfo, %struct.HiddenIndexInfo* %223, i32 0, i32 0
  store %struct.TYPE_24__* %222, %struct.TYPE_24__** %224, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %226, align 8
  store %struct.TYPE_22__* %227, %struct.TYPE_22__** %21, align 8
  br label %228

228:                                              ; preds = %513, %184
  %229 = load i32, i32* %14, align 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %518

234:                                              ; preds = %228
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %239 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %513

243:                                              ; preds = %234
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %513

251:                                              ; preds = %243
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @WO_EQUIV, align 4
  %256 = xor i32 %255, -1
  %257 = and i32 %254, %256
  %258 = call i32 @IsPowerOfTwo(i32 %257)
  %259 = call i32 @assert(i32 %258)
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @WO_IN, align 4
  %264 = and i32 %262, %263
  %265 = call i32 @testcase(i32 %264)
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @WO_IS, align 4
  %270 = and i32 %268, %269
  %271 = call i32 @testcase(i32 %270)
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @WO_ISNULL, align 4
  %276 = and i32 %274, %275
  %277 = call i32 @testcase(i32 %276)
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @WO_ALL, align 4
  %282 = and i32 %280, %281
  %283 = call i32 @testcase(i32 %282)
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @WO_EQUIV, align 4
  %288 = xor i32 %287, -1
  %289 = and i32 %286, %288
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %251
  br label %513

292:                                              ; preds = %251
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @TERM_VNULL, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %292
  br label %513

300:                                              ; preds = %292
  %301 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %302 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @JT_LEFT, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %337

308:                                              ; preds = %300
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 5
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %310, align 8
  %312 = load i32, i32* @EP_FromJoin, align 4
  %313 = call i32 @ExprHasProperty(%struct.TYPE_17__* %311, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %337, label %315

315:                                              ; preds = %308
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @WO_IS, align 4
  %320 = load i32, i32* @WO_ISNULL, align 4
  %321 = or i32 %319, %320
  %322 = and i32 %318, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %337

324:                                              ; preds = %315
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @WO_ISNULL, align 4
  %329 = and i32 %327, %328
  %330 = call i32 @testcase(i32 %329)
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @WO_IS, align 4
  %335 = and i32 %333, %334
  %336 = call i32 @testcase(i32 %335)
  br label %513

337:                                              ; preds = %315, %308, %300
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 6
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp sge i32 %341, -1
  %343 = zext i1 %342 to i32
  %344 = call i32 @assert(i32 %343)
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 6
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %350 = load i32, i32* %15, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %349, i64 %351
  %353 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %352, i32 0, i32 0
  store i32 %348, i32* %353, align 4
  %354 = load i32, i32* %14, align 4
  %355 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %356 = load i32, i32* %15, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %355, i64 %357
  %359 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %358, i32 0, i32 1
  store i32 %354, i32* %359, align 4
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @WO_ALL, align 4
  %364 = and i32 %362, %363
  store i32 %364, i32* %27, align 4
  %365 = load i32, i32* %27, align 4
  %366 = load i32, i32* @WO_IN, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %337
  %369 = load i32, i32* @WO_EQ, align 4
  store i32 %369, i32* %27, align 4
  br label %370

370:                                              ; preds = %368, %337
  %371 = load i32, i32* %27, align 4
  %372 = load i32, i32* @WO_AUX, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %383

374:                                              ; preds = %370
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %379 = load i32, i32* %15, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %378, i64 %380
  %382 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %381, i32 0, i32 2
  store i32 %377, i32* %382, align 4
  br label %510

383:                                              ; preds = %370
  %384 = load i32, i32* %27, align 4
  %385 = load i32, i32* @WO_ISNULL, align 4
  %386 = load i32, i32* @WO_IS, align 4
  %387 = or i32 %385, %386
  %388 = and i32 %384, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %409

390:                                              ; preds = %383
  %391 = load i32, i32* %27, align 4
  %392 = load i32, i32* @WO_ISNULL, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %401

394:                                              ; preds = %390
  %395 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_ISNULL, align 4
  %396 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %397 = load i32, i32* %15, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %396, i64 %398
  %400 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %399, i32 0, i32 2
  store i32 %395, i32* %400, align 4
  br label %408

401:                                              ; preds = %390
  %402 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_IS, align 4
  %403 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %404 = load i32, i32* %15, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %403, i64 %405
  %407 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %406, i32 0, i32 2
  store i32 %402, i32* %407, align 4
  br label %408

408:                                              ; preds = %401, %394
  br label %509

409:                                              ; preds = %383
  %410 = load i32, i32* %27, align 4
  %411 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %412 = load i32, i32* %15, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %411, i64 %413
  %415 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %414, i32 0, i32 2
  store i32 %410, i32* %415, align 4
  %416 = load i32, i32* @WO_EQ, align 4
  %417 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %418 = icmp eq i32 %416, %417
  %419 = zext i1 %418 to i32
  %420 = call i32 @assert(i32 %419)
  %421 = load i32, i32* @WO_LT, align 4
  %422 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LT, align 4
  %423 = icmp eq i32 %421, %422
  %424 = zext i1 %423 to i32
  %425 = call i32 @assert(i32 %424)
  %426 = load i32, i32* @WO_LE, align 4
  %427 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LE, align 4
  %428 = icmp eq i32 %426, %427
  %429 = zext i1 %428 to i32
  %430 = call i32 @assert(i32 %429)
  %431 = load i32, i32* @WO_GT, align 4
  %432 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GT, align 4
  %433 = icmp eq i32 %431, %432
  %434 = zext i1 %433 to i32
  %435 = call i32 @assert(i32 %434)
  %436 = load i32, i32* @WO_GE, align 4
  %437 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GE, align 4
  %438 = icmp eq i32 %436, %437
  %439 = zext i1 %438 to i32
  %440 = call i32 @assert(i32 %439)
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @WO_IN, align 4
  %445 = load i32, i32* @WO_EQ, align 4
  %446 = or i32 %444, %445
  %447 = load i32, i32* @WO_LT, align 4
  %448 = or i32 %446, %447
  %449 = load i32, i32* @WO_LE, align 4
  %450 = or i32 %448, %449
  %451 = load i32, i32* @WO_GT, align 4
  %452 = or i32 %450, %451
  %453 = load i32, i32* @WO_GE, align 4
  %454 = or i32 %452, %453
  %455 = load i32, i32* @WO_AUX, align 4
  %456 = or i32 %454, %455
  %457 = and i32 %443, %456
  %458 = call i32 @assert(i32 %457)
  %459 = load i32, i32* %27, align 4
  %460 = load i32, i32* @WO_LT, align 4
  %461 = load i32, i32* @WO_LE, align 4
  %462 = or i32 %460, %461
  %463 = load i32, i32* @WO_GT, align 4
  %464 = or i32 %462, %463
  %465 = load i32, i32* @WO_GE, align 4
  %466 = or i32 %464, %465
  %467 = and i32 %459, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %508

469:                                              ; preds = %409
  %470 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 5
  %472 = load %struct.TYPE_17__*, %struct.TYPE_17__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = call i64 @sqlite3ExprIsVector(i32 %474)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %508

477:                                              ; preds = %469
  %478 = load i32, i32* %14, align 4
  %479 = icmp slt i32 %478, 16
  br i1 %479, label %480, label %485

480:                                              ; preds = %477
  %481 = load i32, i32* %14, align 4
  %482 = shl i32 1, %481
  %483 = load i32, i32* %24, align 4
  %484 = or i32 %483, %482
  store i32 %484, i32* %24, align 4
  br label %485

485:                                              ; preds = %480, %477
  %486 = load i32, i32* %27, align 4
  %487 = load i32, i32* @WO_LT, align 4
  %488 = icmp eq i32 %486, %487
  br i1 %488, label %489, label %496

489:                                              ; preds = %485
  %490 = load i32, i32* @WO_LE, align 4
  %491 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %492 = load i32, i32* %15, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %491, i64 %493
  %495 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %494, i32 0, i32 2
  store i32 %490, i32* %495, align 4
  br label %496

496:                                              ; preds = %489, %485
  %497 = load i32, i32* %27, align 4
  %498 = load i32, i32* @WO_GT, align 4
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %500, label %507

500:                                              ; preds = %496
  %501 = load i32, i32* @WO_GE, align 4
  %502 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %503 = load i32, i32* %15, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %502, i64 %504
  %506 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %505, i32 0, i32 2
  store i32 %501, i32* %506, align 4
  br label %507

507:                                              ; preds = %500, %496
  br label %508

508:                                              ; preds = %507, %469, %409
  br label %509

509:                                              ; preds = %508, %408
  br label %510

510:                                              ; preds = %509, %374
  %511 = load i32, i32* %15, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %15, align 4
  br label %513

513:                                              ; preds = %510, %324, %299, %291, %250, %242
  %514 = load i32, i32* %14, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %14, align 4
  %516 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %517 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %516, i32 1
  store %struct.TYPE_22__* %517, %struct.TYPE_22__** %21, align 8
  br label %228

518:                                              ; preds = %228
  store i32 0, i32* %14, align 4
  br label %519

519:                                              ; preds = %553, %518
  %520 = load i32, i32* %14, align 4
  %521 = load i32, i32* %22, align 4
  %522 = icmp slt i32 %520, %521
  br i1 %522, label %523, label %556

523:                                              ; preds = %519
  %524 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %525 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %524, i32 0, i32 1
  %526 = load %struct.TYPE_20__*, %struct.TYPE_20__** %525, align 8
  %527 = load i32, i32* %14, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %529, i32 0, i32 1
  %531 = load %struct.TYPE_26__*, %struct.TYPE_26__** %530, align 8
  store %struct.TYPE_26__* %531, %struct.TYPE_26__** %28, align 8
  %532 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %533 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %532, i32 0, i32 2
  %534 = load i32, i32* %533, align 8
  %535 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %536 = load i32, i32* %14, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %535, i64 %537
  %539 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %538, i32 0, i32 1
  store i32 %534, i32* %539, align 4
  %540 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %541 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %540, i32 0, i32 1
  %542 = load %struct.TYPE_20__*, %struct.TYPE_20__** %541, align 8
  %543 = load i32, i32* %14, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %542, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %549 = load i32, i32* %14, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %548, i64 %550
  %552 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %551, i32 0, i32 0
  store i32 %547, i32* %552, align 4
  br label %553

553:                                              ; preds = %523
  %554 = load i32, i32* %14, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %14, align 4
  br label %519

556:                                              ; preds = %519
  %557 = load i32, i32* %24, align 4
  %558 = load i32*, i32** %13, align 8
  store i32 %557, i32* %558, align 4
  %559 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %559, %struct.TYPE_21__** %7, align 8
  br label %560

560:                                              ; preds = %556, %181
  %561 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  ret %struct.TYPE_21__* %561
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsPowerOfTwo(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_21__* @sqlite3DbMallocZero(i32, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @sqlite3ExprIsVector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
