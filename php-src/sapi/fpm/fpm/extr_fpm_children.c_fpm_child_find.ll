; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_find.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.fpm_child_s*, %struct.fpm_worker_pool_s* }
%struct.fpm_child_s = type { i64, %struct.fpm_child_s* }

@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpm_child_s* (i64)* @fpm_child_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpm_child_s* @fpm_child_find(i64 %0) #0 {
  %2 = alloca %struct.fpm_child_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fpm_worker_pool_s*, align 8
  %5 = alloca %struct.fpm_child_s*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.fpm_child_s* null, %struct.fpm_child_s** %5, align 8
  %6 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %6, %struct.fpm_worker_pool_s** %4, align 8
  br label %7

7:                                                ; preds = %34, %1
  %8 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %9 = icmp ne %struct.fpm_worker_pool_s* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %12 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %11, i32 0, i32 0
  %13 = load %struct.fpm_child_s*, %struct.fpm_child_s** %12, align 8
  store %struct.fpm_child_s* %13, %struct.fpm_child_s** %5, align 8
  br label %14

14:                                               ; preds = %25, %10
  %15 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %16 = icmp ne %struct.fpm_child_s* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %19 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %29

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %27 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %26, i32 0, i32 1
  %28 = load %struct.fpm_child_s*, %struct.fpm_child_s** %27, align 8
  store %struct.fpm_child_s* %28, %struct.fpm_child_s** %5, align 8
  br label %14

29:                                               ; preds = %23, %14
  %30 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %31 = icmp ne %struct.fpm_child_s* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %38

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %36 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %35, i32 0, i32 1
  %37 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %36, align 8
  store %struct.fpm_worker_pool_s* %37, %struct.fpm_worker_pool_s** %4, align 8
  br label %7

38:                                               ; preds = %32, %7
  %39 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %40 = icmp ne %struct.fpm_child_s* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store %struct.fpm_child_s* null, %struct.fpm_child_s** %2, align 8
  br label %44

42:                                               ; preds = %38
  %43 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  store %struct.fpm_child_s* %43, %struct.fpm_child_s** %2, align 8
  br label %44

44:                                               ; preds = %42, %41
  %45 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  ret %struct.fpm_child_s* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
