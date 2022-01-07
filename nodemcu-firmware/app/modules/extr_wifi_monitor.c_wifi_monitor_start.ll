; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi_monitor.c_wifi_monitor_start.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi_monitor.c_wifi_monitor_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i64 0, align 8
@mon_offset = common dso_local global i32 0, align 4
@mon_value = common dso_local global i32 0, align 4
@mon_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Must supply offset and value\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@recv_cb = common dso_local global i32 0, align 4
@wifi_rx_cb = common dso_local global i32 0, align 4
@STATION_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Missing callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @wifi_monitor_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_monitor_start(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @lua_type(i32* %9, i32 %10)
  %12 = load i64, i64* @LUA_TNUMBER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @luaL_checkinteger(i32* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @lua_type(i32* %20, i32 %21)
  %23 = load i64, i64* @LUA_TNUMBER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %14
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @luaL_checkinteger(i32* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  store i32 255, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @lua_type(i32* %31, i32 %32)
  %34 = load i64, i64* @LUA_TNUMBER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @luaL_checkinteger(i32* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %25
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* @mon_offset, align 4
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @mon_value, align 4
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* @mon_mask, align 4
  br label %50

47:                                               ; preds = %14
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @luaL_error(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %2, align 4
  br label %89

50:                                               ; preds = %42
  br label %52

51:                                               ; preds = %1
  store i32 12, i32* @mon_offset, align 4
  store i32 0, i32* @mon_value, align 4
  store i32 12, i32* @mon_mask, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @lua_type(i32* %53, i32 %54)
  %56 = load i64, i64* @LUA_TFUNCTION, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @lua_type(i32* %59, i32 %60)
  %62 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58, %52
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @lua_pushvalue(i32* %65, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %70 = call i32 @luaL_ref(i32* %68, i32 %69)
  store i32 %70, i32* @recv_cb, align 4
  %71 = call i64 (...) @wifi_station_get_connect_status()
  store i64 %71, i64* %8, align 8
  %72 = call i32 @wifi_station_set_auto_connect(i32 0)
  %73 = call i32 @wifi_set_opmode_current(i32 1)
  %74 = call i32 @wifi_promiscuous_enable(i32 0)
  %75 = call i32 (...) @wifi_station_disconnect()
  %76 = load i32, i32* @wifi_rx_cb, align 4
  %77 = call i32 @wifi_set_promiscuous_rx_cb(i32 %76)
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @STATION_IDLE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %64
  %82 = call i32 (...) @start_actually_monitoring()
  br label %85

83:                                               ; preds = %64
  %84 = call i32 @eventmon_call_on_disconnected(i32 (...)* @start_actually_monitoring)
  br label %85

85:                                               ; preds = %83, %81
  store i32 0, i32* %2, align 4
  br label %89

86:                                               ; preds = %58
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @luaL_error(i32* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %85, %47
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i64 @wifi_station_get_connect_status(...) #1

declare dso_local i32 @wifi_station_set_auto_connect(i32) #1

declare dso_local i32 @wifi_set_opmode_current(i32) #1

declare dso_local i32 @wifi_promiscuous_enable(i32) #1

declare dso_local i32 @wifi_station_disconnect(...) #1

declare dso_local i32 @wifi_set_promiscuous_rx_cb(i32) #1

declare dso_local i32 @start_actually_monitoring(...) #1

declare dso_local i32 @eventmon_call_on_disconnected(i32 (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
