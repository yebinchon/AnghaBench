; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_init.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_child_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.fpm_worker_pool_s = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@fpm_globals = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[pool %s] child failed to initialize\00", align 1
@FPM_EXIT_SOFTWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpm_worker_pool_s*)* @fpm_child_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_child_init(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca %struct.fpm_worker_pool_s*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %2, align 8
  %3 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %4 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_globals, i32 0, i32 1), align 4
  %8 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %9 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @dup(i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_globals, i32 0, i32 0), align 4
  %12 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %13 = call i64 @fpm_stdio_init_child(%struct.fpm_worker_pool_s* %12)
  %14 = icmp sgt i64 0, %13
  br i1 %14, label %38, label %15

15:                                               ; preds = %1
  %16 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %17 = call i64 @fpm_log_init_child(%struct.fpm_worker_pool_s* %16)
  %18 = icmp sgt i64 0, %17
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %21 = call i64 @fpm_status_init_child(%struct.fpm_worker_pool_s* %20)
  %22 = icmp sgt i64 0, %21
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %25 = call i64 @fpm_unix_init_child(%struct.fpm_worker_pool_s* %24)
  %26 = icmp sgt i64 0, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = call i64 (...) @fpm_signals_init_child()
  %29 = icmp sgt i64 0, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %32 = call i64 @fpm_env_init_child(%struct.fpm_worker_pool_s* %31)
  %33 = icmp sgt i64 0, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %36 = call i64 @fpm_php_init_child(%struct.fpm_worker_pool_s* %35)
  %37 = icmp sgt i64 0, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34, %30, %27, %23, %19, %15, %1
  %39 = load i32, i32* @ZLOG_ERROR, align 4
  %40 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %41 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @zlog(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @FPM_EXIT_SOFTWARE, align 4
  %47 = call i32 @exit(i32 %46) #3
  unreachable

48:                                               ; preds = %34
  ret void
}

declare dso_local i32 @dup(i32) #1

declare dso_local i64 @fpm_stdio_init_child(%struct.fpm_worker_pool_s*) #1

declare dso_local i64 @fpm_log_init_child(%struct.fpm_worker_pool_s*) #1

declare dso_local i64 @fpm_status_init_child(%struct.fpm_worker_pool_s*) #1

declare dso_local i64 @fpm_unix_init_child(%struct.fpm_worker_pool_s*) #1

declare dso_local i64 @fpm_signals_init_child(...) #1

declare dso_local i64 @fpm_env_init_child(%struct.fpm_worker_pool_s*) #1

declare dso_local i64 @fpm_php_init_child(%struct.fpm_worker_pool_s*) #1

declare dso_local i32 @zlog(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
