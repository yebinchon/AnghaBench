; ModuleID = '/home/carl/AnghaBench/mongoose/examples/NXP_LPC4088/LPCXpresso/Mongoose_LPC4088_QSB_BM/example/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/NXP_LPC4088/LPCXpresso/Mongoose_LPC4088_QSB_BM/example/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mg_mgr = type { i32 }
%struct.mg_bind_opts = type { i8** }
%struct.mg_connection = type { i32 }

@STATIC_IP = common dso_local global i32 0, align 4
@STATIC_NM = common dso_local global i32 0, align 4
@STATIC_GW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid static IP configuration.\0D\0A\00", align 1
@lpc_enetif_init = common dso_local global i32 0, align 4
@ethernet_input = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Setting up HTTP server...\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to create listener: %s\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Server address: http://%s/\0D\0A\00", align 1
@DHCP_BOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netif, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mg_mgr, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mg_bind_opts, align 8
  %9 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %10 = call i32 (...) @SystemCoreClockUpdate()
  %11 = call i32 (...) @Board_Init()
  %12 = call i32 @SysTick_Enable(i32 1)
  %13 = call i32 (...) @lwip_init()
  %14 = call i32 @Board_LED_Set(i32 0, i32 0)
  %15 = call i32 @Board_LED_Set(i32 1, i32 0)
  %16 = call i32 @Board_LED_Set(i32 2, i32 0)
  %17 = call i32 @Board_LED_Set(i32 3, i32 0)
  %18 = load i32, i32* @STATIC_IP, align 4
  %19 = call i32 @ipaddr_aton(i32 %18, i32* %3)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %0
  %22 = load i32, i32* @STATIC_NM, align 4
  %23 = call i32 @ipaddr_aton(i32 %22, i32* %4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @STATIC_GW, align 4
  %27 = call i32 @ipaddr_aton(i32 %26, i32* %5)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %21, %0
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @Board_LED_Set(i32 3, i32 1)
  store i32 1, i32* %1, align 4
  br label %63

32:                                               ; preds = %25
  %33 = load i32, i32* @lpc_enetif_init, align 4
  %34 = load i32, i32* @ethernet_input, align 4
  %35 = call i32 @netif_add(%struct.netif* %2, i32* %3, i32* %4, i32* %5, i32* null, i32 %33, i32 %34)
  %36 = call i32 @netif_set_up(%struct.netif* %2)
  br label %37

37:                                               ; preds = %32
  %38 = call i32 @netif_set_default(%struct.netif* %2)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %41 = bitcast %struct.mg_bind_opts* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 8, i1 false)
  %42 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %8, i32 0, i32 0
  store i8** %7, i8*** %42, align 8
  %43 = load i32, i32* @ev_handler, align 4
  %44 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %8, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = call %struct.mg_connection* @mg_bind_opt(%struct.mg_mgr* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %43, i8** %45)
  store %struct.mg_connection* %46, %struct.mg_connection** %9, align 8
  %47 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  %48 = icmp eq %struct.mg_connection* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = call i32 @Board_LED_Set(i32 3, i32 1)
  store i32 1, i32* %1, align 4
  br label %63

53:                                               ; preds = %37
  %54 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  %55 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %54)
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %2, i32 0, i32 0
  %57 = call i8* @ipaddr_ntoa(i32* %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %53, %59
  %60 = call i32 @handle_eth(%struct.netif* %2)
  %61 = call i32 (...) @sys_check_timeouts()
  %62 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 0)
  br label %59

63:                                               ; preds = %49, %29
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @SystemCoreClockUpdate(...) #1

declare dso_local i32 @Board_Init(...) #1

declare dso_local i32 @SysTick_Enable(i32) #1

declare dso_local i32 @lwip_init(...) #1

declare dso_local i32 @Board_LED_Set(i32, i32) #1

declare dso_local i32 @ipaddr_aton(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @netif_add(%struct.netif*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @netif_set_up(%struct.netif*) #1

declare dso_local i32 @netif_set_default(%struct.netif*) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.mg_connection* @mg_bind_opt(%struct.mg_mgr*, i8*, i32, i8**) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i8* @ipaddr_ntoa(i32*) #1

declare dso_local i32 @handle_eth(%struct.netif*) #1

declare dso_local i32 @sys_check_timeouts(...) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
