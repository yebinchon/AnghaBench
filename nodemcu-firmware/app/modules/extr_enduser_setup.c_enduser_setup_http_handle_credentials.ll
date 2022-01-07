; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_handle_credentials.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_handle_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.station_config = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"enduser_setup_http_handle_credentials\00", align 1
@state = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"wifi_ssid=\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wifi_password=\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Password or SSID string not found\00", align 1
@AUTH_OPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Unable to decode HTTP parameter to valid password or SSID\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"WiFi Credentials Stored\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"-----------------------\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"name: \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"pass: \00", align 1
@do_station_cfg_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i16)* @enduser_setup_http_handle_credentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enduser_setup_http_handle_credentials(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.station_config*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  %16 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @strstr(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %2
  %31 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %102

32:                                               ; preds = %27
  %33 = call i32 @LITLEN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %8, align 4
  %34 = call i32 @LITLEN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @enduser_setup_get_lenth_of_param_value(i8* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @enduser_setup_get_lenth_of_param_value(i8* %45)
  store i32 %46, i32* %13, align 4
  %47 = call i32 (...) @lua_getstate()
  %48 = call %struct.station_config* @luaM_malloc(i32 %47, i32 24)
  store %struct.station_config* %48, %struct.station_config** %14, align 8
  %49 = load %struct.station_config*, %struct.station_config** %14, align 8
  %50 = call i32 @memset(%struct.station_config* %49, i32 0, i32 24)
  %51 = load %struct.station_config*, %struct.station_config** %14, align 8
  %52 = getelementptr inbounds %struct.station_config, %struct.station_config* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 -127, i32* %53, align 8
  %54 = load i32, i32* @AUTH_OPEN, align 4
  %55 = load %struct.station_config*, %struct.station_config** %14, align 8
  %56 = getelementptr inbounds %struct.station_config, %struct.station_config* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.station_config*, %struct.station_config** %14, align 8
  %59 = getelementptr inbounds %struct.station_config, %struct.station_config* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @enduser_setup_http_urldecode(i8* %60, i8* %61, i32 %62, i32 8)
  store i32 %63, i32* %15, align 4
  %64 = load %struct.station_config*, %struct.station_config** %14, align 8
  %65 = getelementptr inbounds %struct.station_config, %struct.station_config* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @enduser_setup_http_urldecode(i8* %66, i8* %67, i32 %68, i32 8)
  %70 = load i32, i32* %15, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %32
  %75 = load %struct.station_config*, %struct.station_config** %14, align 8
  %76 = getelementptr inbounds %struct.station_config, %struct.station_config* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %32
  %81 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %102

82:                                               ; preds = %74
  %83 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %84 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %85 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %86 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %87 = load %struct.station_config*, %struct.station_config** %14, align 8
  %88 = getelementptr inbounds %struct.station_config, %struct.station_config* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @ENDUSER_SETUP_DEBUG(i8* %89)
  %91 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %92 = load %struct.station_config*, %struct.station_config** %14, align 8
  %93 = getelementptr inbounds %struct.station_config, %struct.station_config* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @ENDUSER_SETUP_DEBUG(i8* %94)
  %96 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %97 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @do_station_cfg_handle, align 4
  %99 = load %struct.station_config*, %struct.station_config** %14, align 8
  %100 = ptrtoint %struct.station_config* %99 to i32
  %101 = call i32 @task_post_medium(i32 %98, i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %82, %80, %30
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @LITLEN(i8*) #1

declare dso_local i32 @enduser_setup_get_lenth_of_param_value(i8*) #1

declare dso_local %struct.station_config* @luaM_malloc(i32, i32) #1

declare dso_local i32 @lua_getstate(...) #1

declare dso_local i32 @memset(%struct.station_config*, i32, i32) #1

declare dso_local i32 @enduser_setup_http_urldecode(i8*, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @task_post_medium(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
