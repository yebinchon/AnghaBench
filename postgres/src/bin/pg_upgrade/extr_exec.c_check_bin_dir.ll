; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_exec.c_check_bin_dir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_exec.c_check_bin_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.stat = type { i32 }

@PG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"check for \22%s\22 failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"\22%s\22 is not a directory\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pg_controldata\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"pg_ctl\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"pg_resetxlog\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pg_resetwal\00", align 1
@new_cluster = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"initdb\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"pg_dump\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"pg_dumpall\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"pg_restore\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"psql\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"vacuumdb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @check_bin_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_bin_dir(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.stat, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @stat(i32 %6, %struct.stat* %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @PG_FATAL, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 (i32, i8*, i32, ...) @report_status(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  br label %29

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISDIR(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @PG_FATAL, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, i32, ...) @report_status(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %28, %9
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @validate_exec(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @validate_exec(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @validate_exec(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = call i32 @get_bin_version(%struct.TYPE_5__* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @GET_MAJOR_VERSION(i32 %46)
  %48 = icmp slt i32 %47, 1000
  br i1 %48, label %49, label %54

49:                                               ; preds = %29
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @validate_exec(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %59

54:                                               ; preds = %29
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @validate_exec(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = icmp eq %struct.TYPE_5__* %60, @new_cluster
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @validate_exec(i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @validate_exec(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @validate_exec(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @validate_exec(i32 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @validate_exec(i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @validate_exec(i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %87

87:                                               ; preds = %62, %59
  ret void
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @report_status(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @validate_exec(i32, i8*) #1

declare dso_local i32 @get_bin_version(%struct.TYPE_5__*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
