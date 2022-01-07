; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_StoreAttrDefault.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_StoreAttrDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i8, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i8*, i8*, i32 }

@StoreAttrDefault.nulls = internal global [4 x i32] zeroinitializer, align 16
@AttrDefaultRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@AttrDefaultOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_attrdef_oid = common dso_local global i32 0, align 4
@Anum_pg_attrdef_adrelid = common dso_local global i32 0, align 4
@Anum_pg_attrdef_adnum = common dso_local global i32 0, align 4
@Anum_pg_attrdef_adbin = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i32 0, align 4
@ATTNUM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cache lookup failed for attribute %d of relation %u\00", align 1
@Natts_pg_attribute = common dso_local global i32 0, align 4
@Anum_pg_attribute_atthasdef = common dso_local global i32 0, align 4
@Anum_pg_attribute_atthasmissing = common dso_local global i32 0, align 4
@Anum_pg_attribute_attmissingval = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_AUTO = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @StoreAttrDefault(%struct.TYPE_26__* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_27__, align 8
  %21 = alloca %struct.TYPE_27__, align 8
  %22 = alloca %struct.TYPE_29__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %33 = load i32, i32* @AttrDefaultRelationId, align 4
  %34 = load i32, i32* @RowExclusiveLock, align 4
  %35 = call %struct.TYPE_26__* @table_open(i32 %33, i32 %34)
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %12, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i8* @nodeToString(i32* %36)
  store i8* %37, i8** %11, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %39 = load i32, i32* @AttrDefaultOidIndexId, align 4
  %40 = load i32, i32* @Anum_pg_attrdef_oid, align 4
  %41 = call i8* @GetNewOidWithIndex(%struct.TYPE_26__* %38, i32 %39, i32 %40)
  store i8* %41, i8** %19, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = call i32 @ObjectIdGetDatum(i8* %42)
  %44 = load i32, i32* @Anum_pg_attrdef_oid, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %49 = call i8* @RelationGetRelid(%struct.TYPE_26__* %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32, i32* @Anum_pg_attrdef_adrelid, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32, i32* @Anum_pg_attrdef_adnum, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @CStringGetTextDatum(i8* %61)
  %63 = load i32, i32* @Anum_pg_attrdef_adbin, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %71 = call %struct.TYPE_28__* @heap_form_tuple(i32 %69, i32* %70, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @StoreAttrDefault.nulls, i64 0, i64 0))
  store %struct.TYPE_28__* %71, %struct.TYPE_28__** %13, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %74 = call i32 @CatalogTupleInsert(%struct.TYPE_26__* %72, %struct.TYPE_28__* %73)
  %75 = load i32, i32* @AttrDefaultRelationId, align 4
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load i8*, i8** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  store i8* null, i8** %79, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %81 = load i32, i32* @RowExclusiveLock, align 4
  %82 = call i32 @table_close(%struct.TYPE_26__* %80, i32 %81)
  %83 = load i32, i32* @Anum_pg_attrdef_adbin, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @DatumGetPointer(i32 %87)
  %89 = call i32 @pfree(i8* %88)
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %91 = call i32 @heap_freetuple(%struct.TYPE_28__* %90)
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @pfree(i8* %92)
  %94 = load i32, i32* @AttributeRelationId, align 4
  %95 = load i32, i32* @RowExclusiveLock, align 4
  %96 = call %struct.TYPE_26__* @table_open(i32 %94, i32 %95)
  store %struct.TYPE_26__* %96, %struct.TYPE_26__** %15, align 8
  %97 = load i32, i32* @ATTNUM, align 4
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %99 = call i8* @RelationGetRelid(%struct.TYPE_26__* %98)
  %100 = call i32 @ObjectIdGetDatum(i8* %99)
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @Int16GetDatum(i8* %101)
  %103 = call %struct.TYPE_28__* @SearchSysCacheCopy2(i32 %97, i32 %100, i32 %102)
  store %struct.TYPE_28__* %103, %struct.TYPE_28__** %16, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %105 = call i32 @HeapTupleIsValid(%struct.TYPE_28__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %5
  %108 = load i32, i32* @ERROR, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %111 = call i8* @RelationGetRelid(%struct.TYPE_26__* %110)
  %112 = call i32 @elog(i32 %108, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %109, i8* %111)
  br label %113

113:                                              ; preds = %107, %5
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %115 = call i64 @GETSTRUCT(%struct.TYPE_28__* %114)
  %116 = inttoptr i64 %115 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %116, %struct.TYPE_29__** %17, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load i8, i8* %118, align 4
  store i8 %119, i8* %18, align 1
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %241, label %124

124:                                              ; preds = %113
  %125 = load i32*, i32** %8, align 8
  store i32* %125, i32** %24, align 8
  store i32* null, i32** %25, align 8
  %126 = load i32, i32* @Natts_pg_attribute, align 4
  %127 = zext i32 %126 to i64
  %128 = call i8* @llvm.stacksave()
  store i8* %128, i8** %27, align 8
  %129 = alloca i32, i64 %127, align 16
  store i64 %127, i64* %28, align 8
  %130 = load i32, i32* @Natts_pg_attribute, align 4
  %131 = zext i32 %130 to i64
  %132 = alloca i32, i64 %131, align 16
  store i64 %131, i64* %29, align 8
  %133 = load i32, i32* @Natts_pg_attribute, align 4
  %134 = zext i32 %133 to i64
  %135 = alloca i32, i64 %134, align 16
  store i64 %134, i64* %30, align 8
  store i32 0, i32* %31, align 4
  store i32 1, i32* %32, align 4
  %136 = mul nuw i64 4, %127
  %137 = trunc i64 %136 to i32
  %138 = call i32 @MemSet(i32* %129, i32 0, i32 %137)
  %139 = mul nuw i64 4, %131
  %140 = trunc i64 %139 to i32
  %141 = call i32 @MemSet(i32* %132, i32 0, i32 %140)
  %142 = mul nuw i64 4, %134
  %143 = trunc i64 %142 to i32
  %144 = call i32 @MemSet(i32* %135, i32 0, i32 %143)
  %145 = load i32, i32* @Anum_pg_attribute_atthasdef, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %129, i64 %147
  store i32 1, i32* %148, align 4
  %149 = load i32, i32* @Anum_pg_attribute_atthasdef, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %135, i64 %151
  store i32 1, i32* %152, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %223

155:                                              ; preds = %124
  %156 = load i8, i8* %18, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %223, label %158

158:                                              ; preds = %155
  %159 = load i32*, i32** %24, align 8
  %160 = call i32* @expression_planner(i32* %159)
  store i32* %160, i32** %24, align 8
  %161 = call i32* (...) @CreateExecutorState()
  store i32* %161, i32** %25, align 8
  %162 = load i32*, i32** %24, align 8
  %163 = load i32*, i32** %25, align 8
  %164 = call i32* @ExecPrepareExpr(i32* %162, i32* %163)
  store i32* %164, i32** %23, align 8
  %165 = load i32*, i32** %25, align 8
  %166 = call i32* @GetPerTupleExprContext(i32* %165)
  store i32* %166, i32** %26, align 8
  %167 = load i32*, i32** %23, align 8
  %168 = load i32*, i32** %26, align 8
  %169 = call i32 @ExecEvalExpr(i32* %167, i32* %168, i32* %32)
  store i32 %169, i32* %31, align 4
  %170 = load i32*, i32** %25, align 8
  %171 = call i32 @FreeExecutorState(i32* %170)
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %7, align 8
  %176 = getelementptr i8, i8* %175, i64 -1
  %177 = call %struct.TYPE_29__* @TupleDescAttr(i32 %174, i8* %176)
  store %struct.TYPE_29__* %177, %struct.TYPE_29__** %22, align 8
  %178 = load i32, i32* %32, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %158
  store i32 0, i32* %31, align 4
  br label %196

181:                                              ; preds = %158
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @construct_array(i32* %31, i32 1, i32 %184, i32 %187, i32 %190, i32 %193)
  %195 = call i32 @PointerGetDatum(i32 %194)
  store i32 %195, i32* %31, align 4
  br label %196

196:                                              ; preds = %181, %180
  %197 = load i32, i32* %32, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* @Anum_pg_attribute_atthasmissing, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %129, i64 %203
  store i32 %200, i32* %204, align 4
  %205 = load i32, i32* @Anum_pg_attribute_atthasmissing, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %135, i64 %207
  store i32 1, i32* %208, align 4
  %209 = load i32, i32* %31, align 4
  %210 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %129, i64 %212
  store i32 %209, i32* %213, align 4
  %214 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %135, i64 %216
  store i32 1, i32* %217, align 4
  %218 = load i32, i32* %32, align 4
  %219 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %132, i64 %221
  store i32 %218, i32* %222, align 4
  br label %223

223:                                              ; preds = %196, %155, %124
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %226 = call i32 @RelationGetDescr(%struct.TYPE_26__* %225)
  %227 = call %struct.TYPE_28__* @heap_modify_tuple(%struct.TYPE_28__* %224, i32 %226, i32* %129, i32* %132, i32* %135)
  store %struct.TYPE_28__* %227, %struct.TYPE_28__** %16, align 8
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %232 = call i32 @CatalogTupleUpdate(%struct.TYPE_26__* %228, i32* %230, %struct.TYPE_28__* %231)
  %233 = load i32, i32* %32, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %223
  %236 = load i32, i32* %31, align 4
  %237 = call i8* @DatumGetPointer(i32 %236)
  %238 = call i32 @pfree(i8* %237)
  br label %239

239:                                              ; preds = %235, %223
  %240 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %240)
  br label %241

241:                                              ; preds = %239, %113
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %243 = load i32, i32* @RowExclusiveLock, align 4
  %244 = call i32 @table_close(%struct.TYPE_26__* %242, i32 %243)
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %246 = call i32 @heap_freetuple(%struct.TYPE_28__* %245)
  %247 = load i32, i32* @RelationRelationId, align 4
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 2
  store i32 %247, i32* %248, align 8
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %250 = call i8* @RelationGetRelid(%struct.TYPE_26__* %249)
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  store i8* %250, i8** %251, align 8
  %252 = load i8*, i8** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  store i8* %252, i8** %253, align 8
  %254 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %255 = call i32 @recordDependencyOn(%struct.TYPE_27__* %21, %struct.TYPE_27__* %20, i32 %254)
  %256 = load i8, i8* %18, align 1
  %257 = icmp ne i8 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %241
  %259 = load i32*, i32** %8, align 8
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %261 = call i8* @RelationGetRelid(%struct.TYPE_26__* %260)
  %262 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %263 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %264 = call i32 @recordDependencyOnSingleRelExpr(%struct.TYPE_27__* %20, i32* %259, i8* %261, i32 %262, i32 %263, i32 0)
  br label %272

265:                                              ; preds = %241
  %266 = load i32*, i32** %8, align 8
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %268 = call i8* @RelationGetRelid(%struct.TYPE_26__* %267)
  %269 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %270 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %271 = call i32 @recordDependencyOnSingleRelExpr(%struct.TYPE_27__* %21, i32* %266, i8* %268, i32 %269, i32 %270, i32 0)
  br label %272

272:                                              ; preds = %265, %258
  %273 = load i32, i32* @AttrDefaultRelationId, align 4
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %275 = call i8* @RelationGetRelid(%struct.TYPE_26__* %274)
  %276 = load i8*, i8** %7, align 8
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @InvokeObjectPostCreateHookArg(i32 %273, i8* %275, i8* %276, i32 %277)
  %279 = load i8*, i8** %19, align 8
  ret i8* %279
}

declare dso_local %struct.TYPE_26__* @table_open(i32, i32) #1

declare dso_local i8* @nodeToString(i32*) #1

declare dso_local i8* @GetNewOidWithIndex(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i8* @RelationGetRelid(%struct.TYPE_26__*) #1

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local %struct.TYPE_28__* @heap_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @table_close(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @DatumGetPointer(i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @SearchSysCacheCopy2(i32, i32, i32) #1

declare dso_local i32 @Int16GetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_28__*) #1

declare dso_local i32 @elog(i32, i8*, i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_28__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MemSet(i32*, i32, i32) #1

declare dso_local i32* @expression_planner(i32*) #1

declare dso_local i32* @CreateExecutorState(...) #1

declare dso_local i32* @ExecPrepareExpr(i32*, i32*) #1

declare dso_local i32* @GetPerTupleExprContext(i32*) #1

declare dso_local i32 @ExecEvalExpr(i32*, i32*, i32*) #1

declare dso_local i32 @FreeExecutorState(i32*) #1

declare dso_local %struct.TYPE_29__* @TupleDescAttr(i32, i8*) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @construct_array(i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_28__* @heap_modify_tuple(%struct.TYPE_28__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_26__*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_26__*, i32*, %struct.TYPE_28__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @recordDependencyOnSingleRelExpr(%struct.TYPE_27__*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @InvokeObjectPostCreateHookArg(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
