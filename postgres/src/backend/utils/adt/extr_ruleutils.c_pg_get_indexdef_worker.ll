; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_pg_get_indexdef_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_pg_get_indexdef_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i32, i32, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_21__ = type { i64, i64, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i8* }

@INDEXRELID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1
@Anum_pg_index_indcollation = common dso_local global i32 0, align 4
@Anum_pg_index_indclass = common dso_local global i32 0, align 4
@Anum_pg_index_indoption = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@AMOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"cache lookup failed for access method %u\00", align 1
@Anum_pg_index_indexprs = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"CREATE %sINDEX %s ON %s%s USING %s (\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UNIQUE \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"ONLY \00", align 1
@PRETTYFLAG_SCHEMA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"EXCLUDE USING %s (\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c") INCLUDE (\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"too few entries in indexprs list\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" COLLATE %s\00", align 1
@INDOPTION_DESC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c" DESC\00", align 1
@INDOPTION_NULLS_FIRST = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c" NULLS LAST\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c" NULLS FIRST\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c" WITH %s\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c" WITH (%s)\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" USING INDEX\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c" TABLESPACE %s\00", align 1
@Anum_pg_index_indpred = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c" WHERE (%s)\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c" WHERE %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i64*, i32, i32, i32, i32, i32, i32)* @pg_get_indexdef_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pg_get_indexdef_worker(i64 %0, i32 %1, i64* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_20__*, align 8
  %25 = alloca %struct.TYPE_21__*, align 8
  %26 = alloca %struct.TYPE_22__*, align 8
  %27 = alloca %struct.TYPE_19__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.TYPE_16__*, align 8
  %38 = alloca %struct.TYPE_16__*, align 8
  %39 = alloca %struct.TYPE_17__*, align 8
  %40 = alloca %struct.TYPE_18__, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i8*, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i8*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32*, align 8
  %52 = alloca i32, align 4
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i32*, align 8
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i8*, align 8
  store i64 %0, i64* %11, align 8
  store i32 %1, i32* %12, align 4
  store i64* %2, i64** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %59 = load i64*, i64** %13, align 8
  %60 = icmp ne i64* %59, null
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* @INDEXRELID, align 4
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @ObjectIdGetDatum(i64 %63)
  %65 = call i32 @SearchSysCache1(i32 %62, i32 %64)
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %21, align 4
  %67 = call i32 @HeapTupleIsValid(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %9
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i8* null, i8** %10, align 8
  br label %534

73:                                               ; preds = %69
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i64, i64* %11, align 8
  %76 = call i32 (i32, i8*, ...) @elog(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %73, %9
  %78 = load i32, i32* %21, align 4
  %79 = call i64 @GETSTRUCT(i32 %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %80, %struct.TYPE_20__** %24, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %31, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load i32, i32* @INDEXRELID, align 4
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* @Anum_pg_index_indcollation, align 4
  %94 = call i32 @SysCacheGetAttr(i32 %91, i32 %92, i32 %93, i32* %36)
  store i32 %94, i32* %33, align 4
  %95 = load i32, i32* %36, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @Assert(i32 %98)
  %100 = load i32, i32* %33, align 4
  %101 = call i64 @DatumGetPointer(i32 %100)
  %102 = inttoptr i64 %101 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %37, align 8
  %103 = load i32, i32* @INDEXRELID, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* @Anum_pg_index_indclass, align 4
  %106 = call i32 @SysCacheGetAttr(i32 %103, i32 %104, i32 %105, i32* %36)
  store i32 %106, i32* %34, align 4
  %107 = load i32, i32* %36, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i32 @Assert(i32 %110)
  %112 = load i32, i32* %34, align 4
  %113 = call i64 @DatumGetPointer(i32 %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %114, %struct.TYPE_16__** %38, align 8
  %115 = load i32, i32* @INDEXRELID, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* @Anum_pg_index_indoption, align 4
  %118 = call i32 @SysCacheGetAttr(i32 %115, i32 %116, i32 %117, i32* %36)
  store i32 %118, i32* %35, align 4
  %119 = load i32, i32* %36, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @Assert(i32 %122)
  %124 = load i32, i32* %35, align 4
  %125 = call i64 @DatumGetPointer(i32 %124)
  %126 = inttoptr i64 %125 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %126, %struct.TYPE_17__** %39, align 8
  %127 = load i32, i32* @RELOID, align 4
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @ObjectIdGetDatum(i64 %128)
  %130 = call i32 @SearchSysCache1(i32 %127, i32 %129)
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %22, align 4
  %132 = call i32 @HeapTupleIsValid(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %77
  %135 = load i32, i32* @ERROR, align 4
  %136 = load i64, i64* %11, align 8
  %137 = call i32 (i32, i8*, ...) @elog(i32 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %136)
  br label %138

138:                                              ; preds = %134, %77
  %139 = load i32, i32* %22, align 4
  %140 = call i64 @GETSTRUCT(i32 %139)
  %141 = inttoptr i64 %140 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %141, %struct.TYPE_21__** %25, align 8
  %142 = load i32, i32* @AMOID, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @ObjectIdGetDatum(i64 %145)
  %147 = call i32 @SearchSysCache1(i32 %142, i32 %146)
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %23, align 4
  %149 = call i32 @HeapTupleIsValid(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %138
  %152 = load i32, i32* @ERROR, align 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (i32, i8*, ...) @elog(i32 %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %155)
  br label %157

157:                                              ; preds = %151, %138
  %158 = load i32, i32* %23, align 4
  %159 = call i64 @GETSTRUCT(i32 %158)
  %160 = inttoptr i64 %159 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %160, %struct.TYPE_22__** %26, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call %struct.TYPE_19__* @GetIndexAmRoutine(i32 %163)
  store %struct.TYPE_19__* %164, %struct.TYPE_19__** %27, align 8
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* @Anum_pg_index_indexprs, align 4
  %167 = call i32 @heap_attisnull(i32 %165, i32 %166, i32* null)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %186, label %169

169:                                              ; preds = %157
  %170 = load i32, i32* @INDEXRELID, align 4
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* @Anum_pg_index_indexprs, align 4
  %173 = call i32 @SysCacheGetAttr(i32 %170, i32 %171, i32 %172, i32* %44)
  store i32 %173, i32* %43, align 4
  %174 = load i32, i32* %44, align 4
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i32 @Assert(i32 %177)
  %179 = load i32, i32* %43, align 4
  %180 = call i8* @TextDatumGetCString(i32 %179)
  store i8* %180, i8** %45, align 8
  %181 = load i8*, i8** %45, align 8
  %182 = call i64 @stringToNode(i8* %181)
  %183 = inttoptr i64 %182 to i32*
  store i32* %183, i32** %28, align 8
  %184 = load i8*, i8** %45, align 8
  %185 = call i32 @pfree(i8* %184)
  br label %188

186:                                              ; preds = %157
  %187 = load i32*, i32** @NIL, align 8
  store i32* %187, i32** %28, align 8
  br label %188

188:                                              ; preds = %186, %169
  %189 = load i32*, i32** %28, align 8
  %190 = call i32* @list_head(i32* %189)
  store i32* %190, i32** %29, align 8
  %191 = load i64, i64* %31, align 8
  %192 = call i32 @get_relation_name(i64 %191)
  %193 = load i64, i64* %31, align 8
  %194 = call i32* @deparse_context_for(i32 %192, i64 %193)
  store i32* %194, i32** %30, align 8
  %195 = call i32 @initStringInfo(%struct.TYPE_18__* %40)
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %253, label %198

198:                                              ; preds = %188
  %199 = load i32, i32* %20, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %245, label %201

201:                                              ; preds = %198
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @NameStr(i32 %210)
  %212 = call i8* @quote_identifier(i8* %211)
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %201
  %219 = load i32, i32* %17, align 4
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  br label %222

222:                                              ; preds = %218, %201
  %223 = phi i1 [ false, %201 ], [ %221, %218 ]
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* @PRETTYFLAG_SCHEMA, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %222
  %231 = load i64, i64* %31, align 8
  %232 = load i32*, i32** @NIL, align 8
  %233 = call i32 @generate_relation_name(i64 %231, i32* %232)
  br label %237

234:                                              ; preds = %222
  %235 = load i64, i64* %31, align 8
  %236 = call i32 @generate_qualified_relation_name(i64 %235)
  br label %237

237:                                              ; preds = %234, %230
  %238 = phi i32 [ %233, %230 ], [ %236, %234 ]
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i8* @NameStr(i32 %241)
  %243 = call i8* @quote_identifier(i8* %242)
  %244 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %207, i8* %212, i8* %225, i32 %238, i8* %243)
  br label %252

245:                                              ; preds = %198
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @NameStr(i32 %248)
  %250 = call i8* @quote_identifier(i8* %249)
  %251 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %245, %237
  br label %253

253:                                              ; preds = %252, %188
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %42, align 8
  store i32 0, i32* %32, align 4
  br label %254

254:                                              ; preds = %452, %253
  %255 = load i32, i32* %32, align 4
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %455

260:                                              ; preds = %254
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i64*, i64** %263, align 8
  %265 = load i32, i32* %32, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %46, align 8
  %269 = load i32, i32* %15, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %260
  %272 = load i32, i32* %32, align 4
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = icmp sge i32 %272, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  br label %455

278:                                              ; preds = %271, %260
  %279 = load i32, i32* %12, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %289, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %32, align 4
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %282, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %281
  %288 = call i32 @appendStringInfoString(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %42, align 8
  br label %289

289:                                              ; preds = %287, %281, %278
  %290 = load i32, i32* %12, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = load i8*, i8** %42, align 8
  %294 = call i32 @appendStringInfoString(%struct.TYPE_18__* %40, i8* %293)
  br label %295

295:                                              ; preds = %292, %289
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %42, align 8
  %296 = load i64, i64* %46, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %317

298:                                              ; preds = %295
  %299 = load i64, i64* %31, align 8
  %300 = load i64, i64* %46, align 8
  %301 = call i8* @get_attname(i64 %299, i64 %300, i32 0)
  store i8* %301, i8** %49, align 8
  %302 = load i32, i32* %12, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %298
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* %32, align 4
  %307 = add nsw i32 %306, 1
  %308 = icmp eq i32 %305, %307
  br i1 %308, label %309, label %313

309:                                              ; preds = %304, %298
  %310 = load i8*, i8** %49, align 8
  %311 = call i8* @quote_identifier(i8* %310)
  %312 = call i32 @appendStringInfoString(%struct.TYPE_18__* %40, i8* %311)
  br label %313

313:                                              ; preds = %309, %304
  %314 = load i64, i64* %31, align 8
  %315 = load i64, i64* %46, align 8
  %316 = call i32 @get_atttypetypmodcoll(i64 %314, i64 %315, i64* %47, i32* %50, i64* %48)
  br label %357

317:                                              ; preds = %295
  %318 = load i32*, i32** %29, align 8
  %319 = icmp eq i32* %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load i32, i32* @ERROR, align 4
  %322 = call i32 (i32, i8*, ...) @elog(i32 %321, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %323

323:                                              ; preds = %320, %317
  %324 = load i32*, i32** %29, align 8
  %325 = call i64 @lfirst(i32* %324)
  %326 = inttoptr i64 %325 to i32*
  store i32* %326, i32** %51, align 8
  %327 = load i32*, i32** %28, align 8
  %328 = load i32*, i32** %29, align 8
  %329 = call i32* @lnext(i32* %327, i32* %328)
  store i32* %329, i32** %29, align 8
  %330 = load i32*, i32** %51, align 8
  %331 = load i32*, i32** %30, align 8
  %332 = load i32, i32* %18, align 4
  %333 = call i8* @deparse_expression_pretty(i32* %330, i32* %331, i32 0, i32 0, i32 %332, i32 0)
  store i8* %333, i8** %41, align 8
  %334 = load i32, i32* %12, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %323
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* %32, align 4
  %339 = add nsw i32 %338, 1
  %340 = icmp eq i32 %337, %339
  br i1 %340, label %341, label %352

341:                                              ; preds = %336, %323
  %342 = load i32*, i32** %51, align 8
  %343 = call i64 @looks_like_function(i32* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %341
  %346 = load i8*, i8** %41, align 8
  %347 = call i32 @appendStringInfoString(%struct.TYPE_18__* %40, i8* %346)
  br label %351

348:                                              ; preds = %341
  %349 = load i8*, i8** %41, align 8
  %350 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %349)
  br label %351

351:                                              ; preds = %348, %345
  br label %352

352:                                              ; preds = %351, %336
  %353 = load i32*, i32** %51, align 8
  %354 = call i64 @exprType(i32* %353)
  store i64 %354, i64* %47, align 8
  %355 = load i32*, i32** %51, align 8
  %356 = call i64 @exprCollation(i32* %355)
  store i64 %356, i64* %48, align 8
  br label %357

357:                                              ; preds = %352, %313
  %358 = load i32, i32* %14, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %451, label %360

360:                                              ; preds = %357
  %361 = load i32, i32* %32, align 4
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %451

366:                                              ; preds = %360
  %367 = load i32, i32* %12, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = load i32, i32* %12, align 4
  %371 = load i32, i32* %32, align 4
  %372 = add nsw i32 %371, 1
  %373 = icmp eq i32 %370, %372
  br i1 %373, label %374, label %451

374:                                              ; preds = %369, %366
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %32, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %380, align 4
  store i32 %381, i32* %52, align 4
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 0
  %384 = load i64*, i64** %383, align 8
  %385 = load i32, i32* %32, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %384, i64 %386
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %53, align 8
  %389 = load i64, i64* %53, align 8
  %390 = call i64 @OidIsValid(i64 %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %374
  %393 = load i64, i64* %53, align 8
  %394 = load i64, i64* %48, align 8
  %395 = icmp ne i64 %393, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %392
  %397 = load i64, i64* %53, align 8
  %398 = call i8* @generate_collation_name(i64 %397)
  %399 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %398)
  br label %400

400:                                              ; preds = %396, %392, %374
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 0
  %403 = load i64*, i64** %402, align 8
  %404 = load i32, i32* %32, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i64, i64* %403, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* %47, align 8
  %409 = call i32 @get_opclass_name(i64 %407, i64 %408, %struct.TYPE_18__* %40)
  %410 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %437

414:                                              ; preds = %400
  %415 = load i32, i32* %52, align 4
  %416 = load i32, i32* @INDOPTION_DESC, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %428

419:                                              ; preds = %414
  %420 = call i32 @appendStringInfoString(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %421 = load i32, i32* %52, align 4
  %422 = load i32, i32* @INDOPTION_NULLS_FIRST, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %419
  %426 = call i32 @appendStringInfoString(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %427

427:                                              ; preds = %425, %419
  br label %436

428:                                              ; preds = %414
  %429 = load i32, i32* %52, align 4
  %430 = load i32, i32* @INDOPTION_NULLS_FIRST, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %435

433:                                              ; preds = %428
  %434 = call i32 @appendStringInfoString(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %435

435:                                              ; preds = %433, %428
  br label %436

436:                                              ; preds = %435, %427
  br label %437

437:                                              ; preds = %436, %400
  %438 = load i64*, i64** %13, align 8
  %439 = icmp ne i64* %438, null
  br i1 %439, label %440, label %450

440:                                              ; preds = %437
  %441 = load i64*, i64** %13, align 8
  %442 = load i32, i32* %32, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i64, i64* %441, i64 %443
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* %47, align 8
  %447 = load i64, i64* %47, align 8
  %448 = call i8* @generate_operator_name(i64 %445, i64 %446, i64 %447)
  %449 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %448)
  br label %450

450:                                              ; preds = %440, %437
  br label %451

451:                                              ; preds = %450, %369, %360, %357
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %32, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %32, align 4
  br label %254

455:                                              ; preds = %277, %254
  %456 = load i32, i32* %14, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %525, label %458

458:                                              ; preds = %455
  %459 = call i32 @appendStringInfoChar(%struct.TYPE_18__* %40, i8 signext 41)
  %460 = load i64, i64* %11, align 8
  %461 = call i8* @flatten_reloptions(i64 %460)
  store i8* %461, i8** %41, align 8
  %462 = load i8*, i8** %41, align 8
  %463 = icmp ne i8* %462, null
  br i1 %463, label %464, label %469

464:                                              ; preds = %458
  %465 = load i8*, i8** %41, align 8
  %466 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %465)
  %467 = load i8*, i8** %41, align 8
  %468 = call i32 @pfree(i8* %467)
  br label %469

469:                                              ; preds = %464, %458
  %470 = load i32, i32* %16, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %489

472:                                              ; preds = %469
  %473 = load i64, i64* %11, align 8
  %474 = call i64 @get_rel_tablespace(i64 %473)
  store i64 %474, i64* %54, align 8
  %475 = load i64, i64* %54, align 8
  %476 = call i64 @OidIsValid(i64 %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %488

478:                                              ; preds = %472
  %479 = load i32, i32* %20, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %483

481:                                              ; preds = %478
  %482 = call i32 @appendStringInfoString(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  br label %483

483:                                              ; preds = %481, %478
  %484 = load i64, i64* %54, align 8
  %485 = call i8* @get_tablespace_name(i64 %484)
  %486 = call i8* @quote_identifier(i8* %485)
  %487 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %486)
  br label %488

488:                                              ; preds = %483, %472
  br label %489

489:                                              ; preds = %488, %469
  %490 = load i32, i32* %21, align 4
  %491 = load i32, i32* @Anum_pg_index_indpred, align 4
  %492 = call i32 @heap_attisnull(i32 %490, i32 %491, i32* null)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %524, label %494

494:                                              ; preds = %489
  %495 = load i32, i32* @INDEXRELID, align 4
  %496 = load i32, i32* %21, align 4
  %497 = load i32, i32* @Anum_pg_index_indpred, align 4
  %498 = call i32 @SysCacheGetAttr(i32 %495, i32 %496, i32 %497, i32* %57)
  store i32 %498, i32* %56, align 4
  %499 = load i32, i32* %57, align 4
  %500 = icmp ne i32 %499, 0
  %501 = xor i1 %500, true
  %502 = zext i1 %501 to i32
  %503 = call i32 @Assert(i32 %502)
  %504 = load i32, i32* %56, align 4
  %505 = call i8* @TextDatumGetCString(i32 %504)
  store i8* %505, i8** %58, align 8
  %506 = load i8*, i8** %58, align 8
  %507 = call i64 @stringToNode(i8* %506)
  %508 = inttoptr i64 %507 to i32*
  store i32* %508, i32** %55, align 8
  %509 = load i8*, i8** %58, align 8
  %510 = call i32 @pfree(i8* %509)
  %511 = load i32*, i32** %55, align 8
  %512 = load i32*, i32** %30, align 8
  %513 = load i32, i32* %18, align 4
  %514 = call i8* @deparse_expression_pretty(i32* %511, i32* %512, i32 0, i32 0, i32 %513, i32 0)
  store i8* %514, i8** %41, align 8
  %515 = load i32, i32* %20, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %494
  %518 = load i8*, i8** %41, align 8
  %519 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %518)
  br label %523

520:                                              ; preds = %494
  %521 = load i8*, i8** %41, align 8
  %522 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* %521)
  br label %523

523:                                              ; preds = %520, %517
  br label %524

524:                                              ; preds = %523, %489
  br label %525

525:                                              ; preds = %524, %455
  %526 = load i32, i32* %21, align 4
  %527 = call i32 @ReleaseSysCache(i32 %526)
  %528 = load i32, i32* %22, align 4
  %529 = call i32 @ReleaseSysCache(i32 %528)
  %530 = load i32, i32* %23, align 4
  %531 = call i32 @ReleaseSysCache(i32 %530)
  %532 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %533 = load i8*, i8** %532, align 8
  store i8* %533, i8** %10, align 8
  br label %534

534:                                              ; preds = %525, %72
  %535 = load i8*, i8** %10, align 8
  ret i8* %535
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local %struct.TYPE_19__* @GetIndexAmRoutine(i32) #1

declare dso_local i32 @heap_attisnull(i32, i32, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i64 @stringToNode(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32* @list_head(i32*) #1

declare dso_local i32* @deparse_context_for(i32, i64) #1

declare dso_local i32 @get_relation_name(i64) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_18__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_18__*, i8*, i8*, ...) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @generate_relation_name(i64, i32*) #1

declare dso_local i32 @generate_qualified_relation_name(i64) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_18__*, i8*) #1

declare dso_local i8* @get_attname(i64, i64, i32) #1

declare dso_local i32 @get_atttypetypmodcoll(i64, i64, i64*, i32*, i64*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i32*, i32*) #1

declare dso_local i8* @deparse_expression_pretty(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @looks_like_function(i32*) #1

declare dso_local i64 @exprType(i32*) #1

declare dso_local i64 @exprCollation(i32*) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i8* @generate_collation_name(i64) #1

declare dso_local i32 @get_opclass_name(i64, i64, %struct.TYPE_18__*) #1

declare dso_local i8* @generate_operator_name(i64, i64, i64) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i8* @flatten_reloptions(i64) #1

declare dso_local i64 @get_rel_tablespace(i64) #1

declare dso_local i8* @get_tablespace_name(i64) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
