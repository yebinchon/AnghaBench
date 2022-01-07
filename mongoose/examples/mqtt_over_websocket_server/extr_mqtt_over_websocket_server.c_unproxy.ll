; ModuleID = '/home/carl/AnghaBench/mongoose/examples/mqtt_over_websocket_server/extr_mqtt_over_websocket_server.c_unproxy.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/mqtt_over_websocket_server/extr_mqtt_over_websocket_server.c_unproxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32*, i32 }

@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Closing connection %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*)* @unproxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unproxy(%struct.mg_connection* %0) #0 {
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %2, align 8
  %4 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %5 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.mg_connection*
  store %struct.mg_connection* %7, %struct.mg_connection** %3, align 8
  %8 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %9 = icmp ne %struct.mg_connection* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %12 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %13 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %17 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %19 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.mg_connection* %21)
  ret void
}

declare dso_local i32 @printf(i8*, %struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
