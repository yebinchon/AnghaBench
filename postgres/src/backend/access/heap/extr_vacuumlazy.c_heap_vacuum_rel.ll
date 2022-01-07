; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_heap_vacuum_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_heap_vacuum_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, double, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i64, i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i64, double, i32, i32, i64, i64, i64, double, i64, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_29__ = type { i32 }

@VACOPT_TERNARY_DEFAULT = common dso_local global i64 0, align 8
@VACOPT_VERBOSE = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@elevel = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@PROGRESS_COMMAND_VACUUM = common dso_local global i32 0, align 4
@vac_strategy = common dso_local global i32 0, align 4
@OldestXmin = common dso_local global i32 0, align 4
@FreezeLimit = common dso_local global i32 0, align 4
@MultiXactCutoff = common dso_local global i32 0, align 4
@VACOPT_DISABLE_PAGE_SKIPPING = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"skipping redundant vacuum to prevent wraparound of table \22%s.%s.%s\22\00", align 1
@MyDatabaseId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@VACOPT_TERNARY_ENABLED = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4
@PROGRESS_VACUUM_PHASE = common dso_local global i32 0, align 4
@PROGRESS_VACUUM_PHASE_FINAL_CLEANUP = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidMultiXactId = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i64 0, align 8
@VacuumPageMiss = common dso_local global double 0.000000e+00, align 8
@VacuumPageDirty = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [88 x i8] c"automatic aggressive vacuum to prevent wraparound of table \22%s.%s.%s\22: index scans: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"automatic aggressive vacuum of table \22%s.%s.%s\22: index scans: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"automatic vacuum of table \22%s.%s.%s\22: index scans: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"pages: %u removed, %u remain, %u skipped due to pins, %u skipped frozen\0A\00", align 1
@.str.5 = private unnamed_addr constant [89 x i8] c"tuples: %.0f removed, %.0f remain, %.0f are dead but not yet removable, oldest xmin: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"buffer usage: %d hits, %d misses, %d dirtied\0A\00", align 1
@VacuumPageHit = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"avg read rate: %.3f MB/s, avg write rate: %.3f MB/s\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"system usage: %s\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_vacuum_rel(%struct.TYPE_30__* %0, %struct.TYPE_28__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_30__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_29__, align 4
  %27 = alloca i8*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %29 = icmp ne %struct.TYPE_28__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VACOPT_TERNARY_DEFAULT, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VACOPT_TERNARY_DEFAULT, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @TransactionIdIsNormal(i32 %50)
  %52 = call i32 @Assert(i32 %51)
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MultiXactIdIsValid(i32 %57)
  %59 = call i32 @Assert(i32 %58)
  %60 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %3
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = call i32 @pg_rusage_init(i32* %10)
  %69 = call i32 (...) @GetCurrentTimestamp()
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %67, %62, %3
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @VACOPT_VERBOSE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @INFO, align 4
  store i32 %78, i32* @elevel, align 4
  br label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @DEBUG2, align 4
  store i32 %80, i32* @elevel, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i32, i32* @PROGRESS_COMMAND_VACUUM, align 4
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %84 = call i32 @RelationGetRelid(%struct.TYPE_30__* %83)
  %85 = call i32 @pgstat_progress_start_command(i32 %82, i32 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* @vac_strategy, align 4
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @vacuum_set_xid_limits(%struct.TYPE_30__* %87, i32 %90, i32 %93, i32 %96, i32 %99, i32* @OldestXmin, i32* @FreezeLimit, i32* %18, i32* @MultiXactCutoff, i32* %19)
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @TransactionIdPrecedesOrEquals(i32 %105, i32 %106)
  store i32 %107, i32* %16, align 4
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @MultiXactIdPrecedesOrEquals(i32 %112, i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %16, align 4
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @VACOPT_DISABLE_PAGE_SKIPPING, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %81
  store i32 1, i32* %16, align 4
  br label %124

124:                                              ; preds = %123, %81
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %124
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @DEBUG1, align 4
  %134 = load i32, i32* @MyDatabaseId, align 4
  %135 = call i32 @get_database_name(i32 %134)
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %137 = call i32 @RelationGetNamespace(%struct.TYPE_30__* %136)
  %138 = call i32 @get_namespace_name(i32 %137)
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %140 = call i32 @RelationGetRelationName(%struct.TYPE_30__* %139)
  %141 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %138, i32 %140)
  %142 = call i32 @ereport(i32 %133, i32 %141)
  %143 = call i32 (...) @pgstat_progress_end_command()
  br label %431

144:                                              ; preds = %129, %124
  %145 = call i64 @palloc0(i32 96)
  %146 = inttoptr i64 %145 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %146, %struct.TYPE_31__** %7, align 8
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 1
  %158 = load double, double* %157, align 8
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 1
  store double %158, double* %160, align 8
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 14
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 13
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 2
  store i32 0, i32* %166, align 8
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %168 = load i32, i32* @RowExclusiveLock, align 4
  %169 = call i32 @vac_open_indexes(%struct.TYPE_30__* %167, i32 %168, i32* %9, %struct.TYPE_30__*** %8)
  %170 = load i32, i32* %9, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %144
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @VACOPT_TERNARY_ENABLED, align 8
  %177 = icmp eq i64 %175, %176
  br label %178

178:                                              ; preds = %172, %144
  %179 = phi i1 [ false, %144 ], [ %177, %172 ]
  %180 = zext i1 %179 to i32
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %186 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %16, align 4
  %189 = call i32 @lazy_scan_heap(%struct.TYPE_30__* %183, %struct.TYPE_28__* %184, %struct.TYPE_31__* %185, %struct.TYPE_30__** %186, i32 %187, i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %192 = load i32, i32* @NoLock, align 4
  %193 = call i32 @vac_close_indexes(i32 %190, %struct.TYPE_30__** %191, i32 %192)
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %196, %199
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 6
  %203 = load i64, i64* %202, align 8
  %204 = icmp slt i64 %200, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %178
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 @Assert(i32 %209)
  store i32 0, i32* %17, align 4
  br label %212

211:                                              ; preds = %178
  store i32 1, i32* %17, align 4
  br label %212

212:                                              ; preds = %211, %205
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %215 = call i64 @should_attempt_truncation(%struct.TYPE_28__* %213, %struct.TYPE_31__* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %220 = call i32 @lazy_truncate_heap(%struct.TYPE_30__* %218, %struct.TYPE_31__* %219)
  br label %221

221:                                              ; preds = %217, %212
  %222 = load i32, i32* @PROGRESS_VACUUM_PHASE, align 4
  %223 = load i32, i32* @PROGRESS_VACUUM_PHASE_FINAL_CLEANUP, align 4
  %224 = call i32 @pgstat_progress_update_param(i32 %222, i32 %223)
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %20, align 8
  %228 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %228, i32 0, i32 7
  %230 = load double, double* %229, align 8
  store double %230, double* %22, align 8
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 8
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %221
  %236 = load i64, i64* %20, align 8
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %20, align 8
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 1
  %244 = load double, double* %243, align 8
  store double %244, double* %22, align 8
  br label %245

245:                                              ; preds = %238, %235, %221
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %247 = call i32 @visibilitymap_count(%struct.TYPE_30__* %246, i64* %21, i32* null)
  %248 = load i64, i64* %21, align 8
  %249 = load i64, i64* %20, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = load i64, i64* %20, align 8
  store i64 %252, i64* %21, align 8
  br label %253

253:                                              ; preds = %251, %245
  %254 = load i32, i32* %17, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* @FreezeLimit, align 4
  br label %260

258:                                              ; preds = %253
  %259 = load i32, i32* @InvalidTransactionId, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %257, %256 ], [ %259, %258 ]
  store i32 %261, i32* %23, align 4
  %262 = load i32, i32* %17, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = load i32, i32* @MultiXactCutoff, align 4
  br label %268

266:                                              ; preds = %260
  %267 = load i32, i32* @InvalidMultiXactId, align 4
  br label %268

268:                                              ; preds = %266, %264
  %269 = phi i32 [ %265, %264 ], [ %267, %266 ]
  store i32 %269, i32* %24, align 4
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %271 = load i64, i64* %20, align 8
  %272 = load double, double* %22, align 8
  %273 = load i64, i64* %21, align 8
  %274 = load i32, i32* %9, align 4
  %275 = icmp sgt i32 %274, 0
  %276 = zext i1 %275 to i32
  %277 = load i32, i32* %23, align 4
  %278 = load i32, i32* %24, align 4
  %279 = call i32 @vac_update_relstats(%struct.TYPE_30__* %270, i64 %271, double %272, i64 %273, i32 %276, i32 %277, i32 %278, i32 0)
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %281 = call i32 @RelationGetRelid(%struct.TYPE_30__* %280)
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load double, double* %22, align 8
  %288 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %288, i32 0, i32 9
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @pgstat_report_vacuum(i32 %281, i32 %286, double %287, i32 %290)
  %292 = call i32 (...) @pgstat_progress_end_command()
  %293 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %431

295:                                              ; preds = %268
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = icmp sge i64 %298, 0
  br i1 %299, label %300, label %431

300:                                              ; preds = %295
  %301 = call i32 (...) @GetCurrentTimestamp()
  store i32 %301, i32* %25, align 4
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %314, label %306

306:                                              ; preds = %300
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* %25, align 4
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = call i64 @TimestampDifferenceExceeds(i32 %307, i32 %308, i64 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %430

314:                                              ; preds = %306, %300
  %315 = load i32, i32* %11, align 4
  %316 = load i32, i32* %25, align 4
  %317 = call i32 @TimestampDifference(i32 %315, i32 %316, i64* %12, i32* %13)
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  %318 = load i64, i64* %12, align 8
  %319 = icmp sgt i64 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %314
  %321 = load i32, i32* %13, align 4
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %348

323:                                              ; preds = %320, %314
  %324 = load i64, i64* @BLCKSZ, align 8
  %325 = sitofp i64 %324 to double
  %326 = load double, double* @VacuumPageMiss, align 8
  %327 = fmul double %325, %326
  %328 = fdiv double %327, 0x4130000000000000
  %329 = load i64, i64* %12, align 8
  %330 = sitofp i64 %329 to double
  %331 = load i32, i32* %13, align 4
  %332 = sitofp i32 %331 to double
  %333 = fdiv double %332, 1.000000e+06
  %334 = fadd double %330, %333
  %335 = fdiv double %328, %334
  store double %335, double* %14, align 8
  %336 = load i64, i64* @BLCKSZ, align 8
  %337 = sitofp i64 %336 to double
  %338 = load double, double* @VacuumPageDirty, align 8
  %339 = fmul double %337, %338
  %340 = fdiv double %339, 0x4130000000000000
  %341 = load i64, i64* %12, align 8
  %342 = sitofp i64 %341 to double
  %343 = load i32, i32* %13, align 4
  %344 = sitofp i32 %343 to double
  %345 = fdiv double %344, 1.000000e+06
  %346 = fadd double %342, %345
  %347 = fdiv double %340, %346
  store double %347, double* %15, align 8
  br label %348

348:                                              ; preds = %323, %320
  %349 = call i32 @initStringInfo(%struct.TYPE_29__* %26)
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 4
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %348
  %355 = load i32, i32* %16, align 4
  %356 = call i32 @Assert(i32 %355)
  %357 = call i8* @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0))
  store i8* %357, i8** %27, align 8
  br label %366

358:                                              ; preds = %348
  %359 = load i32, i32* %16, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  store i8* %362, i8** %27, align 8
  br label %365

363:                                              ; preds = %358
  %364 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i8* %364, i8** %27, align 8
  br label %365

365:                                              ; preds = %363, %361
  br label %366

366:                                              ; preds = %365, %354
  %367 = load i8*, i8** %27, align 8
  %368 = load i32, i32* @MyDatabaseId, align 4
  %369 = call i32 @get_database_name(i32 %368)
  %370 = sitofp i32 %369 to double
  %371 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %372 = call i32 @RelationGetNamespace(%struct.TYPE_30__* %371)
  %373 = call i32 @get_namespace_name(i32 %372)
  %374 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %375 = call i32 @RelationGetRelationName(%struct.TYPE_30__* %374)
  %376 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %376, i32 0, i32 14
  %378 = load i64, i64* %377, align 8
  %379 = call i32 (%struct.TYPE_29__*, i8*, double, ...) @appendStringInfo(%struct.TYPE_29__* %26, i8* %367, double %370, i32 %373, i32 %375, i64 %378)
  %380 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %381 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 13
  %383 = load i64, i64* %382, align 8
  %384 = sitofp i64 %383 to double
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %385, i32 0, i32 6
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %388, i32 0, i32 12
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %391, i32 0, i32 5
  %393 = load i64, i64* %392, align 8
  %394 = call i32 (%struct.TYPE_29__*, i8*, double, ...) @appendStringInfo(%struct.TYPE_29__* %26, i8* %380, double %384, i64 %387, i32 %390, i64 %393)
  %395 = call i8* @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0))
  %396 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %396, i32 0, i32 11
  %398 = load i32, i32* %397, align 8
  %399 = sitofp i32 %398 to double
  %400 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %400, i32 0, i32 10
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %403, i32 0, i32 9
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @OldestXmin, align 4
  %407 = call i32 (%struct.TYPE_29__*, i8*, double, ...) @appendStringInfo(%struct.TYPE_29__* %26, i8* %395, double %399, i32 %402, i32 %405, i32 %406)
  %408 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %409 = load i32, i32* @VacuumPageHit, align 4
  %410 = sitofp i32 %409 to double
  %411 = load double, double* @VacuumPageMiss, align 8
  %412 = load double, double* @VacuumPageDirty, align 8
  %413 = call i32 (%struct.TYPE_29__*, i8*, double, ...) @appendStringInfo(%struct.TYPE_29__* %26, i8* %408, double %410, double %411, double %412)
  %414 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %415 = load double, double* %14, align 8
  %416 = load double, double* %15, align 8
  %417 = call i32 (%struct.TYPE_29__*, i8*, double, ...) @appendStringInfo(%struct.TYPE_29__* %26, i8* %414, double %415, double %416)
  %418 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %419 = call i32 @pg_rusage_show(i32* %10)
  %420 = sitofp i32 %419 to double
  %421 = call i32 (%struct.TYPE_29__*, i8*, double, ...) @appendStringInfo(%struct.TYPE_29__* %26, i8* %418, double %420)
  %422 = load i32, i32* @LOG, align 4
  %423 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @errmsg_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %424)
  %426 = call i32 @ereport(i32 %422, i32 %425)
  %427 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @pfree(i32 %428)
  br label %430

430:                                              ; preds = %366, %306
  br label %431

431:                                              ; preds = %132, %430, %295, %268
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsNormal(i32) #1

declare dso_local i32 @MultiXactIdIsValid(i32) #1

declare dso_local i64 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i32 @pg_rusage_init(i32*) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @pgstat_progress_start_command(i32, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_30__*) #1

declare dso_local i32 @vacuum_set_xid_limits(%struct.TYPE_30__*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TransactionIdPrecedesOrEquals(i32, i32) #1

declare dso_local i32 @MultiXactIdPrecedesOrEquals(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @RelationGetNamespace(%struct.TYPE_30__*) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_30__*) #1

declare dso_local i32 @pgstat_progress_end_command(...) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @vac_open_indexes(%struct.TYPE_30__*, i32, i32*, %struct.TYPE_30__***) #1

declare dso_local i32 @lazy_scan_heap(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_31__*, %struct.TYPE_30__**, i32, i32) #1

declare dso_local i32 @vac_close_indexes(i32, %struct.TYPE_30__**, i32) #1

declare dso_local i64 @should_attempt_truncation(%struct.TYPE_28__*, %struct.TYPE_31__*) #1

declare dso_local i32 @lazy_truncate_heap(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @pgstat_progress_update_param(i32, i32) #1

declare dso_local i32 @visibilitymap_count(%struct.TYPE_30__*, i64*, i32*) #1

declare dso_local i32 @vac_update_relstats(%struct.TYPE_30__*, i64, double, i64, i32, i32, i32, i32) #1

declare dso_local i32 @pgstat_report_vacuum(i32, i32, double, i32) #1

declare dso_local i64 @TimestampDifferenceExceeds(i32, i32, i64) #1

declare dso_local i32 @TimestampDifference(i32, i32, i64*, i32*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_29__*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_29__*, i8*, double, ...) #1

declare dso_local i32 @pg_rusage_show(i32*) #1

declare dso_local i32 @errmsg_internal(i8*, i32) #1

declare dso_local i32 @pfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
