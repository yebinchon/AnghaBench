; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_accept_nudge.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_accept_nudge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_thread = type { i32, i32 }
%struct.lwan_connection = type { i32 }
%struct.timeout_queue = type { i32 }
%struct.coro_switcher = type { i32 }
%struct.epoll_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.lwan_connection* }

@CONN_EVENTS_READ = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.lwan_thread*, %struct.lwan_connection*, %struct.timeout_queue*, %struct.coro_switcher*, i32)* @accept_nudge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accept_nudge(i32 %0, %struct.lwan_thread* %1, %struct.lwan_connection* %2, %struct.timeout_queue* %3, %struct.coro_switcher* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.lwan_thread*, align 8
  %9 = alloca %struct.lwan_connection*, align 8
  %10 = alloca %struct.timeout_queue*, align 8
  %11 = alloca %struct.coro_switcher*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.lwan_connection*, align 8
  %16 = alloca %struct.epoll_event, align 8
  store i32 %0, i32* %7, align 4
  store %struct.lwan_thread* %1, %struct.lwan_thread** %8, align 8
  store %struct.lwan_connection* %2, %struct.lwan_connection** %9, align 8
  store %struct.timeout_queue* %3, %struct.timeout_queue** %10, align 8
  store %struct.coro_switcher* %4, %struct.coro_switcher** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @read(i32 %17, i32* %13, i32 4)
  br label %19

19:                                               ; preds = %49, %6
  %20 = load %struct.lwan_thread*, %struct.lwan_thread** %8, align 8
  %21 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %20, i32 0, i32 1
  %22 = call i64 @spsc_queue_pop(i32* %21, i32* %14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  %25 = load %struct.lwan_connection*, %struct.lwan_connection** %9, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.lwan_connection, %struct.lwan_connection* %25, i64 %27
  store %struct.lwan_connection* %28, %struct.lwan_connection** %15, align 8
  %29 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %16, i32 0, i32 0
  %30 = load i32, i32* @CONN_EVENTS_READ, align 4
  %31 = call i32 @conn_flags_to_epoll_events(i32 %30)
  store i32 %31, i32* %29, align 8
  %32 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %16, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.lwan_connection*, %struct.lwan_connection** %15, align 8
  store %struct.lwan_connection* %34, %struct.lwan_connection** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @epoll_ctl(i32 %35, i32 %36, i32 %37, %struct.epoll_event* %16)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @LIKELY(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %24
  %45 = load %struct.lwan_connection*, %struct.lwan_connection** %15, align 8
  %46 = load %struct.coro_switcher*, %struct.coro_switcher** %11, align 8
  %47 = load %struct.timeout_queue*, %struct.timeout_queue** %10, align 8
  %48 = call i32 @spawn_coro(%struct.lwan_connection* %45, %struct.coro_switcher* %46, %struct.timeout_queue* %47)
  br label %49

49:                                               ; preds = %44, %24
  br label %19

50:                                               ; preds = %19
  %51 = load %struct.lwan_thread*, %struct.lwan_thread** %8, align 8
  %52 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.timeout_queue*, %struct.timeout_queue** %10, align 8
  %55 = getelementptr inbounds %struct.timeout_queue, %struct.timeout_queue* %54, i32 0, i32 0
  %56 = call i32 @timeouts_add(i32 %53, i32* %55, i32 1000)
  ret void
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i64 @spsc_queue_pop(i32*, i32*) #1

declare dso_local i32 @conn_flags_to_epoll_events(i32) #1

declare dso_local i64 @LIKELY(i32) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @spawn_coro(%struct.lwan_connection*, %struct.coro_switcher*, %struct.timeout_queue*) #1

declare dso_local i32 @timeouts_add(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
