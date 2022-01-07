; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_output_completion_banner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_output_completion_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@old_cluster = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PG_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"Optimizer statistics are not transferred by pg_upgrade so,\0Aonce you start the new server, consider running:\0A    %s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [144 x i8] c"Optimizer statistics and free space information are not transferred\0Aby pg_upgrade so, once you start the new server, consider running:\0A    %s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Running this script will delete the old cluster's data files:\0A    %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [225 x i8] c"Could not create a script to delete the old cluster's data files\0Abecause user-defined tablespaces or the new cluster's data directory\0Aexist in the old cluster directory.  The old cluster's contents must\0Abe deleted manually.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_completion_banner(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @old_cluster, i32 0, i32 0), align 4
  %6 = call i32 @GET_MAJOR_VERSION(i32 %5)
  %7 = icmp sge i32 %6, 804
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @PG_REPORT, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i32, i8*, ...) @pg_log(i32 %9, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @PG_REPORT, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (i32, i8*, ...) @pg_log(i32 %13, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @PG_REPORT, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i32, i8*, ...) @pg_log(i32 %20, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @PG_REPORT, align 4
  %25 = call i32 (i32, i8*, ...) @pg_log(i32 %24, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @pg_log(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
