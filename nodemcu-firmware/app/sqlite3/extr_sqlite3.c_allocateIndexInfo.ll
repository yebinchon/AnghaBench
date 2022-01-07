; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_allocateIndexInfo.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_allocateIndexInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.SrcList_item = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.sqlite3_index_constraint = type { i32, i32, i32 }
%struct.sqlite3_index_orderby = type { i32, i32 }
%struct.sqlite3_index_constraint_usage = type { i32 }

@WO_EQUIV = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@WO_ALL = common dso_local global i32 0, align 4
@TERM_VNULL = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@WO_EQ = common dso_local global i32 0, align 4
@WO_MATCH = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i32 0, align 4
@WO_LT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i32 0, align 4
@WO_LE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i32 0, align 4
@WO_GT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GT = common dso_local global i32 0, align 4
@WO_GE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_22__*, %struct.TYPE_21__*, i32, %struct.SrcList_item*, %struct.TYPE_23__*, i32*)* @allocateIndexInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @allocateIndexInfo(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32 %2, %struct.SrcList_item* %3, %struct.TYPE_23__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.SrcList_item*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sqlite3_index_constraint*, align 8
  %18 = alloca %struct.sqlite3_index_orderby*, align 8
  %19 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_24__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.SrcList_item* %3, %struct.SrcList_item** %11, align 8
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %20, align 8
  br label %31

31:                                               ; preds = %117, %6
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %122

37:                                               ; preds = %31
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %42 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %117

46:                                               ; preds = %37
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %117

54:                                               ; preds = %46
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WO_EQUIV, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call i32 @IsPowerOfTwo(i32 %60)
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WO_IN, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @testcase(i32 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @WO_ISNULL, align 4
  %73 = and i32 %71, %72
  %74 = call i32 @testcase(i32 %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WO_IS, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @testcase(i32 %79)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @WO_ALL, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @testcase(i32 %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @WO_ISNULL, align 4
  %91 = load i32, i32* @WO_EQUIV, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @WO_IS, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %89, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %54
  br label %117

99:                                               ; preds = %54
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TERM_VNULL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %117

107:                                              ; preds = %99
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %111, -1
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %107, %106, %98, %53, %45
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 1
  store %struct.TYPE_20__* %121, %struct.TYPE_20__** %20, align 8
  br label %31

122:                                              ; preds = %31
  store i32 0, i32* %21, align 4
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %124 = icmp ne %struct.TYPE_23__* %123, null
  br i1 %124, label %125, label %167

125:                                              ; preds = %122
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %24, align 4
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %157, %125
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %24, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %160

133:                                              ; preds = %129
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %140, align 8
  store %struct.TYPE_24__* %141, %struct.TYPE_24__** %25, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TK_COLUMN, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %133
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %152 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %147, %133
  br label %160

156:                                              ; preds = %147
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %129

160:                                              ; preds = %155, %129
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %24, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* %24, align 4
  store i32 %165, i32* %21, align 4
  br label %166

166:                                              ; preds = %164, %160
  br label %167

167:                                              ; preds = %166, %122
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 16, %172
  %174 = add i64 20, %173
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 8, %176
  %178 = add i64 %174, %177
  %179 = trunc i64 %178 to i32
  %180 = call %struct.TYPE_19__* @sqlite3DbMallocZero(i32 %170, i32 %179)
  store %struct.TYPE_19__* %180, %struct.TYPE_19__** %22, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %182 = icmp eq %struct.TYPE_19__* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %167
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %185 = call i32 @sqlite3ErrorMsg(%struct.TYPE_22__* %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  br label %492

186:                                              ; preds = %167
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i64 1
  %189 = bitcast %struct.TYPE_19__* %188 to %struct.sqlite3_index_constraint*
  store %struct.sqlite3_index_constraint* %189, %struct.sqlite3_index_constraint** %17, align 8
  %190 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %190, i64 %192
  %194 = bitcast %struct.sqlite3_index_constraint* %193 to %struct.sqlite3_index_orderby*
  store %struct.sqlite3_index_orderby* %194, %struct.sqlite3_index_orderby** %18, align 8
  %195 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %195, i64 %197
  %199 = bitcast %struct.sqlite3_index_orderby* %198 to %struct.sqlite3_index_constraint_usage*
  store %struct.sqlite3_index_constraint_usage* %199, %struct.sqlite3_index_constraint_usage** %19, align 8
  %200 = load i32, i32* %16, align 4
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %21, align 4
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 2
  %209 = bitcast i32* %208 to %struct.sqlite3_index_constraint**
  store %struct.sqlite3_index_constraint* %206, %struct.sqlite3_index_constraint** %209, align 4
  %210 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 1
  %213 = bitcast i32* %212 to %struct.sqlite3_index_orderby**
  store %struct.sqlite3_index_orderby* %210, %struct.sqlite3_index_orderby** %213, align 4
  %214 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %19, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = bitcast i32* %216 to %struct.sqlite3_index_constraint_usage**
  store %struct.sqlite3_index_constraint_usage* %214, %struct.sqlite3_index_constraint_usage** %217, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %219, align 8
  store %struct.TYPE_20__* %220, %struct.TYPE_20__** %20, align 8
  br label %221

221:                                              ; preds = %445, %186
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %450

227:                                              ; preds = %221
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %232 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %230, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  br label %445

236:                                              ; preds = %227
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %10, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %445

244:                                              ; preds = %236
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @WO_EQUIV, align 4
  %249 = xor i32 %248, -1
  %250 = and i32 %247, %249
  %251 = call i32 @IsPowerOfTwo(i32 %250)
  %252 = call i32 @assert(i32 %251)
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @WO_IN, align 4
  %257 = and i32 %255, %256
  %258 = call i32 @testcase(i32 %257)
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @WO_IS, align 4
  %263 = and i32 %261, %262
  %264 = call i32 @testcase(i32 %263)
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @WO_ISNULL, align 4
  %269 = and i32 %267, %268
  %270 = call i32 @testcase(i32 %269)
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @WO_ALL, align 4
  %275 = and i32 %273, %274
  %276 = call i32 @testcase(i32 %275)
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @WO_ISNULL, align 4
  %281 = load i32, i32* @WO_EQUIV, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @WO_IS, align 4
  %284 = or i32 %282, %283
  %285 = xor i32 %284, -1
  %286 = and i32 %279, %285
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %244
  br label %445

289:                                              ; preds = %244
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @TERM_VNULL, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  br label %445

297:                                              ; preds = %289
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 6
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp sge i32 %301, -1
  %303 = zext i1 %302 to i32
  %304 = call i32 @assert(i32 %303)
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %310 = load i32, i32* %15, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %309, i64 %311
  %313 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %312, i32 0, i32 0
  store i32 %308, i32* %313, align 4
  %314 = load i32, i32* %14, align 4
  %315 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %316 = load i32, i32* %15, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %315, i64 %317
  %319 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %318, i32 0, i32 1
  store i32 %314, i32* %319, align 4
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @WO_ALL, align 4
  %324 = and i32 %322, %323
  store i32 %324, i32* %26, align 4
  %325 = load i32, i32* %26, align 4
  %326 = load i32, i32* @WO_IN, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %297
  %329 = load i32, i32* @WO_EQ, align 4
  store i32 %329, i32* %26, align 4
  br label %330

330:                                              ; preds = %328, %297
  %331 = load i32, i32* %26, align 4
  %332 = load i32, i32* @WO_MATCH, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %330
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  store i32 %337, i32* %26, align 4
  br label %338

338:                                              ; preds = %334, %330
  %339 = load i32, i32* %26, align 4
  %340 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %341 = load i32, i32* %15, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %340, i64 %342
  %344 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %343, i32 0, i32 2
  store i32 %339, i32* %344, align 4
  %345 = load i32, i32* @WO_EQ, align 4
  %346 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %347 = icmp eq i32 %345, %346
  %348 = zext i1 %347 to i32
  %349 = call i32 @assert(i32 %348)
  %350 = load i32, i32* @WO_LT, align 4
  %351 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LT, align 4
  %352 = icmp eq i32 %350, %351
  %353 = zext i1 %352 to i32
  %354 = call i32 @assert(i32 %353)
  %355 = load i32, i32* @WO_LE, align 4
  %356 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LE, align 4
  %357 = icmp eq i32 %355, %356
  %358 = zext i1 %357 to i32
  %359 = call i32 @assert(i32 %358)
  %360 = load i32, i32* @WO_GT, align 4
  %361 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GT, align 4
  %362 = icmp eq i32 %360, %361
  %363 = zext i1 %362 to i32
  %364 = call i32 @assert(i32 %363)
  %365 = load i32, i32* @WO_GE, align 4
  %366 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GE, align 4
  %367 = icmp eq i32 %365, %366
  %368 = zext i1 %367 to i32
  %369 = call i32 @assert(i32 %368)
  %370 = load i32, i32* @WO_MATCH, align 4
  %371 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_MATCH, align 4
  %372 = icmp eq i32 %370, %371
  %373 = zext i1 %372 to i32
  %374 = call i32 @assert(i32 %373)
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @WO_IN, align 4
  %379 = load i32, i32* @WO_EQ, align 4
  %380 = or i32 %378, %379
  %381 = load i32, i32* @WO_LT, align 4
  %382 = or i32 %380, %381
  %383 = load i32, i32* @WO_LE, align 4
  %384 = or i32 %382, %383
  %385 = load i32, i32* @WO_GT, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @WO_GE, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @WO_MATCH, align 4
  %390 = or i32 %388, %389
  %391 = and i32 %377, %390
  %392 = call i32 @assert(i32 %391)
  %393 = load i32, i32* %26, align 4
  %394 = load i32, i32* @WO_LT, align 4
  %395 = load i32, i32* @WO_LE, align 4
  %396 = or i32 %394, %395
  %397 = load i32, i32* @WO_GT, align 4
  %398 = or i32 %396, %397
  %399 = load i32, i32* @WO_GE, align 4
  %400 = or i32 %398, %399
  %401 = and i32 %393, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %442

403:                                              ; preds = %338
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 5
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = call i64 @sqlite3ExprIsVector(i32 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %442

411:                                              ; preds = %403
  %412 = load i32, i32* %14, align 4
  %413 = icmp slt i32 %412, 16
  br i1 %413, label %414, label %419

414:                                              ; preds = %411
  %415 = load i32, i32* %14, align 4
  %416 = shl i32 1, %415
  %417 = load i32, i32* %23, align 4
  %418 = or i32 %417, %416
  store i32 %418, i32* %23, align 4
  br label %419

419:                                              ; preds = %414, %411
  %420 = load i32, i32* %26, align 4
  %421 = load i32, i32* @WO_LT, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %419
  %424 = load i32, i32* @WO_LE, align 4
  %425 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %426 = load i32, i32* %15, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %425, i64 %427
  %429 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %428, i32 0, i32 2
  store i32 %424, i32* %429, align 4
  br label %430

430:                                              ; preds = %423, %419
  %431 = load i32, i32* %26, align 4
  %432 = load i32, i32* @WO_GT, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %434, label %441

434:                                              ; preds = %430
  %435 = load i32, i32* @WO_GE, align 4
  %436 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %437 = load i32, i32* %15, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %436, i64 %438
  %440 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %439, i32 0, i32 2
  store i32 %435, i32* %440, align 4
  br label %441

441:                                              ; preds = %434, %430
  br label %442

442:                                              ; preds = %441, %403, %338
  %443 = load i32, i32* %15, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %15, align 4
  br label %445

445:                                              ; preds = %442, %296, %288, %243, %235
  %446 = load i32, i32* %14, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %14, align 4
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 1
  store %struct.TYPE_20__* %449, %struct.TYPE_20__** %20, align 8
  br label %221

450:                                              ; preds = %221
  store i32 0, i32* %14, align 4
  br label %451

451:                                              ; preds = %485, %450
  %452 = load i32, i32* %14, align 4
  %453 = load i32, i32* %21, align 4
  %454 = icmp slt i32 %452, %453
  br i1 %454, label %455, label %488

455:                                              ; preds = %451
  %456 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %457 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %456, i32 0, i32 1
  %458 = load %struct.TYPE_17__*, %struct.TYPE_17__** %457, align 8
  %459 = load i32, i32* %14, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %461, i32 0, i32 1
  %463 = load %struct.TYPE_24__*, %struct.TYPE_24__** %462, align 8
  store %struct.TYPE_24__* %463, %struct.TYPE_24__** %27, align 8
  %464 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %465 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %468 = load i32, i32* %14, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %467, i64 %469
  %471 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %470, i32 0, i32 1
  store i32 %466, i32* %471, align 4
  %472 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %473 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_17__*, %struct.TYPE_17__** %473, align 8
  %475 = load i32, i32* %14, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %481 = load i32, i32* %14, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %480, i64 %482
  %484 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %483, i32 0, i32 0
  store i32 %479, i32* %484, align 4
  br label %485

485:                                              ; preds = %455
  %486 = load i32, i32* %14, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %14, align 4
  br label %451

488:                                              ; preds = %451
  %489 = load i32, i32* %23, align 4
  %490 = load i32*, i32** %13, align 8
  store i32 %489, i32* %490, align 4
  %491 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %491, %struct.TYPE_19__** %7, align 8
  br label %492

492:                                              ; preds = %488, %183
  %493 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  ret %struct.TYPE_19__* %493
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsPowerOfTwo(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_19__* @sqlite3DbMallocZero(i32, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_22__*, i8*) #1

declare dso_local i64 @sqlite3ExprIsVector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
