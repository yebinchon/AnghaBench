; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_children_create_initial.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_children_create_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32, %struct.fpm_event_s*, i32, %struct.TYPE_2__* }
%struct.fpm_event_s = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@PM_STYLE_ONDEMAND = common dso_local global i64 0, align 8
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[pool %s] unable to malloc the ondemand socket event\00", align 1
@FPM_EV_READ = common dso_local global i32 0, align 4
@FPM_EV_EDGE = common dso_local global i32 0, align 4
@fpm_pctl_on_socket_accept = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_children_create_initial(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %3, align 8
  %4 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %5 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PM_STYLE_ONDEMAND, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %1
  %12 = call i64 @malloc(i32 4)
  %13 = inttoptr i64 %12 to %struct.fpm_event_s*
  %14 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %15 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %14, i32 0, i32 1
  store %struct.fpm_event_s* %13, %struct.fpm_event_s** %15, align 8
  %16 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %17 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %16, i32 0, i32 1
  %18 = load %struct.fpm_event_s*, %struct.fpm_event_s** %17, align 8
  %19 = icmp ne %struct.fpm_event_s* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @ZLOG_ERROR, align 4
  %22 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %23 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @zlog(i32 %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 1, i32* %2, align 4
  br label %54

28:                                               ; preds = %11
  %29 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %30 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %29, i32 0, i32 1
  %31 = load %struct.fpm_event_s*, %struct.fpm_event_s** %30, align 8
  %32 = call i32 @memset(%struct.fpm_event_s* %31, i32 0, i32 4)
  %33 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %34 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %33, i32 0, i32 1
  %35 = load %struct.fpm_event_s*, %struct.fpm_event_s** %34, align 8
  %36 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %37 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FPM_EV_READ, align 4
  %40 = load i32, i32* @FPM_EV_EDGE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @fpm_pctl_on_socket_accept, align 4
  %43 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %44 = call i32 @fpm_event_set(%struct.fpm_event_s* %35, i32 %38, i32 %41, i32 %42, %struct.fpm_worker_pool_s* %43)
  %45 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %46 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %48 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %47, i32 0, i32 1
  %49 = load %struct.fpm_event_s*, %struct.fpm_event_s** %48, align 8
  %50 = call i32 @fpm_event_add(%struct.fpm_event_s* %49, i32 0)
  store i32 1, i32* %2, align 4
  br label %54

51:                                               ; preds = %1
  %52 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %53 = call i32 @fpm_children_make(%struct.fpm_worker_pool_s* %52, i32 0, i32 0, i32 1)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %28, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @zlog(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.fpm_event_s*, i32, i32) #1

declare dso_local i32 @fpm_event_set(%struct.fpm_event_s*, i32, i32, i32, %struct.fpm_worker_pool_s*) #1

declare dso_local i32 @fpm_event_add(%struct.fpm_event_s*, i32) #1

declare dso_local i32 @fpm_children_make(%struct.fpm_worker_pool_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
