; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_prepare_new_cluster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_prepare_new_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"Analyzing all rows in the new cluster\00", align 1
@UTILITY_LOG_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\22%s/vacuumdb\22 %s --all --analyze %s\00", align 1
@new_cluster = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@log_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Freezing all rows in the new cluster\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\22%s/vacuumdb\22 %s --all --freeze %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepare_new_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_new_cluster() #0 {
  %1 = call i32 @prep_status(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 0), align 4
  %4 = call i32 @cluster_conn_opts(%struct.TYPE_4__* @new_cluster)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @log_opts, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %9 = call i32 @exec_prog(i32 %2, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %3, i32 %4, i8* %8)
  %10 = call i32 (...) @check_ok()
  %11 = call i32 @prep_status(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 0), align 4
  %14 = call i32 @cluster_conn_opts(%struct.TYPE_4__* @new_cluster)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @log_opts, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %19 = call i32 @exec_prog(i32 %12, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %13, i32 %14, i8* %18)
  %20 = call i32 (...) @check_ok()
  ret void
}

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32 @exec_prog(i32, i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @cluster_conn_opts(%struct.TYPE_4__*) #1

declare dso_local i32 @check_ok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
