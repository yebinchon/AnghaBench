; ModuleID = '/home/carl/AnghaBench/mongoose/examples/connected_device_4/extr_server.c_push_data_to_all_websocket_connections.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/connected_device_4/extr_server.c_push_data_to_all_websocket_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@MG_F_IS_WEBSOCKET = common dso_local global i32 0, align 4
@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_mgr*)* @push_data_to_all_websocket_connections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_data_to_all_websocket_connections(%struct.mg_mgr* %0) #0 {
  %2 = alloca %struct.mg_mgr*, align 8
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.mg_mgr* %0, %struct.mg_mgr** %2, align 8
  %5 = call i64 (...) @rand()
  %6 = sitofp i64 %5 to double
  %7 = load double, double* @RAND_MAX, align 8
  %8 = fdiv double %6, %7
  %9 = fmul double %8, 1.000000e+02
  %10 = fptosi double %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mg_mgr*, %struct.mg_mgr** %2, align 8
  %12 = call %struct.mg_connection* @mg_next(%struct.mg_mgr* %11, %struct.mg_connection* null)
  store %struct.mg_connection* %12, %struct.mg_connection** %3, align 8
  br label %13

13:                                               ; preds = %29, %1
  %14 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %15 = icmp ne %struct.mg_connection* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MG_F_IS_WEBSOCKET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %25 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mg_printf_websocket_frame(%struct.mg_connection* %24, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %16
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.mg_mgr*, %struct.mg_mgr** %2, align 8
  %31 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %32 = call %struct.mg_connection* @mg_next(%struct.mg_mgr* %30, %struct.mg_connection* %31)
  store %struct.mg_connection* %32, %struct.mg_connection** %3, align 8
  br label %13

33:                                               ; preds = %13
  ret void
}

declare dso_local i64 @rand(...) #1

declare dso_local %struct.mg_connection* @mg_next(%struct.mg_mgr*, %struct.mg_connection*) #1

declare dso_local i32 @mg_printf_websocket_frame(%struct.mg_connection*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
