; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp32/extr_modnetwork.c_event_handler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp32/extr_modnetwork.c_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"wifi\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"STA_START\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CONNECTED\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"GOT_IP\00", align 1
@wifi_sta_connected = common dso_local global i32 0, align 4
@wifi_sta_disconn_reason = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\0Abeacon timeout\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\0Ano AP found\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0Aauthentication failed\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"STA_DISCONNECTED, reason:%d%s\00", align 1
@wifi_sta_connect_requested = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@WIFI_MODE_STA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"error attempting to reconnect: 0x%04x\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Got IPv6\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ethernet\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"LAN cable connected\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"LAN cable disconnected\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Got IP\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"event %d\00", align 1
@WIFI_IF_STA = common dso_local global i32 0, align 4
@mdns_initialised = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_handler(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %73 [
    i32 131, label %12
    i32 134, label %14
    i32 132, label %16
    i32 133, label %18
    i32 135, label %61
    i32 137, label %63
    i32 136, label %65
    i32 140, label %67
    i32 139, label %69
    i32 138, label %71
  ]

12:                                               ; preds = %2
  %13 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %78

14:                                               ; preds = %2
  %15 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %78

16:                                               ; preds = %2
  %17 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* @wifi_sta_connected, align 4
  store i32 0, i32* @wifi_sta_disconn_reason, align 4
  br label %78

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @wifi_sta_disconn_reason, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %31 [
    i32 129, label %28
    i32 128, label %29
    i32 130, label %30
  ]

28:                                               ; preds = %18
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %32

29:                                               ; preds = %18
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %32

30:                                               ; preds = %18
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %32

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %30, %29, %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %35, i8* %36)
  store i32 0, i32* @wifi_sta_connected, align 4
  %38 = load i32, i32* @wifi_sta_connect_requested, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %32
  %41 = call i32 @esp_wifi_get_mode(i32* %7)
  %42 = load i32, i32* @ESP_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @WIFI_MODE_STA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = call i32 (...) @esp_wifi_connect()
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ESP_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %59, %32
  br label %78

61:                                               ; preds = %2
  %62 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %78

63:                                               ; preds = %2
  %64 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %78

65:                                               ; preds = %2
  %66 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %78

67:                                               ; preds = %2
  %68 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  br label %78

69:                                               ; preds = %2
  %70 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  br label %78

71:                                               ; preds = %2
  %72 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %78

73:                                               ; preds = %2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, i8*, ...) @ESP_LOGI(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %71, %69, %67, %65, %63, %61, %60, %16, %14, %12
  %79 = load i32, i32* @ESP_OK, align 4
  ret i32 %79
}

declare dso_local i32 @ESP_LOGI(i8*, i8*, ...) #1

declare dso_local i32 @esp_wifi_get_mode(i32*) #1

declare dso_local i32 @esp_wifi_connect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
