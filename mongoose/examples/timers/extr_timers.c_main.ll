; ModuleID = '/home/carl/AnghaBench/mongoose/examples/timers/extr_timers.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/timers/extr_timers.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@s_http_port = common dso_local global i8* null, align 8
@ev_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot start on port %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@s_http_server_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Starting on port %s, time: %.2lf\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  %5 = load i8*, i8** @s_http_port, align 8
  %6 = load i32, i32* @ev_handler, align 4
  %7 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %2, i8* %5, i32 %6)
  store %struct.mg_connection* %7, %struct.mg_connection** %3, align 8
  %8 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %9 = icmp eq %struct.mg_connection* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i8*, i8** @s_http_port, align 8
  %12 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  ret i32 %13

14:                                               ; preds = %0
  %15 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %16 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %15)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  %17 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %18 = call i64 (...) @mg_time()
  %19 = sitofp i64 %18 to double
  %20 = fadd double %19, 2.500000e+00
  %21 = fptosi double %20 to i64
  %22 = call i32 @mg_set_timer(%struct.mg_connection* %17, i64 %21)
  %23 = load i8*, i8** @s_http_port, align 8
  %24 = call i64 (...) @mg_time()
  %25 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %23, i64 %24)
  br label %26

26:                                               ; preds = %26, %14
  %27 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 1000)
  br label %26
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @mg_set_timer(%struct.mg_connection*, i64) #1

declare dso_local i64 @mg_time(...) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
