; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_RegisterBackgroundWorker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_RegisterBackgroundWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i32*, %struct.TYPE_7__ }

@RegisterBackgroundWorker.numworkers = internal global i32 0, align 4
@IsUnderPostmaster = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"registering background worker \22%s\22\00", align 1
@process_shared_preload_libraries_in_progress = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@LOG = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"background worker \22%s\22: must be registered in shared_preload_libraries\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"background worker \22%s\22: only dynamic background workers can request notification\00", align 1
@max_worker_processes = common dso_local global i32 0, align 4
@ERRCODE_CONFIGURATION_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"too many background workers\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"Up to %d background worker can be registered with the current settings.\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"Up to %d background workers can be registered with the current settings.\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Consider increasing the configuration parameter \22max_worker_processes\22.\00", align 1
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@BackgroundWorkerList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RegisterBackgroundWorker(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* @IsUnderPostmaster, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @DEBUG1, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 @ereport(i32 %7, i32 %11)
  br label %13

13:                                               ; preds = %6, %1
  %14 = load i32, i32* @process_shared_preload_libraries_in_progress, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32, i32* @IsUnderPostmaster, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @LOG, align 4
  %27 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 @ereport(i32 %26, i32 %32)
  br label %34

34:                                               ; preds = %25, %22
  br label %99

35:                                               ; preds = %16, %13
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = load i32, i32* @LOG, align 4
  %38 = call i32 @SanityCheckBackgroundWorker(%struct.TYPE_7__* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %99

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* @LOG, align 4
  %48 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = call i32 @ereport(i32 %47, i32 %53)
  br label %99

55:                                               ; preds = %41
  %56 = load i32, i32* @RegisterBackgroundWorker.numworkers, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @RegisterBackgroundWorker.numworkers, align 4
  %58 = load i32, i32* @max_worker_processes, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32, i32* @LOG, align 4
  %62 = load i32, i32* @ERRCODE_CONFIGURATION_LIMIT_EXCEEDED, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @max_worker_processes, align 4
  %66 = load i32, i32* @max_worker_processes, align 4
  %67 = call i32 @errdetail_plural(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %65, i32 %66)
  %68 = call i32 @errhint(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  %69 = call i32 @ereport(i32 %61, i32 %68)
  br label %99

70:                                               ; preds = %55
  %71 = call %struct.TYPE_6__* @malloc(i32 56)
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %3, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = icmp eq %struct.TYPE_6__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @LOG, align 4
  %76 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %77 = call i32 @errcode(i32 %76)
  %78 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %79 = call i32 @ereport(i32 %75, i32 %78)
  br label %99

80:                                               ; preds = %70
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = bitcast %struct.TYPE_7__* %82 to i8*
  %85 = bitcast %struct.TYPE_7__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = call i32 @slist_push_head(i32* @BackgroundWorkerList, i32* %97)
  br label %99

99:                                               ; preds = %80, %74, %60, %46, %40, %34
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @SanityCheckBackgroundWorker(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @errdetail_plural(i8*, i8*, i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @slist_push_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
