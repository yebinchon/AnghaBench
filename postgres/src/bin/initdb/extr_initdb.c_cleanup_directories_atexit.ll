; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_cleanup_directories_atexit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_cleanup_directories_atexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@success = common dso_local global i64 0, align 8
@noclean = common dso_local global i32 0, align 4
@made_new_pgdata = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"removing data directory \22%s\22\00", align 1
@pg_data = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_directories_atexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_directories_atexit() #0 {
  %1 = load i64, i64* @success, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %77

4:                                                ; preds = %0
  %5 = load i32, i32* @noclean, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %58, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @made_new_pgdata, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i32, i32* @pg_data, align 4
  %12 = call i32 @pg_log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @pg_data, align 4
  %14 = call i32 @rmtree(i32 %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = call i32 @pg_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %10
  br label %32

19:                                               ; preds = %7
  %20 = load i64, i64* @found_existing_pgdata, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* @pg_data, align 4
  %24 = call i32 @pg_log_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @pg_data, align 4
  %26 = call i32 @rmtree(i32 %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = call i32 @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i64, i64* @made_new_xlogdir, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* @xlog_dir, align 4
  %37 = call i32 @pg_log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @xlog_dir, align 4
  %39 = call i32 @rmtree(i32 %38, i32 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  br label %57

44:                                               ; preds = %32
  %45 = load i64, i64* @found_existing_xlogdir, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* @xlog_dir, align 4
  %49 = call i32 @pg_log_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @xlog_dir, align 4
  %51 = call i32 @rmtree(i32 %50, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = call i32 @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %43
  br label %77

58:                                               ; preds = %4
  %59 = load i64, i64* @made_new_pgdata, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* @found_existing_pgdata, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %58
  %65 = load i32, i32* @pg_data, align 4
  %66 = call i32 @pg_log_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64, i64* @made_new_xlogdir, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* @found_existing_xlogdir, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70, %67
  %74 = load i32, i32* @xlog_dir, align 4
  %75 = call i32 @pg_log_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %3, %76, %57
  ret void
}

declare dso_local i32 @pg_log_info(i8*, i32) #1

declare dso_local i32 @rmtree(i32, i32) #1

declare dso_local i32 @pg_log_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
