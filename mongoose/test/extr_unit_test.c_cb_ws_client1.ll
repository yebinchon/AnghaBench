; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb_ws_client1.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb_ws_client1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64 }
%struct.websocket_message = type { i32, i64, i32 }
%struct.mbuf = type { i32 }

@MG_EV_WEBSOCKET_FRAME = common dso_local global i32 0, align 4
@MG_EV_WEBSOCKET_CONTROL_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s%.2x:[%.*s]\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CONTROL:\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MG_EV_CLOSE = common dso_local global i32 0, align 4
@s_ws_client1_connected = common dso_local global i32 0, align 4
@MG_EV_WEBSOCKET_HANDSHAKE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @cb_ws_client1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_ws_client1(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.websocket_message*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.websocket_message*
  store %struct.websocket_message* %11, %struct.websocket_message** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MG_EV_WEBSOCKET_FRAME, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MG_EV_WEBSOCKET_CONTROL_FRAME, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15, %3
  store i8* null, i8** %8, align 8
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
  %35 = call i32 @mg_asprintf(i8** %8, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %27, i32 %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %37 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.mbuf*
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @mbuf_append(%struct.mbuf* %39, i8* %40, i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  br label %57

45:                                               ; preds = %15
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MG_EV_CLOSE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* @s_ws_client1_connected, align 4
  br label %56

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MG_EV_WEBSOCKET_HANDSHAKE_DONE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* @s_ws_client1_connected, align 4
  br label %55

55:                                               ; preds = %54, %50
  br label %56

56:                                               ; preds = %55, %49
  br label %57

57:                                               ; preds = %56, %19
  ret void
}

declare dso_local i32 @mg_asprintf(i8**, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @mbuf_append(%struct.mbuf*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
