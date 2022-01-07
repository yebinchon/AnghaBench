; ModuleID = '/home/carl/AnghaBench/mongoose/examples/websocket_chat/extr_websocket_chat.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/websocket_chat/extr_websocket_chat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@SIGTERM = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@s_http_port = common dso_local global i8* null, align 8
@ev_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@s_http_server_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Started on port %s\0A\00", align 1
@s_signal_received = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @SIGTERM, align 4
  %5 = load i32, i32* @signal_handler, align 4
  %6 = call i32 @signal(i32 %4, i32 %5)
  %7 = load i32, i32* @SIGINT, align 4
  %8 = load i32, i32* @signal_handler, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = load i32, i32* @stdout, align 4
  %11 = load i32, i32* @_IOLBF, align 4
  %12 = call i32 @setvbuf(i32 %10, i32* null, i32 %11, i32 0)
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* @_IOLBF, align 4
  %15 = call i32 @setvbuf(i32 %13, i32* null, i32 %14, i32 0)
  %16 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  %17 = load i8*, i8** @s_http_port, align 8
  %18 = load i32, i32* @ev_handler, align 4
  %19 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %2, i8* %17, i32 %18)
  store %struct.mg_connection* %19, %struct.mg_connection** %3, align 8
  %20 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %21 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %20)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 1), align 8
  %22 = load i8*, i8** @s_http_port, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %27, %0
  %25 = load i64, i64* @s_signal_received, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 200)
  br label %24

29:                                               ; preds = %24
  %30 = call i32 @mg_mgr_free(%struct.mg_mgr* %2)
  ret i32 0
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
