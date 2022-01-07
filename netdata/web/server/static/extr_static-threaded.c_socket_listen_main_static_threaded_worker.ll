; ModuleID = '/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_socket_listen_main_static_threaded_worker.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_socket_listen_main_static_threaded_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_server_static_threaded_worker = type { i32, i32 }

@worker_private = common dso_local global %struct.web_server_static_threaded_worker* null, align 8
@socket_listen_main_static_threaded_worker_cleanup = common dso_local global i32 0, align 4
@api_sockets = common dso_local global i32 0, align 4
@web_server_add_callback = common dso_local global i32 0, align 4
@web_server_del_callback = common dso_local global i32 0, align 4
@web_server_rcv_callback = common dso_local global i32 0, align 4
@web_server_snd_callback = common dso_local global i32 0, align 4
@web_server_tmr_callback = common dso_local global i32 0, align 4
@web_allow_connections_from = common dso_local global i32 0, align 4
@web_allow_connections_dns = common dso_local global i32 0, align 4
@web_client_first_request_timeout = common dso_local global i32 0, align 4
@web_client_timeout = common dso_local global i32 0, align 4
@default_rrd_update_every = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @socket_listen_main_static_threaded_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = bitcast i8* %3 to %struct.web_server_static_threaded_worker*
  store %struct.web_server_static_threaded_worker* %4, %struct.web_server_static_threaded_worker** @worker_private, align 8
  %5 = load %struct.web_server_static_threaded_worker*, %struct.web_server_static_threaded_worker** @worker_private, align 8
  %6 = getelementptr inbounds %struct.web_server_static_threaded_worker, %struct.web_server_static_threaded_worker* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load i32, i32* @socket_listen_main_static_threaded_worker_cleanup, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @netdata_thread_cleanup_push(i32 %7, i8* %8)
  %10 = load i32, i32* @web_server_add_callback, align 4
  %11 = load i32, i32* @web_server_del_callback, align 4
  %12 = load i32, i32* @web_server_rcv_callback, align 4
  %13 = load i32, i32* @web_server_snd_callback, align 4
  %14 = load i32, i32* @web_server_tmr_callback, align 4
  %15 = load i32, i32* @web_allow_connections_from, align 4
  %16 = load i32, i32* @web_allow_connections_dns, align 4
  %17 = load i32, i32* @web_client_first_request_timeout, align 4
  %18 = load i32, i32* @web_client_timeout, align 4
  %19 = load i32, i32* @default_rrd_update_every, align 4
  %20 = mul nsw i32 %19, 1000
  %21 = load i8*, i8** %2, align 8
  %22 = load %struct.web_server_static_threaded_worker*, %struct.web_server_static_threaded_worker** @worker_private, align 8
  %23 = getelementptr inbounds %struct.web_server_static_threaded_worker, %struct.web_server_static_threaded_worker* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @poll_events(i32* @api_sockets, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32* null, i32 %17, i32 %18, i32 %20, i8* %21, i32 %24)
  %26 = call i32 @netdata_thread_cleanup_pop(i32 1)
  ret i8* null
}

declare dso_local i32 @netdata_thread_cleanup_push(i32, i8*) #1

declare dso_local i32 @poll_events(i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @netdata_thread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
