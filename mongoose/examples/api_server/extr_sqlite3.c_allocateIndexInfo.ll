; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_allocateIndexInfo.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_allocateIndexInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__*, %struct.SrcList_item*, %struct.TYPE_21__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.SrcList_item = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.sqlite3_index_constraint = type { i32, i32, i32 }
%struct.sqlite3_index_orderby = type { i32, i32 }
%struct.sqlite3_index_constraint_usage = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Recomputing index info for %s...\0A\00", align 1
@WO_EQUIV = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@TERM_VNULL = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@WO_ALL = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i32 0, align 4
@WO_LT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i32 0, align 4
@WO_LE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i32 0, align 4
@WO_GT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GT = common dso_local global i32 0, align 4
@WO_GE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GE = common dso_local global i32 0, align 4
@WO_MATCH = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_22__*)* @allocateIndexInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @allocateIndexInfo(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.SrcList_item*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sqlite3_index_constraint*, align 8
  %12 = alloca %struct.sqlite3_index_orderby*, align 8
  %13 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %4, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %5, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load %struct.SrcList_item*, %struct.SrcList_item** %28, align 8
  store %struct.SrcList_item* %29, %struct.SrcList_item** %6, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %7, align 8
  %33 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %34 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @WHERETRACE(i8* %39)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  store %struct.TYPE_20__* %43, %struct.TYPE_20__** %14, align 8
  br label %44

44:                                               ; preds = %98, %1
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %103

50:                                               ; preds = %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %55 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %98

59:                                               ; preds = %50
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WO_EQUIV, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @IsPowerOfTwo(i32 %65)
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WO_IN, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @testcase(i32 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @WO_ISNULL, align 4
  %78 = and i32 %76, %77
  %79 = call i32 @testcase(i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @WO_ISNULL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %59
  br label %98

87:                                               ; preds = %59
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TERM_VNULL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %98

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %94, %86, %58
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 1
  store %struct.TYPE_20__* %102, %struct.TYPE_20__** %14, align 8
  br label %44

103:                                              ; preds = %44
  store i32 0, i32* %15, align 4
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %105 = icmp ne %struct.TYPE_24__* %104, null
  br i1 %105, label %106, label %148

106:                                              ; preds = %103
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %138, %106
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %110
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %18, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TK_COLUMN, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %136, label %128

128:                                              ; preds = %114
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %133 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128, %114
  br label %141

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %110

141:                                              ; preds = %136, %110
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %17, align 4
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %145, %141
  br label %148

148:                                              ; preds = %147, %103
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 16, %153
  %155 = add i64 20, %154
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 8, %157
  %159 = add i64 %155, %158
  %160 = trunc i64 %159 to i32
  %161 = call %struct.TYPE_19__* @sqlite3DbMallocZero(i32 %151, i32 %160)
  store %struct.TYPE_19__* %161, %struct.TYPE_19__** %16, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %163 = icmp eq %struct.TYPE_19__* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %148
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %166 = call i32 @sqlite3ErrorMsg(%struct.TYPE_23__* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %381

167:                                              ; preds = %148
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i64 1
  %170 = bitcast %struct.TYPE_19__* %169 to %struct.sqlite3_index_constraint*
  store %struct.sqlite3_index_constraint* %170, %struct.sqlite3_index_constraint** %11, align 8
  %171 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %171, i64 %173
  %175 = bitcast %struct.sqlite3_index_constraint* %174 to %struct.sqlite3_index_orderby*
  store %struct.sqlite3_index_orderby* %175, %struct.sqlite3_index_orderby** %12, align 8
  %176 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %12, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %176, i64 %178
  %180 = bitcast %struct.sqlite3_index_orderby* %179 to %struct.sqlite3_index_constraint_usage*
  store %struct.sqlite3_index_constraint_usage* %180, %struct.sqlite3_index_constraint_usage** %13, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 2
  %190 = bitcast i32* %189 to %struct.sqlite3_index_constraint**
  store %struct.sqlite3_index_constraint* %187, %struct.sqlite3_index_constraint** %190, align 4
  %191 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %12, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = bitcast i32* %193 to %struct.sqlite3_index_orderby**
  store %struct.sqlite3_index_orderby* %191, %struct.sqlite3_index_orderby** %194, align 4
  %195 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %13, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = bitcast i32* %197 to %struct.sqlite3_index_constraint_usage**
  store %struct.sqlite3_index_constraint_usage* %195, %struct.sqlite3_index_constraint_usage** %198, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %200, align 8
  store %struct.TYPE_20__* %201, %struct.TYPE_20__** %14, align 8
  br label %202

202:                                              ; preds = %336, %167
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %341

208:                                              ; preds = %202
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %213 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %211, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  br label %336

217:                                              ; preds = %208
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @WO_EQUIV, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 %220, %222
  %224 = call i32 @IsPowerOfTwo(i32 %223)
  %225 = call i32 @assert(i32 %224)
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @WO_IN, align 4
  %230 = and i32 %228, %229
  %231 = call i32 @testcase(i32 %230)
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @WO_ISNULL, align 4
  %236 = and i32 %234, %235
  %237 = call i32 @testcase(i32 %236)
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @WO_ISNULL, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %217
  br label %336

245:                                              ; preds = %217
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @TERM_VNULL, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %336

253:                                              ; preds = %245
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %258, i64 %260
  %262 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %261, i32 0, i32 2
  store i32 %257, i32* %262, align 4
  %263 = load i32, i32* %8, align 4
  %264 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %264, i64 %266
  %268 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %267, i32 0, i32 0
  store i32 %263, i32* %268, align 4
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @WO_ALL, align 4
  %273 = and i32 %271, %272
  store i32 %273, i32* %19, align 4
  %274 = load i32, i32* %19, align 4
  %275 = load i32, i32* @WO_IN, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %253
  %278 = load i32, i32* @WO_EQ, align 4
  store i32 %278, i32* %19, align 4
  br label %279

279:                                              ; preds = %277, %253
  %280 = load i32, i32* %19, align 4
  %281 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %281, i64 %283
  %285 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %284, i32 0, i32 1
  store i32 %280, i32* %285, align 4
  %286 = load i32, i32* @WO_EQ, align 4
  %287 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %288 = icmp eq i32 %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @assert(i32 %289)
  %291 = load i32, i32* @WO_LT, align 4
  %292 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LT, align 4
  %293 = icmp eq i32 %291, %292
  %294 = zext i1 %293 to i32
  %295 = call i32 @assert(i32 %294)
  %296 = load i32, i32* @WO_LE, align 4
  %297 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LE, align 4
  %298 = icmp eq i32 %296, %297
  %299 = zext i1 %298 to i32
  %300 = call i32 @assert(i32 %299)
  %301 = load i32, i32* @WO_GT, align 4
  %302 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GT, align 4
  %303 = icmp eq i32 %301, %302
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert(i32 %304)
  %306 = load i32, i32* @WO_GE, align 4
  %307 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GE, align 4
  %308 = icmp eq i32 %306, %307
  %309 = zext i1 %308 to i32
  %310 = call i32 @assert(i32 %309)
  %311 = load i32, i32* @WO_MATCH, align 4
  %312 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_MATCH, align 4
  %313 = icmp eq i32 %311, %312
  %314 = zext i1 %313 to i32
  %315 = call i32 @assert(i32 %314)
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @WO_IN, align 4
  %320 = load i32, i32* @WO_EQ, align 4
  %321 = or i32 %319, %320
  %322 = load i32, i32* @WO_LT, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @WO_LE, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @WO_GT, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* @WO_GE, align 4
  %329 = or i32 %327, %328
  %330 = load i32, i32* @WO_MATCH, align 4
  %331 = or i32 %329, %330
  %332 = and i32 %318, %331
  %333 = call i32 @assert(i32 %332)
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %9, align 4
  br label %336

336:                                              ; preds = %279, %252, %244, %216
  %337 = load i32, i32* %8, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %8, align 4
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 1
  store %struct.TYPE_20__* %340, %struct.TYPE_20__** %14, align 8
  br label %202

341:                                              ; preds = %202
  store i32 0, i32* %8, align 4
  br label %342

342:                                              ; preds = %376, %341
  %343 = load i32, i32* %8, align 4
  %344 = load i32, i32* %15, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %379

346:                                              ; preds = %342
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %353, align 8
  store %struct.TYPE_15__* %354, %struct.TYPE_15__** %20, align 8
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %12, align 8
  %359 = load i32, i32* %8, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %358, i64 %360
  %362 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %361, i32 0, i32 1
  store i32 %357, i32* %362, align 4
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %364, align 8
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %12, align 8
  %372 = load i32, i32* %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %371, i64 %373
  %375 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %374, i32 0, i32 0
  store i32 %370, i32* %375, align 4
  br label %376

376:                                              ; preds = %346
  %377 = load i32, i32* %8, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %8, align 4
  br label %342

379:                                              ; preds = %342
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %380, %struct.TYPE_19__** %2, align 8
  br label %381

381:                                              ; preds = %379, %164
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  ret %struct.TYPE_19__* %382
}

declare dso_local i32 @WHERETRACE(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsPowerOfTwo(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_19__* @sqlite3DbMallocZero(i32, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_23__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
