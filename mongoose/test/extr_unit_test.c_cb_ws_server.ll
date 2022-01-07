; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb_ws_server.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb_ws_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.websocket_message = type { i32, i64, i32 }

@MG_EV_WEBSOCKET_FRAME = common dso_local global i32 0, align 4
@MG_EV_WEBSOCKET_CONTROL_FRAME = common dso_local global i32 0, align 4
@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s%.2x:{%.*s}\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CONTROL:\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @cb_ws_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_ws_server(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.websocket_message*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.websocket_message*
  store %struct.websocket_message* %9, %struct.websocket_message** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MG_EV_WEBSOCKET_FRAME, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MG_EV_WEBSOCKET_CONTROL_FRAME, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13, %3
  %18 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %19 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MG_EV_WEBSOCKET_CONTROL_FRAME, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %26 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %29 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %33 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mg_printf_websocket_frame(%struct.mg_connection* %18, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %27, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @mg_printf_websocket_frame(%struct.mg_connection*, i32, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
