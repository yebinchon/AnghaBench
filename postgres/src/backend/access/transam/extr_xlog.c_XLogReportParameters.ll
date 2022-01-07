; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogReportParameters.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogReportParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@wal_level = common dso_local global i64 0, align 8
@ControlFile = common dso_local global %struct.TYPE_4__* null, align 8
@wal_log_hints = common dso_local global i64 0, align 8
@MaxConnections = common dso_local global i64 0, align 8
@max_worker_processes = common dso_local global i64 0, align 8
@max_wal_senders = common dso_local global i64 0, align 8
@max_prepared_xacts = common dso_local global i64 0, align 8
@max_locks_per_xact = common dso_local global i64 0, align 8
@track_commit_timestamp = common dso_local global i64 0, align 8
@RM_XLOG_ID = common dso_local global i32 0, align 4
@XLOG_PARAMETER_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @XLogReportParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogReportParameters() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @wal_level, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %3, %6
  br i1 %7, label %50, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @wal_log_hints, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %50, label %14

14:                                               ; preds = %8
  %15 = load i64, i64* @MaxConnections, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %50, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* @max_worker_processes, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* @max_wal_senders, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* @max_prepared_xacts, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* @max_locks_per_xact, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* @track_commit_timestamp, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %110

50:                                               ; preds = %44, %38, %32, %26, %20, %14, %8, %0
  %51 = load i64, i64* @wal_level, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = call i64 (...) @XLogIsNeeded()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %56, %50
  %60 = load i64, i64* @MaxConnections, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* @max_worker_processes, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* @max_wal_senders, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i64 %64, i64* %65, align 8
  %66 = load i64, i64* @max_prepared_xacts, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* @max_locks_per_xact, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* @wal_level, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* @wal_log_hints, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* @track_commit_timestamp, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = call i32 (...) @XLogBeginInsert()
  %77 = bitcast %struct.TYPE_3__* %1 to i8*
  %78 = call i32 @XLogRegisterData(i8* %77, i32 64)
  %79 = load i32, i32* @RM_XLOG_ID, align 4
  %80 = load i32, i32* @XLOG_PARAMETER_CHANGE, align 4
  %81 = call i32 @XLogInsert(i32 %79, i32 %80)
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @XLogFlush(i32 %82)
  br label %84

84:                                               ; preds = %59, %56
  %85 = load i64, i64* @MaxConnections, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* @max_worker_processes, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* @max_wal_senders, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* @max_prepared_xacts, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* @max_locks_per_xact, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 6
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* @wal_level, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* @wal_log_hints, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* @track_commit_timestamp, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ControlFile, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 7
  store i64 %106, i64* %108, align 8
  %109 = call i32 (...) @UpdateControlFile()
  br label %110

110:                                              ; preds = %84, %44
  ret void
}

declare dso_local i64 @XLogIsNeeded(...) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @XLogFlush(i32) #1

declare dso_local i32 @UpdateControlFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
