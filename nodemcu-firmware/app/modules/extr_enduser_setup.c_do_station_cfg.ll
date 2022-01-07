; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_do_station_cfg.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_do_station_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.station_config = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"do_station_cfg\00", align 1
@state = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @do_station_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_station_cfg(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.station_config*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to %struct.station_config*
  store %struct.station_config* %10, %struct.station_config** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (...) @wifi_station_disconnect()
  %13 = load %struct.station_config*, %struct.station_config** %5, align 8
  %14 = call i32 @wifi_station_set_config(%struct.station_config* %13)
  %15 = call i32 (...) @wifi_station_connect()
  %16 = call i32 (...) @lua_getstate()
  %17 = load %struct.station_config*, %struct.station_config** %5, align 8
  %18 = call i32 @luaM_free(i32 %16, %struct.station_config* %17)
  ret void
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i32 @wifi_station_disconnect(...) #1

declare dso_local i32 @wifi_station_set_config(%struct.station_config*) #1

declare dso_local i32 @wifi_station_connect(...) #1

declare dso_local i32 @luaM_free(i32, %struct.station_config*) #1

declare dso_local i32 @lua_getstate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
