; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_websocket_frame.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_websocket_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32 }
%struct.ws_mask_ctx = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%p %d %d\00", align 1
@WEBSOCKET_OP_CLOSE = common dso_local global i32 0, align 4
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_send_websocket_frame(%struct.mg_connection* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ws_mask_ctx, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i64, i64* %8, align 8
  %13 = trunc i64 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @DBG(i8* %15)
  %17 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @mg_send_ws_header(%struct.mg_connection* %17, i32 %18, i64 %19, %struct.ws_mask_ctx* %9)
  %21 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @mg_send(%struct.mg_connection* %21, i8* %22, i64 %23)
  %25 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %26 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %25, i32 0, i32 1
  %27 = call i32 @mg_ws_mask_frame(i32* %26, %struct.ws_mask_ctx* %9)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @WEBSOCKET_OP_CLOSE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %33 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %34 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %4
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @mg_send_ws_header(%struct.mg_connection*, i32, i64, %struct.ws_mask_ctx*) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i64) #1

declare dso_local i32 @mg_ws_mask_frame(i32*, %struct.ws_mask_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
