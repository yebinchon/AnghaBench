; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_restore_toc_entries_parallel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_restore_toc_entries_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"entering restore_toc_entries_parallel\00", align 1
@RESTORE_PASS_MAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"entering main parallel loop\00", align 1
@REQ_SCHEMA = common dso_local global i32 0, align 4
@REQ_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"skipping item %d %s %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"launching item %d %s %s\00", align 1
@ACT_RESTORE = common dso_local global i32 0, align 4
@mark_restore_job_done = common dso_local global i32 0, align 4
@RESTORE_PASS_LAST = common dso_local global i32 0, align 4
@WFW_ONE_IDLE = common dso_local global i32 0, align 4
@WFW_GOT_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"finished main parallel loop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*, %struct.TYPE_20__*)* @restore_toc_entries_parallel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_toc_entries_parallel(%struct.TYPE_22__* %0, i32* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %9 = call i32 @pg_log_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ready_list_init(%struct.TYPE_21__* %7, i32 %12)
  %14 = load i32, i32* @RESTORE_PASS_MAIN, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @move_to_ready_list(%struct.TYPE_20__* %17, %struct.TYPE_21__* %7, i32 %20)
  %22 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %101, %80, %38, %3
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_20__* @pop_next_work_item(%struct.TYPE_22__* %24, %struct.TYPE_21__* %7, i32* %25)
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %8, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %28 = icmp ne %struct.TYPE_20__* %27, null
  br i1 %28, label %29, label %69

29:                                               ; preds = %23
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @REQ_SCHEMA, align 4
  %34 = load i32, i32* @REQ_DATA, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44, i32 %47)
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = call i32 @reduce_dependencies(%struct.TYPE_22__* %49, %struct.TYPE_20__* %50, %struct.TYPE_21__* %7)
  br label %23

52:                                               ; preds = %29
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %66 = load i32, i32* @ACT_RESTORE, align 4
  %67 = load i32, i32* @mark_restore_job_done, align 4
  %68 = call i32 @DispatchJobForTocEntry(%struct.TYPE_22__* %63, i32* %64, %struct.TYPE_20__* %65, i32 %66, i32 %67, %struct.TYPE_21__* %7)
  br label %92

69:                                               ; preds = %23
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @IsEveryWorkerIdle(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RESTORE_PASS_LAST, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %104

80:                                               ; preds = %73
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @move_to_ready_list(%struct.TYPE_20__* %85, %struct.TYPE_21__* %7, i32 %88)
  br label %23

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %52
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %96 = icmp ne %struct.TYPE_20__* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @WFW_ONE_IDLE, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @WFW_GOT_STATUS, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = call i32 @WaitForWorkers(%struct.TYPE_22__* %93, i32* %94, i32 %102)
  br label %23

104:                                              ; preds = %79
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %106, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @Assert(i32 %110)
  %112 = call i32 @ready_list_free(%struct.TYPE_21__* %7)
  %113 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pg_log_debug(i8*) #1

declare dso_local i32 @ready_list_init(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @move_to_ready_list(%struct.TYPE_20__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @pg_log_info(i8*, ...) #1

declare dso_local %struct.TYPE_20__* @pop_next_work_item(%struct.TYPE_22__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @reduce_dependencies(%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @DispatchJobForTocEntry(%struct.TYPE_22__*, i32*, %struct.TYPE_20__*, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @IsEveryWorkerIdle(i32*) #1

declare dso_local i32 @WaitForWorkers(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ready_list_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
