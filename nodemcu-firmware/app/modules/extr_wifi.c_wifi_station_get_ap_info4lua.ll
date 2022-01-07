; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_station_get_ap_info4lua.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_station_get_ap_info4lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.station_config = type { i8*, i8*, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"qty\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\0A\09# of APs stored in flash:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c" %-6s %-32s %-64s %-17s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"index:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ssid:\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"password:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"bssid:\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@MACSTR = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"bssid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @wifi_station_get_ap_info4lua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_station_get_ap_info4lua(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [5 x %struct.station_config], align 16
  %4 = alloca [9 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = getelementptr inbounds [5 x %struct.station_config], [5 x %struct.station_config]* %3, i64 0, i64 0
  %8 = call i32 @wifi_station_get_ap_info(%struct.station_config* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_newtable(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @lua_pushnumber(i32* %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_setfield(i32* %14, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, ...) @WIFI_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = call i32 (i8*, ...) @WIFI_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %95, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %19
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_newtable(i32* %24)
  %26 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i32 0, i32 9)
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x %struct.station_config], [5 x %struct.station_config]* %3, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.station_config, %struct.station_config* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 16
  %34 = call i32 @memcpy(i8* %28, i8* %33, i32 8)
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %37 = call i32 @lua_pushstring(i32* %35, i8* %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @lua_setfield(i32* %38, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %40 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 9)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [5 x %struct.station_config], [5 x %struct.station_config]* %3, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.station_config, %struct.station_config* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %23
  %50 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x %struct.station_config], [5 x %struct.station_config]* %3, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.station_config, %struct.station_config* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @memcpy(i8* %50, i8* %55, i32 8)
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %59 = call i32 @lua_pushstring(i32* %57, i8* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @lua_setfield(i32* %60, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %62

62:                                               ; preds = %49, %23
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %64 = call i32 @memset(i8* %63, i32 0, i32 9)
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x %struct.station_config], [5 x %struct.station_config]* %3, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.station_config, %struct.station_config* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %62
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %73 = load i8*, i8** @MACSTR, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x %struct.station_config], [5 x %struct.station_config]* %3, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.station_config, %struct.station_config* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 16
  %79 = call i8* @MAC2STR(i32 %78)
  %80 = call i32 (i8*, i8*, ...) @sprintf(i8* %72, i8* %73, i8* %79)
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %83 = call i32 @lua_pushstring(i32* %81, i8* %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @lua_setfield(i32* %84, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %71, %62
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @lua_pushnumber(i32* %87, i32 %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @lua_insert(i32* %91, i32 -2)
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @lua_settable(i32* %93, i32 -3)
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %19

98:                                               ; preds = %19
  ret i32 1
}

declare dso_local i32 @wifi_station_get_ap_info(%struct.station_config*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @WIFI_DBG(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @MAC2STR(i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
