; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_main_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_main_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.netdata_static_thread = type { i32 }

@NETDATA_MAIN_THREAD_EXITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cleaning up...\00", align 1
@statsd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"STATSD: stopping data collection thread %d...\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"STATSD: data collection thread %d found stopped.\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"STATSD: closing sockets...\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"STATSD: cleanup completed.\00", align 1
@NETDATA_MAIN_THREAD_EXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @statsd_main_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statsd_main_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netdata_static_thread*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.netdata_static_thread*
  store %struct.netdata_static_thread* %6, %struct.netdata_static_thread** %3, align 8
  %7 = load i32, i32* @NETDATA_MAIN_THREAD_EXITING, align 4
  %8 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %9 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @statsd, i32 0, i32 2), align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @statsd, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @statsd, i32 0, i32 2), align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @statsd, i32 0, i32 2), align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @netdata_thread_cancel(i32 %35)
  br label %41

37:                                               ; preds = %18
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %14

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %45, %1
  %47 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @listen_sockets_close(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @statsd, i32 0, i32 1))
  %49 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @NETDATA_MAIN_THREAD_EXITED, align 4
  %51 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %52 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @netdata_thread_cancel(i32) #1

declare dso_local i32 @listen_sockets_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
