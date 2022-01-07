; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_websocket_framev.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_websocket_framev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32 }
%struct.mg_str = type { i64, i32 }
%struct.ws_mask_ctx = type { i32 }

@WEBSOCKET_OP_CLOSE = common dso_local global i32 0, align 4
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_send_websocket_framev(%struct.mg_connection* %0, i32 %1, %struct.mg_str* %2, i32 %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mg_str*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ws_mask_ctx, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mg_str* %2, %struct.mg_str** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %27, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %17, i64 %19
  %21 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @mg_send_ws_header(%struct.mg_connection* %31, i32 %32, i32 %33, %struct.ws_mask_ctx* %9)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %54, %30
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %41 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %41, i64 %43
  %45 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %47, i64 %49
  %51 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mg_send(%struct.mg_connection* %40, i32 %46, i64 %52)
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %59 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %58, i32 0, i32 1
  %60 = call i32 @mg_ws_mask_frame(i32* %59, %struct.ws_mask_ctx* %9)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @WEBSOCKET_OP_CLOSE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %66 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %67 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %57
  ret void
}

declare dso_local i32 @mg_send_ws_header(%struct.mg_connection*, i32, i32, %struct.ws_mask_ctx*) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i32, i64) #1

declare dso_local i32 @mg_ws_mask_frame(i32*, %struct.ws_mask_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
