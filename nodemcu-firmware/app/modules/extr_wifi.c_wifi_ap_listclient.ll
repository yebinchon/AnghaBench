; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_ap_listclient.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_ap_listclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.station_info = type { i32, i32 }

@STATION_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Can't list clients in STATION mode\00", align 1
@MACSTR = common dso_local global i8* null, align 8
@IPSTR = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @wifi_ap_listclient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_ap_listclient(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.station_info*, align 8
  %6 = alloca %struct.station_info*, align 8
  store i32* %0, i32** %3, align 8
  %7 = call i64 (...) @wifi_get_opmode()
  %8 = load i64, i64* @STATION_MODE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_error(i32* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_newtable(i32* %14)
  %16 = call %struct.station_info* (...) @wifi_softap_get_station_info()
  store %struct.station_info* %16, %struct.station_info** %5, align 8
  br label %17

17:                                               ; preds = %20, %13
  %18 = load %struct.station_info*, %struct.station_info** %5, align 8
  %19 = icmp ne %struct.station_info* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %22 = load i8*, i8** @MACSTR, align 8
  %23 = load %struct.station_info*, %struct.station_info** %5, align 8
  %24 = getelementptr inbounds %struct.station_info, %struct.station_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MAC2STR(i32 %25)
  %27 = call i32 @sprintf(i8* %21, i8* %22, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %30 = load i32, i32* @IPSTR, align 4
  %31 = load %struct.station_info*, %struct.station_info** %5, align 8
  %32 = getelementptr inbounds %struct.station_info, %struct.station_info* %31, i32 0, i32 0
  %33 = call i32 @IP2STR(i32* %32)
  %34 = call i32 @wifi_add_sprintf_field(i32* %28, i8* %29, i32 %30, i32 %33)
  %35 = load %struct.station_info*, %struct.station_info** %5, align 8
  %36 = load i32, i32* @next, align 4
  %37 = call %struct.station_info* @STAILQ_NEXT(%struct.station_info* %35, i32 %36)
  store %struct.station_info* %37, %struct.station_info** %5, align 8
  br label %17

38:                                               ; preds = %17
  %39 = call i32 (...) @wifi_softap_free_station_info()
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @wifi_get_opmode(...) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local %struct.station_info* @wifi_softap_get_station_info(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @MAC2STR(i32) #1

declare dso_local i32 @wifi_add_sprintf_field(i32*, i8*, i32, i32) #1

declare dso_local i32 @IP2STR(i32*) #1

declare dso_local %struct.station_info* @STAILQ_NEXT(%struct.station_info*, i32) #1

declare dso_local i32 @wifi_softap_free_station_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
