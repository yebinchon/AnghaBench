; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_copy_xact_xlog_xid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_copy_xact_xlog_xid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@old_cluster = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"pg_clog\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pg_xact\00", align 1
@new_cluster = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Setting next transaction ID and epoch for new cluster\00", align 1
@UTILITY_LOG_FILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"\22%s/pg_resetwal\22 -f -x %u \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\22%s/pg_resetwal\22 -f -e %u \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\22%s/pg_resetwal\22 -f -c %u,%u \22%s\22\00", align 1
@MULTIXACT_FORMATCHANGE_CAT_VER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"pg_multixact/offsets\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"pg_multixact/members\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Setting next multixact ID and offset for new cluster\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\22%s/pg_resetwal\22 -O %u -m %u,%u \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Setting oldest multixact ID in new cluster\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\22%s/pg_resetwal\22 -m %u,%u \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Resetting WAL archives\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\22%s/pg_resetwal\22 -l 00000001%s \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_xact_xlog_xid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_xact_xlog_xid() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 1), align 8
  %2 = call i32 @GET_MAJOR_VERSION(i32 %1)
  %3 = icmp slt i32 %2, 1000
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 3), align 8
  %7 = call i32 @GET_MAJOR_VERSION(i32 %6)
  %8 = icmp slt i32 %7, 1000
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %11 = call i32 @copy_subdir_files(i8* %5, i8* %10)
  %12 = call i32 @prep_status(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 1), align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 5), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 0), align 8
  %17 = call i32 (i32, i32*, i32, i32, i8*, i32, i64, i32, ...) @exec_prog(i32 %13, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %14, i64 %15, i32 %16)
  %18 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 1), align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 6), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 0), align 8
  %22 = call i32 (i32, i32*, i32, i32, i8*, i32, i64, i32, ...) @exec_prog(i32 %18, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %19, i64 %20, i32 %21)
  %23 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 1), align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 5), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 5), align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 0), align 8
  %29 = call i32 (i32, i32*, i32, i32, i8*, i32, i64, i32, ...) @exec_prog(i32 %23, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %24, i64 %25, i32 %27, i32 %28)
  %30 = call i32 (...) @check_ok()
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 0), align 8
  %32 = load i64, i64* @MULTIXACT_FORMATCHANGE_CAT_VER, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %0
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 2, i32 0), align 8
  %36 = load i64, i64* @MULTIXACT_FORMATCHANGE_CAT_VER, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = call i32 @copy_subdir_files(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %40 = call i32 @copy_subdir_files(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %41 = call i32 @prep_status(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  %42 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 1), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 4), align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 2), align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 3), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 0), align 8
  %50 = call i32 (i32, i32*, i32, i32, i8*, i32, i64, i32, ...) @exec_prog(i32 %42, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %43, i64 %45, i32 %47, i32 %48, i32 %49)
  %51 = call i32 (...) @check_ok()
  br label %69

52:                                               ; preds = %34, %0
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 2, i32 0), align 8
  %54 = load i64, i64* @MULTIXACT_FORMATCHANGE_CAT_VER, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = call i32 @remove_new_subdir(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %58 = call i32 @prep_status(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %59 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 1), align 4
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 2), align 8
  %62 = add nsw i64 %61, 1
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 2), align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 0), align 8
  %66 = call i32 (i32, i32*, i32, i32, i8*, i32, i64, i32, ...) @exec_prog(i32 %59, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %60, i64 %62, i32 %64, i32 %65)
  %67 = call i32 (...) @check_ok()
  br label %68

68:                                               ; preds = %56, %52
  br label %69

69:                                               ; preds = %68, %38
  %70 = call i32 @prep_status(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %71 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 1), align 4
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @old_cluster, i32 0, i32 0, i32 1), align 8
  %74 = add nsw i64 %73, 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @new_cluster, i32 0, i32 0), align 8
  %76 = call i32 (i32, i32*, i32, i32, i8*, i32, i64, i32, ...) @exec_prog(i32 %71, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %72, i64 %74, i32 %75)
  %77 = call i32 (...) @check_ok()
  ret void
}

declare dso_local i32 @copy_subdir_files(i8*, i8*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32 @exec_prog(i32, i32*, i32, i32, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @check_ok(...) #1

declare dso_local i32 @remove_new_subdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
