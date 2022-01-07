; ModuleID = '/home/carl/AnghaBench/mongoose/examples/netcat/extr_nc.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/netcat/extr_nc.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.websocket_message = type { i32, i32 }

@stdio_thread_func = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@s_received_signal = common dso_local global i32 0, align 4
@s_is_websocket = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.websocket_message*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %49 [
    i32 132, label %9
    i32 130, label %9
    i32 128, label %15
    i32 131, label %26
    i32 129, label %27
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* @stdio_thread_func, align 4
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mg_start_thread(i32 %10, i32 %13)
  br label %50

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.websocket_message*
  store %struct.websocket_message* %17, %struct.websocket_message** %7, align 8
  %18 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %19 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %22 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @fwrite(i32 %20, i32 1, i32 %23, i32 %24)
  br label %50

26:                                               ; preds = %3
  store i32 1, i32* @s_received_signal, align 4
  br label %50

27:                                               ; preds = %3
  %28 = load i32, i32* @s_is_websocket, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %32 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %36 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fwrite(i32 %34, i32 1, i32 %38, i32 %39)
  %41 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %42 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %41, i32 0, i32 0
  %43 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %44 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mbuf_remove(%struct.TYPE_2__* %42, i32 %46)
  br label %48

48:                                               ; preds = %30, %27
  br label %50

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %49, %48, %26, %15, %9
  ret void
}

declare dso_local i32 @mg_start_thread(i32, i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @mbuf_remove(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
