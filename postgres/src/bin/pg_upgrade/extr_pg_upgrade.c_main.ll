; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"pg_upgrade\00", align 1
@PG_MODE_MASK_OWNER = common dso_local global i32 0, align 4
@old_cluster = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@new_cluster = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"could not read permissions of directory \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@pg_mode_mask = common dso_local global i32 0, align 4
@PG_REPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"\0APerforming Upgrade\0A------------------\0A\00", align 1
@user_opts = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@TRANSFER_MODE_LINK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Setting next OID for new cluster\00", align 1
@UTILITY_LOG_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"\22%s/pg_resetwal\22 -o %u \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Sync data directory to disk\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\22%s/initdb\22 --sync-only \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\0AUpgrade Complete\0A----------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @pg_logging_init(i8* %11)
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @set_pglocale_pgservice(i8* %15, i32 %16)
  %18 = load i32, i32* @PG_MODE_MASK_OWNER, align 4
  %19 = call i32 @umask(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @parseCommandLine(i32 %20, i8** %21)
  %23 = call i32 (...) @get_restricted_token()
  %24 = call i32 @adjust_data_dir(%struct.TYPE_10__* @old_cluster)
  %25 = call i32 @adjust_data_dir(%struct.TYPE_10__* @new_cluster)
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @setup(i8* %28, i32* %8)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @output_check_banner(i32 %30)
  %32 = call i32 (...) @check_cluster_versions()
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @get_sock_dir(%struct.TYPE_10__* @old_cluster, i32 %33)
  %35 = call i32 @get_sock_dir(%struct.TYPE_10__* @new_cluster, i32 0)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @check_cluster_compatibility(i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0), align 4
  %39 = call i32 @GetDataDirectoryCreatePerm(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0), align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 @pg_fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %41, %2
  %47 = load i32, i32* @pg_mode_mask, align 4
  %48 = call i32 @umask(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @check_and_dump_old_cluster(i32 %49)
  %51 = call i32 @start_postmaster(%struct.TYPE_10__* @new_cluster, i32 1)
  %52 = call i32 (...) @check_new_cluster()
  %53 = call i32 (...) @report_clusters_compatible()
  %54 = load i32, i32* @PG_REPORT, align 4
  %55 = call i32 @pg_log(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 (...) @prepare_new_cluster()
  %57 = call i32 @stop_postmaster(i32 0)
  %58 = call i32 (...) @copy_xact_xlog_xid()
  %59 = call i32 @start_postmaster(%struct.TYPE_10__* @new_cluster, i32 1)
  %60 = call i32 (...) @prepare_new_globals()
  %61 = call i32 (...) @create_new_objects()
  %62 = call i32 @stop_postmaster(i32 0)
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @user_opts, i32 0, i32 0), align 8
  %64 = load i64, i64* @TRANSFER_MODE_LINK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %46
  %67 = call i32 (...) @disable_old_cluster()
  br label %68

68:                                               ; preds = %66, %46
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @old_cluster, i32 0, i32 0), align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0), align 4
  %71 = call i32 @transfer_all_new_tablespaces(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @old_cluster, i32 0, i32 3), i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 3), i32 %69, i32 %70)
  %72 = call i32 @prep_status(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 1), align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @old_cluster, i32 0, i32 2, i32 0), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0), align 4
  %77 = call i32 (i32, i32*, i32, i32, i8*, i32, i32, ...) @exec_prog(i32 %73, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  %78 = call i32 (...) @check_ok()
  %79 = call i32 @prep_status(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 1), align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0), align 4
  %83 = call i32 (i32, i32*, i32, i32, i8*, i32, i32, ...) @exec_prog(i32 %80, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %81, i32 %82)
  %84 = call i32 (...) @check_ok()
  %85 = call i32 @create_script_for_cluster_analyze(i8** %6)
  %86 = call i32 @create_script_for_old_cluster_deletion(i8** %7)
  %87 = call i32 (...) @issue_warnings_and_set_wal_level()
  %88 = load i32, i32* @PG_REPORT, align 4
  %89 = call i32 @pg_log(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @output_completion_banner(i8* %90, i8* %91)
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @pg_free(i8* %93)
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @pg_free(i8* %95)
  %97 = call i32 (...) @cleanup()
  ret i32 0
}

declare dso_local i32 @pg_logging_init(i8*) #1

declare dso_local i32 @set_pglocale_pgservice(i8*, i32) #1

declare dso_local i32 @PG_TEXTDOMAIN(i8*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @parseCommandLine(i32, i8**) #1

declare dso_local i32 @get_restricted_token(...) #1

declare dso_local i32 @adjust_data_dir(%struct.TYPE_10__*) #1

declare dso_local i32 @setup(i8*, i32*) #1

declare dso_local i32 @output_check_banner(i32) #1

declare dso_local i32 @check_cluster_versions(...) #1

declare dso_local i32 @get_sock_dir(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @check_cluster_compatibility(i32) #1

declare dso_local i32 @GetDataDirectoryCreatePerm(i32) #1

declare dso_local i32 @pg_fatal(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @check_and_dump_old_cluster(i32) #1

declare dso_local i32 @start_postmaster(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @check_new_cluster(...) #1

declare dso_local i32 @report_clusters_compatible(...) #1

declare dso_local i32 @pg_log(i32, i8*) #1

declare dso_local i32 @prepare_new_cluster(...) #1

declare dso_local i32 @stop_postmaster(i32) #1

declare dso_local i32 @copy_xact_xlog_xid(...) #1

declare dso_local i32 @prepare_new_globals(...) #1

declare dso_local i32 @create_new_objects(...) #1

declare dso_local i32 @disable_old_cluster(...) #1

declare dso_local i32 @transfer_all_new_tablespaces(i32*, i32*, i32, i32) #1

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32 @exec_prog(i32, i32*, i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @check_ok(...) #1

declare dso_local i32 @create_script_for_cluster_analyze(i8**) #1

declare dso_local i32 @create_script_for_old_cluster_deletion(i8**) #1

declare dso_local i32 @issue_warnings_and_set_wal_level(...) #1

declare dso_local i32 @output_completion_banner(i8*, i8*) #1

declare dso_local i32 @pg_free(i8*) #1

declare dso_local i32 @cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
