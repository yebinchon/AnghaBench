; ModuleID = '/home/carl/AnghaBench/mongoose/examples/connected_device_4/extr_server.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/connected_device_4/extr_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@s_http_port = common dso_local global i8* null, align 8
@ev_handler = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Cannot bind to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"web_root\00", align 1
@s_http_server_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Cannot find web_root directory, exiting\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Starting web server on port %s\0A\00", align 1
@main.last_time = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  %7 = load i8*, i8** @s_http_port, align 8
  %8 = load i32, i32* @ev_handler, align 4
  %9 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %2, i8* %7, i32 %8)
  store %struct.mg_connection* %9, %struct.mg_connection** %3, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %11 = icmp eq %struct.mg_connection* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** @s_http_port, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %0
  %18 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %19 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %18)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  %21 = call i64 @mg_stat(i8* %20, i32* %4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %17
  %28 = load i8*, i8** @s_http_port, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %40, %27
  %31 = call i64 @time(i32* null)
  store i64 %31, i64* %5, align 8
  %32 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 1000)
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @main.last_time, align 8
  %35 = sub nsw i64 %33, %34
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = call i32 @push_data_to_all_websocket_connections(%struct.mg_mgr* %2)
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* @main.last_time, align 8
  br label %40

40:                                               ; preds = %37, %30
  br label %30
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i64 @mg_stat(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @push_data_to_all_websocket_connections(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
