; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_RelationBuildTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_RelationBuildTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i8**, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@Anum_pg_trigger_tgrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@TriggerRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@TriggerRelidNameIndexId = common dso_local global i32 0, align 4
@nameout = common dso_local global i32 0, align 4
@Anum_pg_trigger_tgargs = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"tgargs is null in trigger for relation \22%s\22\00", align 1
@Anum_pg_trigger_tgoldtable = common dso_local global i32 0, align 4
@Anum_pg_trigger_tgnewtable = common dso_local global i32 0, align 4
@Anum_pg_trigger_tgqual = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationBuildTriggers(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store i32 16, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 104
  %22 = trunc i64 %21 to i32
  %23 = call i64 @palloc(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %6, align 8
  store i32 0, i32* %4, align 4
  %25 = load i32, i32* @Anum_pg_trigger_tgrelid, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_OIDEQ, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %29 = call i32 @RelationGetRelid(%struct.TYPE_21__* %28)
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = call i32 @ScanKeyInit(i32* %8, i32 %25, i32 %26, i32 %27, i32 %30)
  %32 = load i32, i32* @TriggerRelationId, align 4
  %33 = load i32, i32* @AccessShareLock, align 4
  %34 = call %struct.TYPE_21__* @table_open(i32 %32, i32 %33)
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %7, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = load i32, i32* @TriggerRelidNameIndexId, align 4
  %37 = call i32 @systable_beginscan(%struct.TYPE_21__* %35, i32 %36, i32 1, i32* null, i32 1, i32* %8)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %284, %1
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @systable_getnext(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = call i64 @HeapTupleIsValid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %287

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @GETSTRUCT(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %13, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 2
  store i32 %53, i32* %5, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 104
  %58 = trunc i64 %57 to i32
  %59 = call i64 @repalloc(%struct.TYPE_20__* %54, i32 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %6, align 8
  br label %61

61:                                               ; preds = %51, %43
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i64 %64
  store %struct.TYPE_20__* %65, %struct.TYPE_20__** %14, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 17
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @nameout, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 11
  %74 = call i32 @NameGetDatum(i32* %73)
  %75 = call i32 @DirectFunctionCall1(i32 %71, i32 %74)
  %76 = call i8* @DatumGetCString(i32 %75)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 16
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 15
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 14
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 13
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 12
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 10
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %61
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i64 @palloc(i32 %145)
  %147 = inttoptr i64 %146 to i32*
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 6
  store i32* %147, i32** %149, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 4
  %161 = trunc i64 %160 to i32
  %162 = call i32 @memcpy(i32* %152, i32* %155, i32 %161)
  br label %166

163:                                              ; preds = %61
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 6
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %163, %139
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %224

171:                                              ; preds = %166
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @Anum_pg_trigger_tgargs, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @fastgetattr(i32 %172, i32 %173, i32 %176, i32* %16)
  %178 = call i32* @DatumGetByteaPP(i32 %177)
  store i32* %178, i32** %17, align 8
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %171
  %182 = load i32, i32* @ERROR, align 4
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %184 = call i32 @RelationGetRelationName(%struct.TYPE_21__* %183)
  %185 = call i32 @elog(i32 %182, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %181, %171
  %187 = load i32*, i32** %17, align 8
  %188 = call i64 @VARDATA_ANY(i32* %187)
  %189 = inttoptr i64 %188 to i8*
  store i8* %189, i8** %18, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 8
  %195 = trunc i64 %194 to i32
  %196 = call i64 @palloc(i32 %195)
  %197 = inttoptr i64 %196 to i8**
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  store i8** %197, i8*** %199, align 8
  store i32 0, i32* %12, align 4
  br label %200

200:                                              ; preds = %220, %186
  %201 = load i32, i32* %12, align 4
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %223

206:                                              ; preds = %200
  %207 = load i8*, i8** %18, align 8
  %208 = call i8* @pstrdup(i8* %207)
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 2
  %211 = load i8**, i8*** %210, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  store i8* %208, i8** %214, align 8
  %215 = load i8*, i8** %18, align 8
  %216 = call i64 @strlen(i8* %215)
  %217 = add nsw i64 %216, 1
  %218 = load i8*, i8** %18, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 %217
  store i8* %219, i8** %18, align 8
  br label %220

220:                                              ; preds = %206
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %200

223:                                              ; preds = %200
  br label %227

224:                                              ; preds = %166
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 2
  store i8** null, i8*** %226, align 8
  br label %227

227:                                              ; preds = %224, %223
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* @Anum_pg_trigger_tgoldtable, align 4
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @fastgetattr(i32 %228, i32 %229, i32 %232, i32* %16)
  store i32 %233, i32* %15, align 4
  %234 = load i32, i32* %16, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %227
  %237 = load i32, i32* @nameout, align 4
  %238 = load i32, i32* %15, align 4
  %239 = call i32 @DirectFunctionCall1(i32 %237, i32 %238)
  %240 = call i8* @DatumGetCString(i32 %239)
  %241 = bitcast i8* %240 to i32*
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 5
  store i32* %241, i32** %243, align 8
  br label %247

244:                                              ; preds = %227
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 5
  store i32* null, i32** %246, align 8
  br label %247

247:                                              ; preds = %244, %236
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* @Anum_pg_trigger_tgnewtable, align 4
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @fastgetattr(i32 %248, i32 %249, i32 %252, i32* %16)
  store i32 %253, i32* %15, align 4
  %254 = load i32, i32* %16, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %247
  %257 = load i32, i32* @nameout, align 4
  %258 = load i32, i32* %15, align 4
  %259 = call i32 @DirectFunctionCall1(i32 %257, i32 %258)
  %260 = call i8* @DatumGetCString(i32 %259)
  %261 = bitcast i8* %260 to i32*
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 4
  store i32* %261, i32** %263, align 8
  br label %267

264:                                              ; preds = %247
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 4
  store i32* null, i32** %266, align 8
  br label %267

267:                                              ; preds = %264, %256
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* @Anum_pg_trigger_tgqual, align 4
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @fastgetattr(i32 %268, i32 %269, i32 %272, i32* %16)
  store i32 %273, i32* %15, align 4
  %274 = load i32, i32* %16, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %267
  %277 = load i32, i32* %15, align 4
  %278 = call i32* @TextDatumGetCString(i32 %277)
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 3
  store i32* %278, i32** %280, align 8
  br label %284

281:                                              ; preds = %267
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 3
  store i32* null, i32** %283, align 8
  br label %284

284:                                              ; preds = %281, %276
  %285 = load i32, i32* %4, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %4, align 4
  br label %38

287:                                              ; preds = %38
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @systable_endscan(i32 %288)
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %291 = load i32, i32* @AccessShareLock, align 4
  %292 = call i32 @table_close(%struct.TYPE_21__* %290, i32 %291)
  %293 = load i32, i32* %4, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %287
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %297 = call i32 @pfree(%struct.TYPE_20__* %296)
  br label %332

298:                                              ; preds = %287
  %299 = call i64 @palloc0(i32 16)
  %300 = inttoptr i64 %299 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %300, %struct.TYPE_19__** %3, align 8
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 1
  store %struct.TYPE_20__* %301, %struct.TYPE_20__** %303, align 8
  %304 = load i32, i32* %4, align 4
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 0
  store i32 %304, i32* %306, align 8
  store i32 0, i32* %12, align 4
  br label %307

307:                                              ; preds = %318, %298
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* %4, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %321

311:                                              ; preds = %307
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i64 %315
  %317 = call i32 @SetTriggerFlags(%struct.TYPE_19__* %312, %struct.TYPE_20__* %316)
  br label %318

318:                                              ; preds = %311
  %319 = load i32, i32* %12, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %12, align 4
  br label %307

321:                                              ; preds = %307
  %322 = load i32, i32* @CacheMemoryContext, align 4
  %323 = call i32 @MemoryContextSwitchTo(i32 %322)
  store i32 %323, i32* %11, align 4
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %325 = call i32 @CopyTriggerDesc(%struct.TYPE_19__* %324)
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 0
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* %11, align 4
  %329 = call i32 @MemoryContextSwitchTo(i32 %328)
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %331 = call i32 @FreeTriggerDesc(%struct.TYPE_19__* %330)
  br label %332

332:                                              ; preds = %321, %295
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_21__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_20__*, i32) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @NameGetDatum(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @DatumGetByteaPP(i32) #1

declare dso_local i32 @fastgetattr(i32, i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_21__*) #1

declare dso_local i64 @VARDATA_ANY(i32*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @TextDatumGetCString(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_20__*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @SetTriggerFlags(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @CopyTriggerDesc(%struct.TYPE_19__*) #1

declare dso_local i32 @FreeTriggerDesc(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
