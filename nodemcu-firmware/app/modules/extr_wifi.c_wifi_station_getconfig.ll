; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_station_getconfig.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_station_getconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.station_config = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bssid_set\00", align 1
@MACSTR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"bssid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @wifi_station_getconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_station_getconfig(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.station_config, align 8
  %7 = alloca [9 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @wifi_station_get_config_default(%struct.station_config* %6)
  br label %14

12:                                               ; preds = %2
  %13 = call i32 @wifi_station_get_config(%struct.station_config* %6)
  br label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @lua_pushnil(i32* %19)
  store i32 1, i32* %3, align 4
  br label %111

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @lua_isboolean(i32* %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @lua_toboolean(i32* %26, i32 1)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %79

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @lua_newtable(i32* %30)
  %32 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %33 = call i32 @memset(i8* %32, i32 0, i32 9)
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %35 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @memcpy(i8* %34, i64 %36, i32 8)
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %40 = call i32 @lua_pushstring(i32* %38, i8* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @lua_setfield(i32* %41, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @strlen(i64 %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %29
  %48 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %49 = call i32 @memset(i8* %48, i32 0, i32 9)
  %50 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %51 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @memcpy(i8* %50, i64 %52, i32 8)
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %56 = call i32 @lua_pushstring(i32* %54, i8* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @lua_setfield(i32* %57, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %47, %29
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lua_pushboolean(i32* %60, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @lua_setfield(i32* %64, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %66 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %67 = call i32 @memset(i8* %66, i32 0, i32 9)
  %68 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %69 = load i8*, i8** @MACSTR, align 8
  %70 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @MAC2STR(i32 %71)
  %73 = call i32 @sprintf(i8* %68, i8* %69, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %76 = call i32 @lua_pushstring(i32* %74, i8* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @lua_setfield(i32* %77, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %111

79:                                               ; preds = %25, %21
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %81 = call i32 @memset(i8* %80, i32 0, i32 9)
  %82 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %83 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @memcpy(i8* %82, i64 %84, i32 8)
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %88 = call i32 @lua_pushstring(i32* %86, i8* %87)
  %89 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %90 = call i32 @memset(i8* %89, i32 0, i32 9)
  %91 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %92 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @memcpy(i8* %91, i64 %93, i32 8)
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %97 = call i32 @lua_pushstring(i32* %95, i8* %96)
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @lua_pushinteger(i32* %98, i32 %100)
  %102 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %103 = load i8*, i8** @MACSTR, align 8
  %104 = getelementptr inbounds %struct.station_config, %struct.station_config* %6, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @MAC2STR(i32 %105)
  %107 = call i32 @sprintf(i8* %102, i8* %103, i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %110 = call i32 @lua_pushstring(i32* %108, i8* %109)
  store i32 4, i32* %3, align 4
  br label %111

111:                                              ; preds = %79, %59, %18
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @wifi_station_get_config_default(%struct.station_config*) #1

declare dso_local i32 @wifi_station_get_config(%struct.station_config*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @MAC2STR(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
