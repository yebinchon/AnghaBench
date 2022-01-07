; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF52/http/extr_bleconfig.c_iot_timer_init.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF52/http/extr_bleconfig.c_iot_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }

@iot_timer_init.list_of_clients = internal constant [1 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 128, i32 131 }], align 4
@iot_timer_init.iot_timer_clients = internal constant %struct.TYPE_4__ { i32 1, %struct.TYPE_5__* getelementptr inbounds ([1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* @iot_timer_init.list_of_clients, i32 0, i32 0) }, align 8
@m_iot_timer_tick_src_id = common dso_local global i32 0, align 4
@IOT_TIMER_RESOLUTION_IN_MS = common dso_local global i32 0, align 4
@APP_TIMER_PRESCALER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iot_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iot_timer_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @iot_timer_client_list_set(%struct.TYPE_4__* @iot_timer_init.iot_timer_clients)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @APP_ERROR_CHECK(i32 %3)
  %5 = load i32, i32* @m_iot_timer_tick_src_id, align 4
  %6 = load i32, i32* @IOT_TIMER_RESOLUTION_IN_MS, align 4
  %7 = load i32, i32* @APP_TIMER_PRESCALER, align 4
  %8 = call i32 @APP_TIMER_TICKS(i32 %6, i32 %7)
  %9 = call i32 @app_timer_start(i32 %5, i32 %8, i32* null)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @APP_ERROR_CHECK(i32 %10)
  ret void
}

declare dso_local i32 @iot_timer_client_list_set(%struct.TYPE_4__*) #1

declare dso_local i32 @APP_ERROR_CHECK(i32) #1

declare dso_local i32 @app_timer_start(i32, i32, i32*) #1

declare dso_local i32 @APP_TIMER_TICKS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
