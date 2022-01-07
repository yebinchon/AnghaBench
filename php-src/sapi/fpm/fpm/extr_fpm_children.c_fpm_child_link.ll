; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_link.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fpm_child_s = type { %struct.fpm_child_s*, %struct.fpm_child_s*, %struct.fpm_worker_pool_s* }
%struct.fpm_worker_pool_s = type { %struct.fpm_child_s*, i32 }

@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpm_child_s*)* @fpm_child_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_child_link(%struct.fpm_child_s* %0) #0 {
  %2 = alloca %struct.fpm_child_s*, align 8
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  store %struct.fpm_child_s* %0, %struct.fpm_child_s** %2, align 8
  %4 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %5 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %4, i32 0, i32 2
  %6 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  store %struct.fpm_worker_pool_s* %6, %struct.fpm_worker_pool_s** %3, align 8
  %7 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %8 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 4
  %13 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %14 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %13, i32 0, i32 0
  %15 = load %struct.fpm_child_s*, %struct.fpm_child_s** %14, align 8
  %16 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %17 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %16, i32 0, i32 1
  store %struct.fpm_child_s* %15, %struct.fpm_child_s** %17, align 8
  %18 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %19 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %18, i32 0, i32 1
  %20 = load %struct.fpm_child_s*, %struct.fpm_child_s** %19, align 8
  %21 = icmp ne %struct.fpm_child_s* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %24 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %25 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %24, i32 0, i32 1
  %26 = load %struct.fpm_child_s*, %struct.fpm_child_s** %25, align 8
  %27 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %26, i32 0, i32 0
  store %struct.fpm_child_s* %23, %struct.fpm_child_s** %27, align 8
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %30 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %29, i32 0, i32 0
  store %struct.fpm_child_s* null, %struct.fpm_child_s** %30, align 8
  %31 = load %struct.fpm_child_s*, %struct.fpm_child_s** %2, align 8
  %32 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %33 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %32, i32 0, i32 0
  store %struct.fpm_child_s* %31, %struct.fpm_child_s** %33, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
