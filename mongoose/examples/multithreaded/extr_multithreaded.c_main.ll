; ModuleID = '/home/carl/AnghaBench/mongoose/examples/multithreaded/extr_multithreaded.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/multithreaded/extr_multithreaded.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@sock = common dso_local global i32* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Opening socket pair\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@s_http_port = common dso_local global i8* null, align 8
@ev_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to create listener\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@s_http_server_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@s_num_worker_threads = common dso_local global i32 0, align 4
@worker_thread_proc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Started on port %s\0A\00", align 1
@s_received_signal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32*, i32** @sock, align 8
  %6 = load i32, i32* @SOCK_STREAM, align 4
  %7 = call i64 @mg_socketpair(i32* %5, i32 %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @exit(i32 1) #3
  unreachable

12:                                               ; preds = %0
  %13 = load i32, i32* @SIGTERM, align 4
  %14 = load i32, i32* @signal_handler, align 4
  %15 = call i32 @signal(i32 %13, i32 %14)
  %16 = load i32, i32* @SIGINT, align 4
  %17 = load i32, i32* @signal_handler, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  %19 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  %20 = load i8*, i8** @s_http_port, align 8
  %21 = load i32, i32* @ev_handler, align 4
  %22 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %2, i8* %20, i32 %21)
  store %struct.mg_connection* %22, %struct.mg_connection** %3, align 8
  %23 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %24 = icmp eq %struct.mg_connection* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %58

27:                                               ; preds = %12
  %28 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %29 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %28)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 1), align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %37, %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @s_num_worker_threads, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @worker_thread_proc, align 4
  %36 = call i32 @mg_start_thread(i32 %35, %struct.mg_mgr* %2)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %30

40:                                               ; preds = %30
  %41 = load i8*, i8** @s_http_port, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %46, %40
  %44 = load i64, i64* @s_received_signal, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 200)
  br label %43

48:                                               ; preds = %43
  %49 = call i32 @mg_mgr_free(%struct.mg_mgr* %2)
  %50 = load i32*, i32** @sock, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @closesocket(i32 %52)
  %54 = load i32*, i32** @sock, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @closesocket(i32 %56)
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %48, %25
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i64 @mg_socketpair(i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @mg_start_thread(i32, %struct.mg_mgr*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
