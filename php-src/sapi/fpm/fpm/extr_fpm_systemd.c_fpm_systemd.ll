; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_systemd.c_fpm_systemd.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_systemd.c_fpm_systemd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.TYPE_3__*, %struct.fpm_worker_pool_s* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { float, i64 }

@fpm_systemd.last = internal global i64 0, align 8
@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@.str = private unnamed_addr constant [96 x i8] c"READY=1\0A%sSTATUS=Processes active: %d, idle: %d, Requests: %lu, slow: %lu, Traffic: %.3greq/sec\00", align 1
@fpm_global_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"WATCHDOG=1\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to notify status to systemd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fpm_systemd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_systemd() #0 {
  %1 = alloca %struct.fpm_worker_pool_s*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %6, %struct.fpm_worker_pool_s** %1, align 8
  br label %7

7:                                                ; preds = %49, %0
  %8 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %9 = icmp ne %struct.fpm_worker_pool_s* %8, null
  br i1 %9, label %10, label %53

10:                                               ; preds = %7
  %11 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %12 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %10
  %16 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %17 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %26 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %35 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %2, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %2, align 8
  %41 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %42 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %15, %10
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %51 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %50, i32 0, i32 1
  %52 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %51, align 8
  store %struct.fpm_worker_pool_s* %52, %struct.fpm_worker_pool_s** %1, align 8
  br label %7

53:                                               ; preds = %7
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 1), align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %2, align 8
  %63 = uitofp i64 %62 to float
  %64 = load i64, i64* @fpm_systemd.last, align 8
  %65 = uitofp i64 %64 to float
  %66 = fsub float %63, %65
  %67 = fpext float %66 to double
  %68 = fmul double %67, 1.000000e+03
  %69 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %70 = fpext float %69 to double
  %71 = fdiv double %68, %70
  %72 = fptrunc double %71 to float
  %73 = call i64 @sd_notifyf(i32 0, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %58, i32 %59, i64 %60, i64 %61, float %72)
  %74 = icmp sgt i64 0, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %53
  %76 = load i32, i32* @ZLOG_NOTICE, align 4
  %77 = call i32 @zlog(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %53
  %79 = load i64, i64* %2, align 8
  store i64 %79, i64* @fpm_systemd.last, align 8
  ret void
}

declare dso_local i64 @sd_notifyf(i32, i8*, i8*, i32, i32, i64, i64, float) #1

declare dso_local i32 @zlog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
