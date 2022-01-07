; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_relation.c_logicalrep_rel_open.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_relation.c_logicalrep_rel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32*, i32, i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_19__ }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i64 }

@LogicalRepRelMap = common dso_local global i32* null, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"no relation map entry for remote relation ID %u\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"logical replication target relation \22%s.%s\22 does not exist\00", align 1
@NoLock = common dso_local global i32 0, align 4
@LogicalRepRelMapContext = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"logical replication target relation \22%s.%s\22 is missing some replicated columns\00", align 1
@INDEX_ATTR_BITMAP_IDENTITY_KEY = common dso_local global i32 0, align 4
@INDEX_ATTR_BITMAP_PRIMARY_KEY = common dso_local global i32 0, align 4
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@FirstLowInvalidHeapAttributeNumber = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [90 x i8] c"logical replication target relation \22%s.%s\22 uses system columns in REPLICA IDENTITY index\00", align 1
@SUBREL_STATE_READY = common dso_local global i64 0, align 8
@MySubscription = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @logicalrep_rel_open(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load i32*, i32** @LogicalRepRelMap, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @logicalrep_relmap_init()
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32*, i32** @LogicalRepRelMap, align 8
  %23 = bitcast i32* %3 to i8*
  %24 = load i32, i32* @HASH_FIND, align 4
  %25 = call %struct.TYPE_20__* @hash_search(i32* %22, i8* %23, i32 %24, i32* %6)
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @OidIsValid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %256, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 6
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %12, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @makeRangeVar(i32 %43, i32 %46, i32 -1)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @RangeVarGetRelid(i32 %47, i32 %48, i32 1)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @OidIsValid(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  %64 = call i32 @ereport(i32 %54, i32 %63)
  br label %65

65:                                               ; preds = %53, %38
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @NoLock, align 4
  %68 = call i8* @table_open(i32 %66, i32 %67)
  %69 = bitcast i8* %68 to %struct.TYPE_15__*
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 5
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CheckSubscriptionRelkind(i32 %78, i32 %81, i32 %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = call %struct.TYPE_18__* @RelationGetDescr(%struct.TYPE_15__* %88)
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %11, align 8
  %90 = load i32, i32* @LogicalRepRelMapContext, align 4
  %91 = call i32 @MemoryContextSwitchTo(i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i32* @palloc(i32 %97)
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @MemoryContextSwitchTo(i32 %101)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %149, %65
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %152

109:                                              ; preds = %103
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call %struct.TYPE_21__* @TupleDescAttr(%struct.TYPE_18__* %110, i32 %111)
  store %struct.TYPE_21__* %112, %struct.TYPE_21__** %15, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %109
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117, %109
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 -1, i32* %128, align 4
  br label %149

129:                                              ; preds = %117
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @NameStr(i32 %133)
  %135 = call i32 @logicalrep_rel_att_by_name(%struct.TYPE_19__* %130, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %136, i32* %142, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %129
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %145, %129
  br label %149

149:                                              ; preds = %148, %122
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %103

152:                                              ; preds = %103
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load i32, i32* @ERROR, align 4
  %160 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %161 = call i32 @errcode(i32 %160)
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %167)
  %169 = call i32 @ereport(i32 %159, i32 %168)
  br label %170

170:                                              ; preds = %158, %152
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 5
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = load i32, i32* @INDEX_ATTR_BITMAP_IDENTITY_KEY, align 4
  %177 = call i32* @RelationGetIndexAttrBitmap(%struct.TYPE_15__* %175, i32 %176)
  store i32* %177, i32** %10, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %198

180:                                              ; preds = %170
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = load i32, i32* @INDEX_ATTR_BITMAP_PRIMARY_KEY, align 4
  %185 = call i32* @RelationGetIndexAttrBitmap(%struct.TYPE_15__* %183, i32 %184)
  store i32* %185, i32** %10, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %197

188:                                              ; preds = %180
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  store i32 0, i32* %196, align 8
  br label %197

197:                                              ; preds = %194, %188, %180
  br label %198

198:                                              ; preds = %197, %170
  store i32 -1, i32* %8, align 4
  br label %199

199:                                              ; preds = %251, %198
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @bms_next_member(i32* %200, i32 %201)
  store i32 %202, i32* %8, align 4
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %252

204:                                              ; preds = %199
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @FirstLowInvalidHeapAttributeNumber, align 4
  %207 = add nsw i32 %205, %206
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = call i32 @AttrNumberIsForUserDefinedAttr(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* @ERROR, align 4
  %213 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %214 = call i32 @errcode(i32 %213)
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @errmsg(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i32 %217, i32 %220)
  %222 = call i32 @ereport(i32 %212, i32 %221)
  br label %223

223:                                              ; preds = %211, %204
  %224 = load i32, i32* %16, align 4
  %225 = call i32 @AttrNumberGetAttrOffset(i32 %224)
  store i32 %225, i32* %16, align 4
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %248, label %234

234:                                              ; preds = %223
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @bms_is_member(i64 %242, i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %234, %223
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 1
  store i32 0, i32* %250, align 8
  br label %252

251:                                              ; preds = %234
  br label %199

252:                                              ; preds = %248, %199
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 4
  br label %265

256:                                              ; preds = %32
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %4, align 4
  %261 = call i8* @table_open(i32 %259, i32 %260)
  %262 = bitcast i8* %261 to %struct.TYPE_15__*
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 5
  store %struct.TYPE_15__* %262, %struct.TYPE_15__** %264, align 8
  br label %265

265:                                              ; preds = %256, %252
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @SUBREL_STATE_READY, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %283

271:                                              ; preds = %265
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** @MySubscription, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 3
  %280 = call i64 @GetSubscriptionRelState(i32 %274, i32 %277, i32* %279, i32 1)
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 2
  store i64 %280, i64* %282, align 8
  br label %283

283:                                              ; preds = %271, %265
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  ret %struct.TYPE_20__* %284
}

declare dso_local i32 @logicalrep_relmap_init(...) #1

declare dso_local %struct.TYPE_20__* @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @RangeVarGetRelid(i32, i32, i32) #1

declare dso_local i32 @makeRangeVar(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i8* @table_open(i32, i32) #1

declare dso_local i32 @CheckSubscriptionRelkind(i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @RelationGetDescr(%struct.TYPE_15__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local %struct.TYPE_21__* @TupleDescAttr(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @logicalrep_rel_att_by_name(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @RelationGetIndexAttrBitmap(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @bms_next_member(i32*, i32) #1

declare dso_local i32 @AttrNumberIsForUserDefinedAttr(i32) #1

declare dso_local i32 @AttrNumberGetAttrOffset(i32) #1

declare dso_local i32 @bms_is_member(i64, i32) #1

declare dso_local i64 @GetSubscriptionRelState(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
