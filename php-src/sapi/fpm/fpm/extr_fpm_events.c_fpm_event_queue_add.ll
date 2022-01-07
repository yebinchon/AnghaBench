; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_queue_add.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_queue_s = type { %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s*, %struct.fpm_event_s* }
%struct.fpm_event_s = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.fpm_event_s*)* }

@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unable to add the event to queue: malloc() failed\00", align 1
@fpm_event_queue_fd = common dso_local global %struct.fpm_event_queue_s* null, align 8
@module = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_event_queue_s**, %struct.fpm_event_s*)* @fpm_event_queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_event_queue_add(%struct.fpm_event_queue_s** %0, %struct.fpm_event_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpm_event_queue_s**, align 8
  %5 = alloca %struct.fpm_event_s*, align 8
  %6 = alloca %struct.fpm_event_queue_s*, align 8
  store %struct.fpm_event_queue_s** %0, %struct.fpm_event_queue_s*** %4, align 8
  store %struct.fpm_event_s* %1, %struct.fpm_event_s** %5, align 8
  %7 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %8 = icmp ne %struct.fpm_event_queue_s** %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  %11 = icmp ne %struct.fpm_event_s* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %65

13:                                               ; preds = %9
  %14 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %15 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %14, align 8
  %16 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  %17 = call i64 @fpm_event_queue_isset(%struct.fpm_event_queue_s* %15, %struct.fpm_event_s* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %65

20:                                               ; preds = %13
  %21 = call %struct.fpm_event_queue_s* @malloc(i32 24)
  store %struct.fpm_event_queue_s* %21, %struct.fpm_event_queue_s** %6, align 8
  %22 = icmp ne %struct.fpm_event_queue_s* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ZLOG_SYSERROR, align 4
  %25 = call i32 @zlog(i32 %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %65

26:                                               ; preds = %20
  %27 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %28 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %27, i32 0, i32 1
  store %struct.fpm_event_queue_s* null, %struct.fpm_event_queue_s** %28, align 8
  %29 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %30 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %29, i32 0, i32 0
  store %struct.fpm_event_queue_s* null, %struct.fpm_event_queue_s** %30, align 8
  %31 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  %32 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %33 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %32, i32 0, i32 2
  store %struct.fpm_event_s* %31, %struct.fpm_event_s** %33, align 8
  %34 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %35 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %34, align 8
  %36 = icmp ne %struct.fpm_event_queue_s* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %39 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %40 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %39, align 8
  %41 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %40, i32 0, i32 1
  store %struct.fpm_event_queue_s* %38, %struct.fpm_event_queue_s** %41, align 8
  %42 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %43 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %42, align 8
  %44 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %45 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %44, i32 0, i32 0
  store %struct.fpm_event_queue_s* %43, %struct.fpm_event_queue_s** %45, align 8
  br label %46

46:                                               ; preds = %37, %26
  %47 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %6, align 8
  %48 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  store %struct.fpm_event_queue_s* %47, %struct.fpm_event_queue_s** %48, align 8
  %49 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %4, align 8
  %50 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %49, align 8
  %51 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** @fpm_event_queue_fd, align 8
  %52 = icmp eq %struct.fpm_event_queue_s* %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @module, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.fpm_event_s*)*, i32 (%struct.fpm_event_s*)** %55, align 8
  %57 = icmp ne i32 (%struct.fpm_event_s*)* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @module, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.fpm_event_s*)*, i32 (%struct.fpm_event_s*)** %60, align 8
  %62 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  %63 = call i32 %61(%struct.fpm_event_s* %62)
  br label %64

64:                                               ; preds = %58, %53, %46
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %23, %19, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @fpm_event_queue_isset(%struct.fpm_event_queue_s*, %struct.fpm_event_s*) #1

declare dso_local %struct.fpm_event_queue_s* @malloc(i32) #1

declare dso_local i32 @zlog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
