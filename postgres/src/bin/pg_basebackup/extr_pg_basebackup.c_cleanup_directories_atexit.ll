; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_cleanup_directories_atexit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_cleanup_directories_atexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@success = common dso_local global i64 0, align 8
@in_log_streamer = common dso_local global i64 0, align 8
@noclean = common dso_local global i32 0, align 4
@checksum_failure = common dso_local global i32 0, align 4
@made_new_pgdata = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"removing data directory \22%s\22\00", align 1
@basedir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to remove data directory\00", align 1
@found_existing_pgdata = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"removing contents of data directory \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to remove contents of data directory\00", align 1
@made_new_xlogdir = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"removing WAL directory \22%s\22\00", align 1
@xlog_dir = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to remove WAL directory\00", align 1
@found_existing_xlogdir = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"removing contents of WAL directory \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"failed to remove contents of WAL directory\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"data directory \22%s\22 not removed at user's request\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"WAL directory \22%s\22 not removed at user's request\00", align 1
@made_tablespace_dirs = common dso_local global i64 0, align 8
@found_tablespace_dirs = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [53 x i8] c"changes to tablespace directories will not be undone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_directories_atexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_directories_atexit() #0 {
  %1 = load i64, i64* @success, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @in_log_streamer, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  br label %97

7:                                                ; preds = %3
  %8 = load i32, i32* @noclean, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @checksum_failure, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %64, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @made_new_pgdata, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, i32* @basedir, align 4
  %18 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @basedir, align 4
  %20 = call i32 @rmtree(i32 %19, i32 1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call i32 @pg_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %16
  br label %38

25:                                               ; preds = %13
  %26 = load i64, i64* @found_existing_pgdata, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* @basedir, align 4
  %30 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @basedir, align 4
  %32 = call i32 @rmtree(i32 %31, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = call i32 @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i64, i64* @made_new_xlogdir, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* @xlog_dir, align 4
  %43 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @xlog_dir, align 4
  %45 = call i32 @rmtree(i32 %44, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %41
  br label %63

50:                                               ; preds = %38
  %51 = load i64, i64* @found_existing_xlogdir, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* @xlog_dir, align 4
  %55 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @xlog_dir, align 4
  %57 = call i32 @rmtree(i32 %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = call i32 @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %49
  br label %86

64:                                               ; preds = %10, %7
  %65 = load i64, i64* @made_new_pgdata, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @found_existing_pgdata, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67, %64
  %71 = load i32, i32* @checksum_failure, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @basedir, align 4
  %75 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %70, %67
  %77 = load i64, i64* @made_new_xlogdir, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* @found_existing_xlogdir, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @xlog_dir, align 4
  %84 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %63
  %87 = load i64, i64* @made_tablespace_dirs, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* @found_tablespace_dirs, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89, %86
  %93 = load i32, i32* @checksum_failure, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  br label %97

97:                                               ; preds = %6, %95, %92, %89
  ret void
}

declare dso_local i32 @pg_log_info(i8*, ...) #1

declare dso_local i32 @rmtree(i32, i32) #1

declare dso_local i32 @pg_log_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
