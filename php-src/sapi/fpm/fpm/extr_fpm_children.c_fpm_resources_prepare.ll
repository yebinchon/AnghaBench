; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_resources_prepare.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_resources_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_child_s = type { i32, i32, i32, %struct.fpm_worker_pool_s* }
%struct.fpm_worker_pool_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[pool %s] unable to malloc new child\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpm_child_s* (%struct.fpm_worker_pool_s*)* @fpm_resources_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpm_child_s* @fpm_resources_prepare(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca %struct.fpm_child_s*, align 8
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  %4 = alloca %struct.fpm_child_s*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %3, align 8
  %5 = call %struct.fpm_child_s* (...) @fpm_child_alloc()
  store %struct.fpm_child_s* %5, %struct.fpm_child_s** %4, align 8
  %6 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  %7 = icmp ne %struct.fpm_child_s* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ZLOG_ERROR, align 4
  %10 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %11 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @zlog(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  store %struct.fpm_child_s* null, %struct.fpm_child_s** %2, align 8
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %18 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  %19 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %18, i32 0, i32 3
  store %struct.fpm_worker_pool_s* %17, %struct.fpm_worker_pool_s** %19, align 8
  %20 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  %21 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  %23 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  %25 = call i64 @fpm_stdio_prepare_pipes(%struct.fpm_child_s* %24)
  %26 = icmp sgt i64 0, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  %29 = call i32 @fpm_child_free(%struct.fpm_child_s* %28)
  store %struct.fpm_child_s* null, %struct.fpm_child_s** %2, align 8
  br label %45

30:                                               ; preds = %16
  %31 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %32 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  %35 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %34, i32 0, i32 2
  %36 = call i64 @fpm_scoreboard_proc_alloc(i32 %33, i32* %35)
  %37 = icmp sgt i64 0, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  %40 = call i32 @fpm_stdio_discard_pipes(%struct.fpm_child_s* %39)
  %41 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  %42 = call i32 @fpm_child_free(%struct.fpm_child_s* %41)
  store %struct.fpm_child_s* null, %struct.fpm_child_s** %2, align 8
  br label %45

43:                                               ; preds = %30
  %44 = load %struct.fpm_child_s*, %struct.fpm_child_s** %4, align 8
  store %struct.fpm_child_s* %44, %struct.fpm_child_s** %2, align 8
  br label %45

45:                                               ; preds = %43, %38, %27, %8
  %46 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  ret %struct.fpm_child_s* %46
}

declare dso_local %struct.fpm_child_s* @fpm_child_alloc(...) #1

declare dso_local i32 @zlog(i32, i8*, i32) #1

declare dso_local i64 @fpm_stdio_prepare_pipes(%struct.fpm_child_s*) #1

declare dso_local i32 @fpm_child_free(%struct.fpm_child_s*) #1

declare dso_local i64 @fpm_scoreboard_proc_alloc(i32, i32*) #1

declare dso_local i32 @fpm_stdio_discard_pipes(%struct.fpm_child_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
