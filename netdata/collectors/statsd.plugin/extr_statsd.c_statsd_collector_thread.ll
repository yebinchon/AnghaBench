; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_collector_thread.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_collector_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.collection_thread_status = type { i32, i32 }
%struct.statsd_udp = type { i32*, i32, %struct.TYPE_7__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"STATSD collector thread started with taskid %d\00", align 1
@statsd_collector_thread_cleanup = common dso_local global i32 0, align 4
@statsd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@statsd_add_callback = common dso_local global i32 0, align 4
@statsd_del_callback = common dso_local global i32 0, align 4
@statsd_rcv_callback = common dso_local global i32 0, align 4
@statsd_snd_callback = common dso_local global i32 0, align 4
@statsd_timer_callback = common dso_local global i32 0, align 4
@STATSD_SOCKET_DATA_TYPE_UDP = common dso_local global i32 0, align 4
@STATSD_UDP_BUFFER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @statsd_collector_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.collection_thread_status*, align 8
  %4 = alloca %struct.statsd_udp*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.collection_thread_status*
  store %struct.collection_thread_status* %6, %struct.collection_thread_status** %3, align 8
  %7 = load %struct.collection_thread_status*, %struct.collection_thread_status** %3, align 8
  %8 = getelementptr inbounds %struct.collection_thread_status, %struct.collection_thread_status* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = call i32 (...) @gettid()
  %10 = call i32 @info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i8* @callocz(i32 40, i32 1)
  %12 = bitcast i8* %11 to %struct.statsd_udp*
  store %struct.statsd_udp* %12, %struct.statsd_udp** %4, align 8
  %13 = load %struct.collection_thread_status*, %struct.collection_thread_status** %3, align 8
  %14 = getelementptr inbounds %struct.collection_thread_status, %struct.collection_thread_status* %13, i32 0, i32 0
  %15 = load %struct.statsd_udp*, %struct.statsd_udp** %4, align 8
  %16 = getelementptr inbounds %struct.statsd_udp, %struct.statsd_udp* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load i32, i32* @statsd_collector_thread_cleanup, align 4
  %18 = load %struct.statsd_udp*, %struct.statsd_udp** %4, align 8
  %19 = call i32 @netdata_thread_cleanup_push(i32 %17, %struct.statsd_udp* %18)
  %20 = load i32, i32* @statsd_add_callback, align 4
  %21 = load i32, i32* @statsd_del_callback, align 4
  %22 = load i32, i32* @statsd_rcv_callback, align 4
  %23 = load i32, i32* @statsd_snd_callback, align 4
  %24 = load i32, i32* @statsd_timer_callback, align 4
  %25 = load %struct.statsd_udp*, %struct.statsd_udp** %4, align 8
  %26 = bitcast %struct.statsd_udp* %25 to i8*
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @statsd, i32 0, i32 2), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @statsd, i32 0, i32 1), align 4
  %29 = mul nsw i32 %28, 1000
  %30 = load i8*, i8** %2, align 8
  %31 = load %struct.collection_thread_status*, %struct.collection_thread_status** %3, align 8
  %32 = getelementptr inbounds %struct.collection_thread_status, %struct.collection_thread_status* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @poll_events(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @statsd, i32 0, i32 3), i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32* null, i32 0, i8* %26, i32 0, i32 %27, i32 %29, i8* %30, i32 %33)
  %35 = call i32 @netdata_thread_cleanup_pop(i32 1)
  ret i8* null
}

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @gettid(...) #1

declare dso_local i8* @callocz(i32, i32) #1

declare dso_local i32 @netdata_thread_cleanup_push(i32, %struct.statsd_udp*) #1

declare dso_local i32 @poll_events(i32*, i32, i32, i32, i32, i32, i32*, i32, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @netdata_thread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
