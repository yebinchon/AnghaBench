; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_swap_relation_files.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_swap_relation_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i8, i64, i64, i8*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i8* }

@RelationRelationId = common dso_local global i8* null, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"cannot swap mapped relation \22%s\22 with non-mapped relation\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot change tablespace of mapped relation \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"cannot change persistence of mapped relation \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"cannot swap toast by links for mapped relation \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"could not find relation mapping for relation \22%s\22, OID %u\00", align 1
@RELKIND_INDEX = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"cannot swap toast files by content when there's only one\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"cannot swap toast files by links for system catalogs\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"expected one dependency record for TOAST table, found %ld\00", align 1
@DEPENDENCY_INTERNAL = common dso_local global i32 0, align 4
@RELKIND_TOASTVALUE = common dso_local global i64 0, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidMultiXactId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32, i32, i32, i32, i64*)* @swap_relation_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_relation_files(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8, align 1
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_13__, align 8
  %31 = alloca %struct.TYPE_13__, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64* %7, i64** %16, align 8
  %35 = load i8*, i8** @RelationRelationId, align 8
  %36 = load i32, i32* @RowExclusiveLock, align 4
  %37 = call i32 @table_open(i8* %35, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* @RELOID, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @ObjectIdGetDatum(i64 %39)
  %41 = call %struct.TYPE_14__* @SearchSysCacheCopy1(i32 %38, i32 %40)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %18, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %43 = call i32 @HeapTupleIsValid(%struct.TYPE_14__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %8
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 (i32, i8*, ...) @elog(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %45, %8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %51 = call i64 @GETSTRUCT(%struct.TYPE_14__* %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %20, align 8
  %53 = load i32, i32* @RELOID, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @ObjectIdGetDatum(i64 %54)
  %56 = call %struct.TYPE_14__* @SearchSysCacheCopy1(i32 %53, i32 %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %19, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %58 = call i32 @HeapTupleIsValid(%struct.TYPE_14__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i32 (i32, i8*, ...) @elog(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %60, %49
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %66 = call i64 @GETSTRUCT(%struct.TYPE_14__* %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %21, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %22, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %23, align 8
  %74 = load i64, i64* %22, align 8
  %75 = call i64 @OidIsValid(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %135

77:                                               ; preds = %64
  %78 = load i64, i64* %23, align 8
  %79 = call i64 @OidIsValid(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %135

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @Assert(i32 %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %24, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %24, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %24, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %24, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = load i8, i8* %110, align 8
  store i8 %111, i8* %25, align 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i8, i8* %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  store i8 %114, i8* %116, align 8
  %117 = load i8, i8* %25, align 1
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  store i8 %117, i8* %119, align 8
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %81
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %24, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %24, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %122, %81
  br label %252

135:                                              ; preds = %77, %64
  %136 = load i64, i64* %22, align 8
  %137 = call i64 @OidIsValid(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i64, i64* %23, align 8
  %141 = call i64 @OidIsValid(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139, %135
  %144 = load i32, i32* @ERROR, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @NameStr(i32 %147)
  %149 = call i32 (i32, i8*, ...) @elog(i32 %144, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %143, %139
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load i32, i32* @ERROR, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 11
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @NameStr(i32 %162)
  %164 = call i32 (i32, i8*, ...) @elog(i32 %159, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %158, %150
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load i8, i8* %167, align 8
  %169 = sext i8 %168 to i32
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load i8, i8* %171, align 8
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %169, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %165
  %176 = load i32, i32* @ERROR, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @NameStr(i32 %179)
  %181 = call i32 (i32, i8*, ...) @elog(i32 %176, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %180)
  br label %182

182:                                              ; preds = %175, %165
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %202, label %185

185:                                              ; preds = %182
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %190, %185
  %196 = load i32, i32* @ERROR, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 11
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @NameStr(i32 %199)
  %201 = call i32 (i32, i8*, ...) @elog(i32 %196, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %200)
  br label %202

202:                                              ; preds = %195, %190, %182
  %203 = load i64, i64* %9, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 10
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @RelationMapOidToFilenode(i64 %203, i32 %206)
  store i64 %207, i64* %22, align 8
  %208 = load i64, i64* %22, align 8
  %209 = call i64 @OidIsValid(i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %219, label %211

211:                                              ; preds = %202
  %212 = load i32, i32* @ERROR, align 4
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 11
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @NameStr(i32 %215)
  %217 = load i64, i64* %9, align 8
  %218 = call i32 (i32, i8*, ...) @elog(i32 %212, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i64 %216, i64 %217)
  br label %219

219:                                              ; preds = %211, %202
  %220 = load i64, i64* %10, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @RelationMapOidToFilenode(i64 %220, i32 %223)
  store i64 %224, i64* %23, align 8
  %225 = load i64, i64* %23, align 8
  %226 = call i64 @OidIsValid(i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %219
  %229 = load i32, i32* @ERROR, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @NameStr(i32 %232)
  %234 = load i64, i64* %10, align 8
  %235 = call i32 (i32, i8*, ...) @elog(i32 %229, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i64 %233, i64 %234)
  br label %236

236:                                              ; preds = %228, %219
  %237 = load i64, i64* %9, align 8
  %238 = load i64, i64* %23, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 10
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @RelationMapUpdateMap(i64 %237, i64 %238, i32 %241, i32 0)
  %243 = load i64, i64* %10, align 8
  %244 = load i64, i64* %22, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 10
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @RelationMapUpdateMap(i64 %243, i64 %244, i32 %247, i32 0)
  %249 = load i64, i64* %10, align 8
  %250 = load i64*, i64** %16, align 8
  %251 = getelementptr inbounds i64, i64* %250, i32 1
  store i64* %251, i64** %16, align 8
  store i64 %249, i64* %250, align 8
  br label %252

252:                                              ; preds = %236, %134
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @RELKIND_INDEX, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %276

258:                                              ; preds = %252
  %259 = load i32, i32* %14, align 4
  %260 = call i32 @TransactionIdIsValid(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load i32, i32* %14, align 4
  %264 = call i64 @TransactionIdIsNormal(i32 %263)
  %265 = icmp ne i64 %264, 0
  br label %266

266:                                              ; preds = %262, %258
  %267 = phi i1 [ true, %258 ], [ %265, %262 ]
  %268 = zext i1 %267 to i32
  %269 = call i32 @Assert(i32 %268)
  %270 = load i32, i32* %14, align 4
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 9
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* %15, align 4
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 8
  store i32 %273, i32* %275, align 8
  br label %276

276:                                              ; preds = %266, %252
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 7
  %279 = load i8*, i8** %278, align 8
  store i8* %279, i8** %26, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 7
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 7
  store i8* %282, i8** %284, align 8
  %285 = load i8*, i8** %26, align 8
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 7
  store i8* %285, i8** %287, align 8
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  store i32 %290, i32* %27, align 4
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 6
  store i32 %293, i32* %295, align 8
  %296 = load i32, i32* %27, align 4
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 6
  store i32 %296, i32* %298, align 8
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 5
  %301 = load i8*, i8** %300, align 8
  store i8* %301, i8** %28, align 8
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 5
  %304 = load i8*, i8** %303, align 8
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 5
  store i8* %304, i8** %306, align 8
  %307 = load i8*, i8** %28, align 8
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 5
  store i8* %307, i8** %309, align 8
  %310 = load i32, i32* %11, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %329, label %312

312:                                              ; preds = %276
  %313 = load i32, i32* %17, align 4
  %314 = call i32 @CatalogOpenIndexes(i32 %313)
  store i32 %314, i32* %29, align 4
  %315 = load i32, i32* %17, align 4
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %319 = load i32, i32* %29, align 4
  %320 = call i32 @CatalogTupleUpdateWithInfo(i32 %315, i32* %317, %struct.TYPE_14__* %318, i32 %319)
  %321 = load i32, i32* %17, align 4
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %325 = load i32, i32* %29, align 4
  %326 = call i32 @CatalogTupleUpdateWithInfo(i32 %321, i32* %323, %struct.TYPE_14__* %324, i32 %325)
  %327 = load i32, i32* %29, align 4
  %328 = call i32 @CatalogCloseIndexes(i32 %327)
  br label %334

329:                                              ; preds = %276
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %331 = call i32 @CacheInvalidateRelcacheByTuple(%struct.TYPE_14__* %330)
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %333 = call i32 @CacheInvalidateRelcacheByTuple(%struct.TYPE_14__* %332)
  br label %334

334:                                              ; preds = %329, %312
  %335 = load i8*, i8** @RelationRelationId, align 8
  %336 = load i64, i64* %9, align 8
  %337 = load i32, i32* @InvalidOid, align 4
  %338 = load i32, i32* %13, align 4
  %339 = call i32 @InvokeObjectPostAlterHookArg(i8* %335, i64 %336, i32 0, i32 %337, i32 %338)
  %340 = load i8*, i8** @RelationRelationId, align 8
  %341 = load i64, i64* %10, align 8
  %342 = load i32, i32* @InvalidOid, align 4
  %343 = call i32 @InvokeObjectPostAlterHookArg(i8* %340, i64 %341, i32 0, i32 %342, i32 1)
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %334
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 3
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %463

353:                                              ; preds = %348, %334
  %354 = load i32, i32* %12, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %383

356:                                              ; preds = %353
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %379

361:                                              ; preds = %356
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 3
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %379

366:                                              ; preds = %361
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 3
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 3
  %372 = load i64, i64* %371, align 8
  %373 = load i32, i32* %11, align 4
  %374 = load i32, i32* %12, align 4
  %375 = load i32, i32* %13, align 4
  %376 = load i32, i32* %14, align 4
  %377 = load i32, i32* %15, align 4
  %378 = load i64*, i64** %16, align 8
  call void @swap_relation_files(i64 %369, i64 %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i64* %378)
  br label %382

379:                                              ; preds = %361, %356
  %380 = load i32, i32* @ERROR, align 4
  %381 = call i32 (i32, i8*, ...) @elog(i32 %380, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  br label %382

382:                                              ; preds = %379, %366
  br label %462

383:                                              ; preds = %353
  %384 = load i64, i64* %9, align 8
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %386 = call i64 @IsSystemClass(i64 %384, %struct.TYPE_15__* %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %383
  %389 = load i32, i32* @ERROR, align 4
  %390 = call i32 (i32, i8*, ...) @elog(i32 %389, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %391

391:                                              ; preds = %388, %383
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 3
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %409

396:                                              ; preds = %391
  %397 = load i8*, i8** @RelationRelationId, align 8
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = call i64 @deleteDependencyRecordsFor(i8* %397, i64 %400, i32 0)
  store i64 %401, i64* %32, align 8
  %402 = load i64, i64* %32, align 8
  %403 = icmp ne i64 %402, 1
  br i1 %403, label %404, label %408

404:                                              ; preds = %396
  %405 = load i32, i32* @ERROR, align 4
  %406 = load i64, i64* %32, align 8
  %407 = call i32 (i32, i8*, ...) @elog(i32 %405, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i64 %406)
  br label %408

408:                                              ; preds = %404, %396
  br label %409

409:                                              ; preds = %408, %391
  %410 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %427

414:                                              ; preds = %409
  %415 = load i8*, i8** @RelationRelationId, align 8
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 3
  %418 = load i64, i64* %417, align 8
  %419 = call i64 @deleteDependencyRecordsFor(i8* %415, i64 %418, i32 0)
  store i64 %419, i64* %32, align 8
  %420 = load i64, i64* %32, align 8
  %421 = icmp ne i64 %420, 1
  br i1 %421, label %422, label %426

422:                                              ; preds = %414
  %423 = load i32, i32* @ERROR, align 4
  %424 = load i64, i64* %32, align 8
  %425 = call i32 (i32, i8*, ...) @elog(i32 %423, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i64 %424)
  br label %426

426:                                              ; preds = %422, %414
  br label %427

427:                                              ; preds = %426, %409
  %428 = load i8*, i8** @RelationRelationId, align 8
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  store i8* %428, i8** %429, align 8
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  store i64 0, i64* %430, align 8
  %431 = load i8*, i8** @RelationRelationId, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  store i8* %431, i8** %432, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i64 0, i64* %433, align 8
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 3
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %427
  %439 = load i64, i64* %9, align 8
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i64 %439, i64* %440, align 8
  %441 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %441, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i64 %443, i64* %444, align 8
  %445 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %446 = call i32 @recordDependencyOn(%struct.TYPE_13__* %31, %struct.TYPE_13__* %30, i32 %445)
  br label %447

447:                                              ; preds = %438, %427
  %448 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 3
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %461

452:                                              ; preds = %447
  %453 = load i64, i64* %10, align 8
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i64 %453, i64* %454, align 8
  %455 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %455, i32 0, i32 3
  %457 = load i64, i64* %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i64 %457, i64* %458, align 8
  %459 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %460 = call i32 @recordDependencyOn(%struct.TYPE_13__* %31, %struct.TYPE_13__* %30, i32 %459)
  br label %461

461:                                              ; preds = %452, %447
  br label %462

462:                                              ; preds = %461, %382
  br label %463

463:                                              ; preds = %462, %348
  %464 = load i32, i32* %12, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %493

466:                                              ; preds = %463
  %467 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i32 0, i32 4
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %493

472:                                              ; preds = %466
  %473 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %473, i32 0, i32 4
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %477 = icmp eq i64 %475, %476
  br i1 %477, label %478, label %493

478:                                              ; preds = %472
  %479 = load i64, i64* %9, align 8
  %480 = load i32, i32* @AccessExclusiveLock, align 4
  %481 = call i64 @toast_get_valid_index(i64 %479, i32 %480)
  store i64 %481, i64* %33, align 8
  %482 = load i64, i64* %10, align 8
  %483 = load i32, i32* @AccessExclusiveLock, align 4
  %484 = call i64 @toast_get_valid_index(i64 %482, i32 %483)
  store i64 %484, i64* %34, align 8
  %485 = load i64, i64* %33, align 8
  %486 = load i64, i64* %34, align 8
  %487 = load i32, i32* %11, align 4
  %488 = load i32, i32* %12, align 4
  %489 = load i32, i32* %13, align 4
  %490 = load i32, i32* @InvalidTransactionId, align 4
  %491 = load i32, i32* @InvalidMultiXactId, align 4
  %492 = load i64*, i64** %16, align 8
  call void @swap_relation_files(i64 %485, i64 %486, i32 %487, i32 %488, i32 %489, i32 %490, i32 %491, i64* %492)
  br label %493

493:                                              ; preds = %478, %472, %466, %463
  %494 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %495 = call i32 @heap_freetuple(%struct.TYPE_14__* %494)
  %496 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %497 = call i32 @heap_freetuple(%struct.TYPE_14__* %496)
  %498 = load i32, i32* %17, align 4
  %499 = load i32, i32* @RowExclusiveLock, align 4
  %500 = call i32 @table_close(i32 %498, i32 %499)
  %501 = load i64, i64* %9, align 8
  %502 = call i32 @RelationCloseSmgrByOid(i64 %501)
  %503 = load i64, i64* %10, align 8
  %504 = call i32 @RelationCloseSmgrByOid(i64 %503)
  ret void
}

declare dso_local i32 @table_open(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_14__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_14__*) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @NameStr(i32) #1

declare dso_local i64 @RelationMapOidToFilenode(i64, i32) #1

declare dso_local i32 @RelationMapUpdateMap(i64, i64, i32, i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdIsNormal(i32) #1

declare dso_local i32 @CatalogOpenIndexes(i32) #1

declare dso_local i32 @CatalogTupleUpdateWithInfo(i32, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @CatalogCloseIndexes(i32) #1

declare dso_local i32 @CacheInvalidateRelcacheByTuple(%struct.TYPE_14__*) #1

declare dso_local i32 @InvokeObjectPostAlterHookArg(i8*, i64, i32, i32, i32) #1

declare dso_local i64 @IsSystemClass(i64, %struct.TYPE_15__*) #1

declare dso_local i64 @deleteDependencyRecordsFor(i8*, i64, i32) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @toast_get_valid_index(i64, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_14__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @RelationCloseSmgrByOid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
