; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_get_db_and_rel_infos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_get_db_and_rel_infos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_11__ = type { i64 }

@old_cluster = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\0Asource databases:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\0Atarget databases:\0A\00", align 1
@log_opts = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_db_and_rel_infos(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = call i32 @free_db_and_rel_infos(%struct.TYPE_10__* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @get_db_infos(%struct.TYPE_9__* %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %33, %13
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @get_rel_infos(%struct.TYPE_9__* %24, i32* %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = icmp eq %struct.TYPE_9__* %37, @old_cluster
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @PG_VERBOSE, align 4
  %41 = call i32 @pg_log(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @PG_VERBOSE, align 4
  %44 = call i32 @pg_log(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @log_opts, i32 0, i32 0), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = call i32 @print_db_infos(%struct.TYPE_10__* %50)
  br label %52

52:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @free_db_and_rel_infos(%struct.TYPE_10__*) #1

declare dso_local i32 @get_db_infos(%struct.TYPE_9__*) #1

declare dso_local i32 @get_rel_infos(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @pg_log(i32, i8*) #1

declare dso_local i32 @print_db_infos(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
