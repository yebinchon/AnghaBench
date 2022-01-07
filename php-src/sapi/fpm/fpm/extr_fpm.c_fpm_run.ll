; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm.c_fpm_run.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm.c_fpm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.fpm_worker_pool_s* }
%struct.TYPE_2__ = type { i32, i32 }

@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@FPM_PCTL_STATE_TERMINATING = common dso_local global i32 0, align 4
@FPM_PCTL_ACTION_SET = common dso_local global i32 0, align 4
@FPM_CLEANUP_CHILD = common dso_local global i32 0, align 4
@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_run(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %5, %struct.fpm_worker_pool_s** %3, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %8 = icmp ne %struct.fpm_worker_pool_s* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %11 = call i32 @fpm_children_create_initial(%struct.fpm_worker_pool_s* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %30

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* @FPM_PCTL_STATE_TERMINATING, align 4
  %20 = load i32, i32* @FPM_PCTL_ACTION_SET, align 4
  %21 = call i32 @fpm_pctl(i32 %19, i32 %20)
  %22 = call i32 @fpm_event_loop(i32 1)
  br label %23

23:                                               ; preds = %18, %15
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %26 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %25, i32 0, i32 0
  %27 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %26, align 8
  store %struct.fpm_worker_pool_s* %27, %struct.fpm_worker_pool_s** %3, align 8
  br label %6

28:                                               ; preds = %6
  %29 = call i32 @fpm_event_loop(i32 0)
  br label %30

30:                                               ; preds = %28, %14
  %31 = load i32, i32* @FPM_CLEANUP_CHILD, align 4
  %32 = call i32 @fpm_cleanups_run(i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 4
  %34 = load i32*, i32** %2, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 4
  ret i32 %35
}

declare dso_local i32 @fpm_children_create_initial(%struct.fpm_worker_pool_s*) #1

declare dso_local i32 @fpm_pctl(i32, i32) #1

declare dso_local i32 @fpm_event_loop(i32) #1

declare dso_local i32 @fpm_cleanups_run(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
