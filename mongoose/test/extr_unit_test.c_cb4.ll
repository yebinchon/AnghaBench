; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb4.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64 }
%struct.websocket_message = type { i64, i32 }
%struct.http_message = type { i32 }
%struct.mg_str = type { i8*, i32 }

@MG_EV_WEBSOCKET_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"client data '%.*s'\00", align 1
@WEBSOCKET_OP_CLOSE = common dso_local global i32 0, align 4
@MG_EV_WEBSOCKET_HANDSHAKE_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"code %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @cb4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb4(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.websocket_message*, align 8
  %9 = alloca %struct.http_message*, align 8
  %10 = alloca [2 x %struct.mg_str], align 16
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MG_EV_WEBSOCKET_FRAME, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.websocket_message*
  store %struct.websocket_message* %20, %struct.websocket_message** %8, align 8
  %21 = load %struct.websocket_message*, %struct.websocket_message** %8, align 8
  %22 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.websocket_message*, %struct.websocket_message** %8, align 8
  %26 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DBG(i8* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.websocket_message*, %struct.websocket_message** %8, align 8
  %33 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.websocket_message*, %struct.websocket_message** %8, align 8
  %36 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @memcpy(i8* %31, i32 %34, i64 %37)
  %39 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %40 = load i32, i32* @WEBSOCKET_OP_CLOSE, align 4
  %41 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %39, i32 %40, i32* null, i32 0)
  br label %80

42:                                               ; preds = %3
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MG_EV_WEBSOCKET_HANDSHAKE_DONE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = bitcast i8* %47 to %struct.http_message*
  store %struct.http_message* %48, %struct.http_message** %9, align 8
  %49 = load %struct.http_message*, %struct.http_message** %9, align 8
  %50 = getelementptr inbounds %struct.http_message, %struct.http_message* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @DBG(i8* %53)
  %55 = load %struct.http_message*, %struct.http_message** %9, align 8
  %56 = getelementptr inbounds %struct.http_message, %struct.http_message* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 101
  br i1 %58, label %59, label %72

59:                                               ; preds = %46
  %60 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %10, i64 0, i64 0
  %61 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %61, align 16
  %62 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %10, i64 0, i64 0
  %63 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %10, i64 0, i64 1
  %65 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %65, align 16
  %66 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %10, i64 0, i64 1
  %67 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %69 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %70 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %10, i64 0, i64 0
  %71 = call i32 @mg_send_websocket_framev(%struct.mg_connection* %68, i32 %69, %struct.mg_str* %70, i32 2)
  br label %78

72:                                               ; preds = %46
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.http_message*, %struct.http_message** %9, align 8
  %75 = getelementptr inbounds %struct.http_message, %struct.http_message* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snprintf(i8* %73, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %59
  br label %79

79:                                               ; preds = %78, %42
  br label %80

80:                                               ; preds = %79, %18
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @mg_send_websocket_frame(%struct.mg_connection*, i32, i32*, i32) #1

declare dso_local i32 @mg_send_websocket_framev(%struct.mg_connection*, i32, %struct.mg_str*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
