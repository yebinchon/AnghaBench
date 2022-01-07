; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb4_big.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb4_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64 }
%struct.websocket_message = type { i32, i32 }
%struct.big_payload_params = type { i32, i32 }

@MG_EV_WEBSOCKET_FRAME = common dso_local global i32 0, align 4
@WEBSOCKET_OP_CLOSE = common dso_local global i32 0, align 4
@MG_EV_WEBSOCKET_HANDSHAKE_DONE = common dso_local global i32 0, align 4
@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @cb4_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb4_big(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.websocket_message*, align 8
  %8 = alloca %struct.big_payload_params*, align 8
  %9 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.websocket_message*
  store %struct.websocket_message* %11, %struct.websocket_message** %7, align 8
  %12 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %13 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.big_payload_params*
  store %struct.big_payload_params* %15, %struct.big_payload_params** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MG_EV_WEBSOCKET_FRAME, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.big_payload_params*, %struct.big_payload_params** %8, align 8
  %21 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %24 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %27 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(i32 %22, i32 %25, i32 %28)
  %30 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %31 = load i32, i32* @WEBSOCKET_OP_CLOSE, align 4
  %32 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %30, i32 %31, i32* null, i32 0)
  br label %58

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MG_EV_WEBSOCKET_HANDSHAKE_DONE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load %struct.big_payload_params*, %struct.big_payload_params** %8, align 8
  %39 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @malloc(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.big_payload_params*, %struct.big_payload_params** %8, align 8
  %45 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memset(i8* %43, i8 signext 120, i32 %46)
  %48 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %49 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %50 = load %struct.big_payload_params*, %struct.big_payload_params** %8, align 8
  %51 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @mg_printf_websocket_frame(%struct.mg_connection* %48, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @free(i8* %55)
  br label %57

57:                                               ; preds = %37, %33
  br label %58

58:                                               ; preds = %57, %19
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mg_send_websocket_frame(%struct.mg_connection*, i32, i32*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @mg_printf_websocket_frame(%struct.mg_connection*, i32, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
