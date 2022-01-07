; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_php.c_fpm_php_init_child.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_php.c_fpm_php_init_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32* }

@limit_extensions = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_php_init_child(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %3, align 8
  %4 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %5 = call i64 @fpm_php_apply_defines(%struct.fpm_worker_pool_s* %4)
  %6 = icmp sgt i64 0, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %9 = call i64 @fpm_php_set_allowed_clients(%struct.fpm_worker_pool_s* %8)
  %10 = icmp sgt i64 0, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i32 -1, i32* %2, align 4
  br label %24

12:                                               ; preds = %7
  %13 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %14 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %19 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** @limit_extensions, align 8
  %21 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %22 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %17, %12
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @fpm_php_apply_defines(%struct.fpm_worker_pool_s*) #1

declare dso_local i64 @fpm_php_set_allowed_clients(%struct.fpm_worker_pool_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
