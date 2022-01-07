; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_setip.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_setip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_info = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"wrong arg type\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"netmask\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"gateway\00", align 1
@SOFTAP_IF = common dso_local global i64 0, align 8
@STATION_IF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @wifi_setip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_setip(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ip_info, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @wifi_get_ip_info(i64 %8, %struct.ip_info* %6)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lua_istable(i32* %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @luaL_error(i32* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @parse_key(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %6, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @parse_key(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %6, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @parse_key(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @SOFTAP_IF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %34
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i64, i64* @STATION_IF, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = call i32 (...) @wifi_station_dhcpc_stop()
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @wifi_set_ip_info(i64 %54, %struct.ip_info* %6)
  %56 = call i32 @lua_pushboolean(i32* %53, i32 %55)
  br label %64

57:                                               ; preds = %47
  %58 = call i32 (...) @wifi_softap_dhcps_stop()
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @wifi_set_ip_info(i64 %60, %struct.ip_info* %6)
  %62 = call i32 @lua_pushboolean(i32* %59, i32 %61)
  %63 = call i32 (...) @wifi_softap_dhcps_start()
  br label %64

64:                                               ; preds = %57, %51
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @wifi_get_ip_info(i64, %struct.ip_info*) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @parse_key(i32*, i8*) #1

declare dso_local i32 @wifi_station_dhcpc_stop(...) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @wifi_set_ip_info(i64, %struct.ip_info*) #1

declare dso_local i32 @wifi_softap_dhcps_stop(...) #1

declare dso_local i32 @wifi_softap_dhcps_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
