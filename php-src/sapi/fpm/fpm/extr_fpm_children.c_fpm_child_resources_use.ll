; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_resources_use.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_resources_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32, %struct.fpm_worker_pool_s* }
%struct.fpm_child_s = type { i32, %struct.fpm_worker_pool_s* }

@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpm_child_s*)* @fpm_child_resources_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_child_resources_use(%struct.fpm_child_s* %0) #0 {
  %2 = alloca %struct.fpm_child_s*, align 8
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  store %struct.fpm_child_s* %0, %struct.fpm_child_s** %2, align 8
  %4 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %4, %struct.fpm_worker_pool_s** %3, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %7 = icmp ne %struct.fpm_worker_pool_s* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %10 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %11 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %10, i32 0, i32 1
  %12 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %11, align 8
  %13 = icmp eq %struct.fpm_worker_pool_s* %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %20

15:                                               ; preds = %8
  %16 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %17 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @fpm_scoreboard_free(i32 %18)
  br label %20

20:                                               ; preds = %15, %14
  %21 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %22 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %21, i32 0, i32 1
  %23 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %22, align 8
  store %struct.fpm_worker_pool_s* %23, %struct.fpm_worker_pool_s** %3, align 8
  br label %5

24:                                               ; preds = %5
  %25 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %26 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %25, i32 0, i32 1
  %27 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %26, align 8
  %28 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %31 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (...) @getpid()
  %34 = call i32 @fpm_scoreboard_child_use(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %36 = call i32 @fpm_stdio_child_use_pipes(%struct.fpm_child_s* %35)
  %37 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %38 = call i32 @fpm_child_free(%struct.fpm_child_s* %37)
  ret void
}

declare dso_local i32 @fpm_scoreboard_free(i32) #1

declare dso_local i32 @fpm_scoreboard_child_use(i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fpm_stdio_child_use_pipes(%struct.fpm_child_s*) #1

declare dso_local i32 @fpm_child_free(%struct.fpm_child_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
