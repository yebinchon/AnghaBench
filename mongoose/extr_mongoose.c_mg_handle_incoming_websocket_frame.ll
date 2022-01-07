; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_handle_incoming_websocket_frame.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_handle_incoming_websocket_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32 }
%struct.websocket_message = type { i32 }

@MG_EV_WEBSOCKET_CONTROL_FRAME = common dso_local global i32 0, align 4
@MG_EV_WEBSOCKET_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.websocket_message*)* @mg_handle_incoming_websocket_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_handle_incoming_websocket_frame(%struct.mg_connection* %0, %struct.websocket_message* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.websocket_message*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store %struct.websocket_message* %1, %struct.websocket_message** %4, align 8
  %5 = load %struct.websocket_message*, %struct.websocket_message** %4, align 8
  %6 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %12 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %13 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MG_EV_WEBSOCKET_CONTROL_FRAME, align 4
  %19 = load %struct.websocket_message*, %struct.websocket_message** %4, align 8
  %20 = call i32 @mg_call(%struct.mg_connection* %11, i32 %14, i32 %17, i32 %18, %struct.websocket_message* %19)
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %23 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %24 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %27 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MG_EV_WEBSOCKET_FRAME, align 4
  %30 = load %struct.websocket_message*, %struct.websocket_message** %4, align 8
  %31 = call i32 @mg_call(%struct.mg_connection* %22, i32 %25, i32 %28, i32 %29, %struct.websocket_message* %30)
  br label %32

32:                                               ; preds = %21, %10
  ret void
}

declare dso_local i32 @mg_call(%struct.mg_connection*, i32, i32, i32, %struct.websocket_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
