; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_log.c_fpm_log_open.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_log.c_fpm_log_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32, %struct.TYPE_2__*, %struct.fpm_worker_pool_s* }
%struct.TYPE_2__ = type { i32 }

@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to open access log (%s)\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"open access log (%s)\00", align 1
@SIGQUIT = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to change attribute of access_log\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_log_open(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpm_worker_pool_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %5, align 4
  %7 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %7, %struct.fpm_worker_pool_s** %4, align 8
  br label %8

8:                                                ; preds = %86, %1
  %9 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %10 = icmp ne %struct.fpm_worker_pool_s* %9, null
  br i1 %10, label %11, label %90

11:                                               ; preds = %8
  %12 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %13 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %86

19:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  %20 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %21 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @O_WRONLY, align 4
  %26 = load i32, i32* @O_APPEND, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @O_CREAT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @S_IRUSR, align 4
  %31 = load i32, i32* @S_IWUSR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @open(i32 %24, i32 %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 0, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %19
  %37 = load i32, i32* @ZLOG_SYSERROR, align 4
  %38 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %39 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @zlog(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %2, align 4
  br label %92

44:                                               ; preds = %19
  %45 = load i32, i32* @ZLOG_DEBUG, align 4
  %46 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %47 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @zlog(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %58 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dup2(i32 %56, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %64 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @SIGQUIT, align 4
  %67 = call i32 @fpm_pctl_kill_all(i32 %66)
  br label %72

68:                                               ; preds = %52
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %71 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %55
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @F_SETFD, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @F_GETFD, align 4
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %75, i32 %76)
  %78 = load i32, i32* @FD_CLOEXEC, align 4
  %79 = or i32 %77, %78
  %80 = call i32 (i32, i32, ...) @fcntl(i32 %73, i32 %74, i32 %79)
  %81 = icmp sgt i32 0, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @ZLOG_WARNING, align 4
  %84 = call i32 (i32, i8*, ...) @zlog(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %72
  br label %86

86:                                               ; preds = %85, %18
  %87 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %88 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %87, i32 0, i32 2
  %89 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %88, align 8
  store %struct.fpm_worker_pool_s* %89, %struct.fpm_worker_pool_s** %4, align 8
  br label %8

90:                                               ; preds = %8
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %36
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fpm_pctl_kill_all(i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
