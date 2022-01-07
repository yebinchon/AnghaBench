; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF52/http/extr_bleconfig.c_bleconfig_init.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF52/http/extr_bleconfig.c_bleconfig_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@bleconfig_init.ipv6_medium_init_params = internal global %struct.TYPE_9__ zeroinitializer, align 4
@on_ipv6_medium_evt = common dso_local global i32 0, align 4
@on_ipv6_medium_error = common dso_local global i32 0, align 4
@IPV6_MEDIUM_ID_BLE = common dso_local global i32 0, align 4
@m_ipv6_medium = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@EUI_48_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"BLE init done\0A\00", align 1
@commissioning_id_mode_cb = common dso_local global i32 0, align 4
@commissioning_power_off_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bleconfig_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = call i32 (...) @app_trace_init()
  %4 = call i32 (...) @leds_init()
  %5 = call i32 (...) @timers_init()
  %6 = call i32 (...) @iot_timer_init()
  %7 = call i32 @memset(%struct.TYPE_9__* @bleconfig_init.ipv6_medium_init_params, i32 0, i32 20)
  %8 = load i32, i32* @on_ipv6_medium_evt, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bleconfig_init.ipv6_medium_init_params, i32 0, i32 4), align 4
  %9 = load i32, i32* @on_ipv6_medium_error, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bleconfig_init.ipv6_medium_init_params, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bleconfig_init.ipv6_medium_init_params, i32 0, i32 0), align 4
  %10 = load i32, i32* @IPV6_MEDIUM_ID_BLE, align 4
  %11 = call i32 @ipv6_medium_init(%struct.TYPE_9__* @bleconfig_init.ipv6_medium_init_params, i32 %10, %struct.TYPE_11__* @m_ipv6_medium)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @APP_ERROR_CHECK(i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @m_ipv6_medium, i32 0, i32 0), align 4
  %15 = call i32 @ipv6_medium_eui48_get(i32 %14, %struct.TYPE_10__* %2)
  store i32 %15, i32* %1, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @EUI_48_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @m_ipv6_medium, i32 0, i32 0), align 4
  %23 = call i32 @ipv6_medium_eui48_set(i32 %22, %struct.TYPE_10__* %2)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @APP_ERROR_CHECK(i32 %24)
  %26 = call i32 (...) @ip_stack_init()
  %27 = call i32 (...) @scheduler_init()
  %28 = call i32 (...) @connectable_mode_enter()
  %29 = call i32 @APPL_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @app_trace_init(...) #1

declare dso_local i32 @leds_init(...) #1

declare dso_local i32 @timers_init(...) #1

declare dso_local i32 @iot_timer_init(...) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ipv6_medium_init(%struct.TYPE_9__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @APP_ERROR_CHECK(i32) #1

declare dso_local i32 @ipv6_medium_eui48_get(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ipv6_medium_eui48_set(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ip_stack_init(...) #1

declare dso_local i32 @scheduler_init(...) #1

declare dso_local i32 @connectable_mode_enter(...) #1

declare dso_local i32 @APPL_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
