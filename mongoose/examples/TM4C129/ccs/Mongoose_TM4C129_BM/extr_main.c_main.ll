; ModuleID = '/home/carl/AnghaBench/mongoose/examples/TM4C129/ccs/Mongoose_TM4C129_BM/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/TM4C129/ccs/Mongoose_TM4C129_BM/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_bind_opts = type { i8** }
%struct.mg_connection = type { i32 }

@SYSCTL_MOSC_HIGHFREQ = common dso_local global i32 0, align 4
@SYSCTL_XTAL_25MHZ = common dso_local global i32 0, align 4
@SYSCTL_OSC_MAIN = common dso_local global i32 0, align 4
@SYSCTL_USE_PLL = common dso_local global i32 0, align 4
@SYSCTL_CFG_VCO_480 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Mongoose example\0A\0A\00", align 1
@CLP_D1_PORT = common dso_local global i32 0, align 4
@CLP_D1_PIN = common dso_local global i32 0, align 4
@CLP_D2_PORT = common dso_local global i32 0, align 4
@CLP_D2_PIN = common dso_local global i32 0, align 4
@CLP_D1 = common dso_local global i32 0, align 4
@CLP_D2 = common dso_local global i32 0, align 4
@IPADDR_USE_DHCP = common dso_local global i32 0, align 4
@g_mgr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create listener: %s\0D\0A\00", align 1
@SYSTICKHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mg_bind_opts, align 8
  %8 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @SYSCTL_MOSC_HIGHFREQ, align 4
  %10 = call i32 @SysCtlMOSCConfigSet(i32 %9)
  %11 = load i32, i32* @SYSCTL_XTAL_25MHZ, align 4
  %12 = load i32, i32* @SYSCTL_OSC_MAIN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SYSCTL_USE_PLL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SYSCTL_CFG_VCO_480, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @MAP_SysCtlClockFreqSet(i32 %17, i32 120000000)
  store i32 %18, i32* %2, align 4
  %19 = call i32 @PinoutSet(i32 1, i32 0)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @UARTStdioConfig(i32 0, i32 115200, i32 %20)
  %22 = call i32 (i8*, ...) @UARTprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @CLP_D1_PORT, align 4
  %24 = load i32, i32* @CLP_D1_PIN, align 4
  %25 = call i32 @MAP_GPIOPinTypeGPIOOutput(i32 %23, i32 %24)
  %26 = load i32, i32* @CLP_D2_PORT, align 4
  %27 = load i32, i32* @CLP_D2_PIN, align 4
  %28 = call i32 @MAP_GPIOPinTypeGPIOOutput(i32 %26, i32 %27)
  %29 = load i32, i32* @CLP_D1, align 4
  %30 = call i32 @LEDWrite(i32 %29, i32 0)
  %31 = load i32, i32* @CLP_D2, align 4
  %32 = call i32 @LEDWrite(i32 %31, i32 0)
  %33 = call i32 @MAP_FlashUserGet(i32* %3, i32* %4)
  %34 = load i32, i32* %3, align 4
  %35 = ashr i32 %34, 0
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* %3, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 0
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 %52, i32* %53, align 16
  %54 = load i32, i32* %4, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %2, align 4
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %60 = load i32, i32* @IPADDR_USE_DHCP, align 4
  %61 = call i32 @lwIPInit(i32 %58, i32* %59, i32 0, i32 0, i32 0, i32 %60)
  %62 = call i32 @mg_mgr_init(i32* @g_mgr, i32* null)
  %63 = bitcast %struct.mg_bind_opts* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %63, i8 0, i64 8, i1 false)
  %64 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %7, i32 0, i32 0
  store i8** %6, i8*** %64, align 8
  %65 = load i32, i32* @ev_handler, align 4
  %66 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %7, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = call %struct.mg_connection* @mg_bind_opt(i32* @g_mgr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8** %67)
  store %struct.mg_connection* %68, %struct.mg_connection** %8, align 8
  %69 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %70 = icmp eq %struct.mg_connection* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %0
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i8*, ...) @UARTprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  ret i32 1

74:                                               ; preds = %0
  %75 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %76 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %75)
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @SYSTICKHZ, align 4
  %79 = sdiv i32 %77, %78
  %80 = call i32 @MAP_SysTickPeriodSet(i32 %79)
  %81 = call i32 (...) @MAP_SysTickEnable()
  %82 = call i32 (...) @MAP_SysTickIntEnable()
  br label %83

83:                                               ; preds = %74, %83
  br label %83
}

declare dso_local i32 @SysCtlMOSCConfigSet(i32) #1

declare dso_local i32 @MAP_SysCtlClockFreqSet(i32, i32) #1

declare dso_local i32 @PinoutSet(i32, i32) #1

declare dso_local i32 @UARTStdioConfig(i32, i32, i32) #1

declare dso_local i32 @UARTprintf(i8*, ...) #1

declare dso_local i32 @MAP_GPIOPinTypeGPIOOutput(i32, i32) #1

declare dso_local i32 @LEDWrite(i32, i32) #1

declare dso_local i32 @MAP_FlashUserGet(i32*, i32*) #1

declare dso_local i32 @lwIPInit(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mg_mgr_init(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.mg_connection* @mg_bind_opt(i32*, i8*, i32, i8**) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @MAP_SysTickPeriodSet(i32) #1

declare dso_local i32 @MAP_SysTickEnable(...) #1

declare dso_local i32 @MAP_SysTickIntEnable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
