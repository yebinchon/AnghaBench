; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_progress_update_param.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_progress_update_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@MyBEEntry = common dso_local global %struct.TYPE_5__* null, align 8
@PGSTAT_NUM_PROGRESS_PARAM = common dso_local global i32 0, align 4
@pgstat_track_activities = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgstat_progress_update_param(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyBEEntry, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PGSTAT_NUM_PROGRESS_PARAM, align 4
  %12 = icmp slt i32 %10, %11
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @pgstat_track_activities, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %13
  br label %35

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = call i32 @PGSTAT_BEGIN_WRITE_ACTIVITY(%struct.TYPE_5__* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load volatile i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = call i32 @PGSTAT_END_WRITE_ACTIVITY(%struct.TYPE_5__* %33)
  br label %35

35:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PGSTAT_BEGIN_WRITE_ACTIVITY(%struct.TYPE_5__*) #1

declare dso_local i32 @PGSTAT_END_WRITE_ACTIVITY(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
