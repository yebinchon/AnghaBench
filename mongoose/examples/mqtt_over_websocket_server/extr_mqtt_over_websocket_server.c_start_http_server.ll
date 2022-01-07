; ModuleID = '/home/carl/AnghaBench/mongoose/examples/mqtt_over_websocket_server/extr_mqtt_over_websocket_server.c_start_http_server.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/mqtt_over_websocket_server/extr_mqtt_over_websocket_server.c_start_http_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@http_handler = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot start HTTP server on port [%s]\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"HTTP server started on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_mgr*, i8*)* @start_http_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_http_server(%struct.mg_mgr* %0, i8* %1) #0 {
  %3 = alloca %struct.mg_mgr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mg_connection*, align 8
  store %struct.mg_mgr* %0, %struct.mg_mgr** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @http_handler, align 4
  %9 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %6, i8* %7, i32 %8)
  store %struct.mg_connection* %9, %struct.mg_connection** %5, align 8
  %10 = icmp eq %struct.mg_connection* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable

17:                                               ; preds = %2
  %18 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %19 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  ret void
}

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
