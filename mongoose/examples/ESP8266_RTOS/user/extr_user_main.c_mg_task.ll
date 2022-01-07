; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_user_main.c_mg_task.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_user_main.c_mg_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"\0D\0A\0D\0ASDK version: %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Free RAM: %d\0D\0A\00", align 1
@MG_LISTEN_ADDR = common dso_local global i32 0, align 4
@ev_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Error setting up listener!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mg_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mg_mgr, align 4
  %4 = alloca %struct.mg_connection*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i8* (...) @system_get_sdk_version()
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = call i32 (...) @system_get_free_heap_size()
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call i32 (...) @setup_ap()
  %10 = call i32 @mg_mgr_init(%struct.mg_mgr* %3, i32* null)
  %11 = load i32, i32* @MG_LISTEN_ADDR, align 4
  %12 = load i32, i32* @ev_handler, align 4
  %13 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %3, i32 %11, i32 %12)
  store %struct.mg_connection* %13, %struct.mg_connection** %4, align 8
  %14 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %15 = icmp eq %struct.mg_connection* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  ret void

18:                                               ; preds = %1
  %19 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %20 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %19)
  br label %21

21:                                               ; preds = %18, %21
  %22 = call i32 @mg_mgr_poll(%struct.mg_mgr* %3, i32 1000)
  br label %21
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @system_get_sdk_version(...) #1

declare dso_local i32 @system_get_free_heap_size(...) #1

declare dso_local i32 @setup_ap(...) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i32, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
