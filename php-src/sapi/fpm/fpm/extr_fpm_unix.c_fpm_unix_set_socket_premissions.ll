; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_unix.c_fpm_unix_set_socket_premissions.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_unix.c_fpm_unix_set_socket_premissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8*, i32 }

@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"[pool %s] failed to chown() the socket '%s'\00", align 1
@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ZLOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_unix_set_socket_premissions(%struct.fpm_worker_pool_s* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpm_worker_pool_s*, align 8
  %5 = alloca i8*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %7 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %12 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %39

15:                                               ; preds = %10, %2
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %18 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %21 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @chown(i8* %16, i32 %19, i32 %22)
  %24 = icmp sgt i64 0, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = load i32, i32* @ZLOG_SYSERROR, align 4
  %27 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %28 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %33 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @zlog(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %36)
  store i32 -1, i32* %3, align 4
  br label %40

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38, %10
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @chown(i8*, i32, i32) #1

declare dso_local i32 @zlog(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
