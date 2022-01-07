; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_check_request_timeout.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_check_request_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.fpm_child_s*, %struct.TYPE_2__*, %struct.fpm_worker_pool_s* }
%struct.fpm_child_s = type { %struct.fpm_child_s* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.timeval = type { i32 }

@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*)* @fpm_pctl_check_request_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_pctl_check_request_timeout(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fpm_child_s*, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %8 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %8, %struct.fpm_worker_pool_s** %3, align 8
  br label %9

9:                                                ; preds = %53, %1
  %10 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %11 = icmp ne %struct.fpm_worker_pool_s* %10, null
  br i1 %11, label %12, label %57

12:                                               ; preds = %9
  %13 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %14 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %19 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %24 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30, %12
  %34 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %35 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %34, i32 0, i32 0
  %36 = load %struct.fpm_child_s*, %struct.fpm_child_s** %35, align 8
  store %struct.fpm_child_s* %36, %struct.fpm_child_s** %7, align 8
  br label %37

37:                                               ; preds = %47, %33
  %38 = load %struct.fpm_child_s*, %struct.fpm_child_s** %7, align 8
  %39 = icmp ne %struct.fpm_child_s* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.fpm_child_s*, %struct.fpm_child_s** %7, align 8
  %42 = load %struct.timeval*, %struct.timeval** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @fpm_request_check_timed_out(%struct.fpm_child_s* %41, %struct.timeval* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40
  %48 = load %struct.fpm_child_s*, %struct.fpm_child_s** %7, align 8
  %49 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %48, i32 0, i32 0
  %50 = load %struct.fpm_child_s*, %struct.fpm_child_s** %49, align 8
  store %struct.fpm_child_s* %50, %struct.fpm_child_s** %7, align 8
  br label %37

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %55 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %54, i32 0, i32 2
  %56 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %55, align 8
  store %struct.fpm_worker_pool_s* %56, %struct.fpm_worker_pool_s** %3, align 8
  br label %9

57:                                               ; preds = %9
  ret void
}

declare dso_local i32 @fpm_request_check_timed_out(%struct.fpm_child_s*, %struct.timeval*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
