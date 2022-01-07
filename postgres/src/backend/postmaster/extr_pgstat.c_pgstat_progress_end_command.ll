; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_progress_end_command.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_progress_end_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@MyBEEntry = common dso_local global %struct.TYPE_5__* null, align 8
@pgstat_track_activities = common dso_local global i32 0, align 4
@PROGRESS_COMMAND_INVALID = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgstat_progress_end_command() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyBEEntry, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @pgstat_track_activities, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %0
  br label %27

9:                                                ; preds = %5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load volatile i64, i64* %11, align 8
  %13 = load i64, i64* @PROGRESS_COMMAND_INVALID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %27

16:                                               ; preds = %9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = call i32 @PGSTAT_BEGIN_WRITE_ACTIVITY(%struct.TYPE_5__* %17)
  %19 = load i64, i64* @PROGRESS_COMMAND_INVALID, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store volatile i64 %19, i64* %21, align 8
  %22 = load i32, i32* @InvalidOid, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store volatile i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = call i32 @PGSTAT_END_WRITE_ACTIVITY(%struct.TYPE_5__* %25)
  br label %27

27:                                               ; preds = %16, %15, %8
  ret void
}

declare dso_local i32 @PGSTAT_BEGIN_WRITE_ACTIVITY(%struct.TYPE_5__*) #1

declare dso_local i32 @PGSTAT_END_WRITE_ACTIVITY(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
