; ModuleID = '/home/carl/AnghaBench/mongoose/examples/cookie_auth/extr_cookie_auth.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/cookie_auth/extr_cookie_auth.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@s_http_port = common dso_local global i8* null, align 8
@ev_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@s_http_server_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"/login.html\00", align 1
@login_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"/logout\00", align 1
@logout_handler = common dso_local global i32 0, align 4
@SESSION_CHECK_INTERVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Starting web server on port %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i64 (...) @mg_time()
  %5 = call i32 @srand(i64 %4)
  %6 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  %7 = load i8*, i8** @s_http_port, align 8
  %8 = load i32, i32* @ev_handler, align 4
  %9 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %2, i8* %7, i32 %8)
  store %struct.mg_connection* %9, %struct.mg_connection** %3, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %11 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %10)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  %12 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %13 = load i32, i32* @login_handler, align 4
  %14 = call i32 @mg_register_http_endpoint(%struct.mg_connection* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %16 = load i32, i32* @logout_handler, align 4
  %17 = call i32 @mg_register_http_endpoint(%struct.mg_connection* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %19 = call i64 (...) @mg_time()
  %20 = load i64, i64* @SESSION_CHECK_INTERVAL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @mg_set_timer(%struct.mg_connection* %18, i64 %21)
  %23 = load i8*, i8** @s_http_port, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %25, %0
  %26 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 1000)
  br label %25
}

declare dso_local i32 @srand(i64) #1

declare dso_local i64 @mg_time(...) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @mg_register_http_endpoint(%struct.mg_connection*, i8*, i32) #1

declare dso_local i32 @mg_set_timer(%struct.mg_connection*, i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
