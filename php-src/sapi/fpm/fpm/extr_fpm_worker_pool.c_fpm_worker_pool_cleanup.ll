; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_worker_pool.c_fpm_worker_pool_cleanup.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_worker_pool.c_fpm_worker_pool_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32, i32, i32, %struct.fpm_worker_pool_s* }
%struct.TYPE_2__ = type { i64 }

@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@FPM_CLEANUP_CHILD = common dso_local global i32 0, align 4
@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @fpm_worker_pool_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_worker_pool_cleanup(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fpm_worker_pool_s*, align 8
  %6 = alloca %struct.fpm_worker_pool_s*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %7, %struct.fpm_worker_pool_s** %5, align 8
  br label %8

8:                                                ; preds = %39, %2
  %9 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %10 = icmp ne %struct.fpm_worker_pool_s* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %13 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %12, i32 0, i32 3
  %14 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %13, align 8
  store %struct.fpm_worker_pool_s* %14, %struct.fpm_worker_pool_s** %6, align 8
  %15 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %16 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @fpm_worker_pool_config_free(i32 %17)
  %19 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %20 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fpm_children_free(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @FPM_CLEANUP_CHILD, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %11
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 8
  %29 = call i64 (...) @getpid()
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %33 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fpm_scoreboard_free(i32 %34)
  br label %36

36:                                               ; preds = %31, %27, %11
  %37 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %38 = call i32 @fpm_worker_pool_free(%struct.fpm_worker_pool_s* %37)
  br label %39

39:                                               ; preds = %36
  %40 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  store %struct.fpm_worker_pool_s* %40, %struct.fpm_worker_pool_s** %5, align 8
  br label %8

41:                                               ; preds = %8
  store %struct.fpm_worker_pool_s* null, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  ret void
}

declare dso_local i32 @fpm_worker_pool_config_free(i32) #1

declare dso_local i32 @fpm_children_free(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @fpm_scoreboard_free(i32) #1

declare dso_local i32 @fpm_worker_pool_free(%struct.fpm_worker_pool_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
