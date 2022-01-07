; ModuleID = '/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.netif = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mg_mgr = type { i32 }
%struct.mg_bind_opts = type { i8** }
%struct.mg_connection = type { i32 }

@MPU = common dso_local global %struct.TYPE_5__* null, align 8
@MPU_CESR_VLD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Waiting for link...\0D\0A\00", align 1
@STATIC_IP = common dso_local global i32 0, align 4
@STATIC_NM = common dso_local global i32 0, align 4
@STATIC_GW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid static IP configuration.\0D\0A\00", align 1
@ethernetif_init = common dso_local global i32 0, align 4
@ethernet_input = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Setting up HTTP server...\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to create listener: %s\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Server address: http://%s/\0D\0A\00", align 1
@DHCP_BOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netif, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mg_mgr, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mg_bind_opts, align 8
  %10 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MPU, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = call i32 (...) @BOARD_InitPins()
  %13 = call i32 (...) @BOARD_BootClockRUN()
  %14 = call i32 (...) @BOARD_InitDebugConsole()
  %15 = load i32, i32* @MPU_CESR_VLD_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = call i32 (...) @lwip_init()
  %22 = call i32 (...) @gpio_init()
  %23 = call i32 (...) @LED_RED_ON()
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @STATIC_IP, align 4
  %26 = call i32 @ipaddr_aton(i32 %25, i32* %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %0
  %29 = load i32, i32* @STATIC_NM, align 4
  %30 = call i32 @ipaddr_aton(i32 %29, i32* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @STATIC_GW, align 4
  %34 = call i32 @ipaddr_aton(i32 %33, i32* %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %28, %0
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %71

38:                                               ; preds = %32
  %39 = load i32, i32* @ethernetif_init, align 4
  %40 = load i32, i32* @ethernet_input, align 4
  %41 = call i32 @netif_add(%struct.netif* %2, i32* %4, i32* %5, i32* %6, i32* null, i32 %39, i32 %40)
  %42 = call i32 @netif_set_up(%struct.netif* %2)
  br label %43

43:                                               ; preds = %38
  %44 = call i32 @netif_set_default(%struct.netif* %2)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @mg_mgr_init(%struct.mg_mgr* %7, i32* null)
  %47 = bitcast %struct.mg_bind_opts* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 8, i1 false)
  %48 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %9, i32 0, i32 0
  store i8** %8, i8*** %48, align 8
  %49 = load i32, i32* @ev_handler, align 4
  %50 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %9, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = call %struct.mg_connection* @mg_bind_opt(%struct.mg_mgr* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %49, i8** %51)
  store %struct.mg_connection* %52, %struct.mg_connection** %10, align 8
  %53 = load %struct.mg_connection*, %struct.mg_connection** %10, align 8
  %54 = icmp eq %struct.mg_connection* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = call i32 (...) @LED_RED_ON()
  %59 = call i32 (...) @LED_GREEN_OFF()
  store i32 1, i32* %1, align 4
  br label %71

60:                                               ; preds = %43
  %61 = load %struct.mg_connection*, %struct.mg_connection** %10, align 8
  %62 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %61)
  %63 = getelementptr inbounds %struct.netif, %struct.netif* %2, i32 0, i32 0
  %64 = call i8* @ipaddr_ntoa(i32* %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  %66 = call i32 (...) @LED_RED_OFF()
  %67 = call i32 (...) @LED_GREEN_ON()
  br label %68

68:                                               ; preds = %60, %68
  %69 = call i32 (...) @sys_check_timeouts()
  %70 = call i32 @mg_mgr_poll(%struct.mg_mgr* %7, i32 0)
  br label %68

71:                                               ; preds = %55, %36
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @BOARD_InitPins(...) #1

declare dso_local i32 @BOARD_BootClockRUN(...) #1

declare dso_local i32 @BOARD_InitDebugConsole(...) #1

declare dso_local i32 @lwip_init(...) #1

declare dso_local i32 @gpio_init(...) #1

declare dso_local i32 @LED_RED_ON(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ipaddr_aton(i32, i32*) #1

declare dso_local i32 @netif_add(%struct.netif*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @netif_set_up(%struct.netif*) #1

declare dso_local i32 @netif_set_default(%struct.netif*) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.mg_connection* @mg_bind_opt(%struct.mg_mgr*, i8*, i32, i8**) #1

declare dso_local i32 @LED_GREEN_OFF(...) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i8* @ipaddr_ntoa(i32*) #1

declare dso_local i32 @LED_RED_OFF(...) #1

declare dso_local i32 @LED_GREEN_ON(...) #1

declare dso_local i32 @sys_check_timeouts(...) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
