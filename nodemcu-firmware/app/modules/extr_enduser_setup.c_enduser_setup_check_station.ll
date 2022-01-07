; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_check_station.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_check_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64 }
%struct.ip_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"enduser_setup_check_station\00", align 1
@STATION_IF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"status=%d,chan=%d\00", align 1
@state = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Turning off Station due to different channel than AP\00", align 1
@SOFTAP_MODE = common dso_local global i32 0, align 4
@ipaddr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@manual = common dso_local global i32 0, align 4
@enduser_setup_stop_callback = common dso_local global i32 0, align 4
@SWTIMER_RESUME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @enduser_setup_check_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enduser_setup_check_station(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ip_info, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  store i8* %0, i8** %2, align 8
  %9 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @memset(%struct.ip_info* %3, i32 0, i32 4)
  %12 = load i32, i32* @STATION_IF, align 4
  %13 = call i32 @wifi_get_ip_info(i32 %12, %struct.ip_info* %3)
  store i8 0, i8* %5, align 1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %29, %1
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = bitcast %struct.ip_info* %3 to i8*
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* %5, align 1
  %26 = sext i8 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %5, align 1
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %14

32:                                               ; preds = %14
  %33 = call i32 (...) @wifi_get_channel()
  store i32 %33, i32* %6, align 4
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = call i32 (...) @wifi_station_get_connect_status()
  store i32 %38, i32* %7, align 4
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %44 = call i32 @ENDUSER_SETUP_DEBUG(i8* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %71

53:                                               ; preds = %50, %47, %37
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 (...) @wifi_station_disconnect()
  %67 = load i32, i32* @SOFTAP_MODE, align 4
  %68 = call i32 @wifi_set_opmode(i32 %67)
  %69 = call i32 (...) @enduser_setup_ap_start()
  br label %70

70:                                               ; preds = %61, %53
  br label %71

71:                                               ; preds = %70, %50
  br label %117

72:                                               ; preds = %32
  %73 = load i32, i32* @ipaddr, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %3, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @IP2STR(i32* %77)
  %79 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 5, i32* %83, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %72
  %92 = call i32 (...) @enduser_setup_connected_callback()
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 1, i32* %94, align 4
  br label %101

95:                                               ; preds = %72
  %96 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 (...) @wifi_station_disconnect()
  %98 = load i32, i32* @SOFTAP_MODE, align 4
  %99 = call i32 @wifi_set_opmode(i32 %98)
  %100 = call i32 (...) @enduser_setup_ap_start()
  br label %101

101:                                              ; preds = %95, %91
  %102 = call i32 (...) @enduser_setup_check_station_stop()
  %103 = load i32, i32* @manual, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %101
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  %108 = load i32, i32* @enduser_setup_stop_callback, align 4
  %109 = call i32 @os_timer_setfn(i32* %107, i32 %108, i32* null)
  %110 = load i32, i32* @enduser_setup_stop_callback, align 4
  %111 = load i32, i32* @SWTIMER_RESUME, align 4
  %112 = call i32 @SWTIMER_REG_CB(i32 %110, i32 %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = load i32, i32* @FALSE, align 4
  %116 = call i32 @os_timer_arm(i32* %114, i32 10000, i32 %115)
  br label %117

117:                                              ; preds = %71, %105, %101
  ret void
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i32 @memset(%struct.ip_info*, i32, i32) #1

declare dso_local i32 @wifi_get_ip_info(i32, %struct.ip_info*) #1

declare dso_local i32 @wifi_get_channel(...) #1

declare dso_local i32 @wifi_station_get_connect_status(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @wifi_station_disconnect(...) #1

declare dso_local i32 @wifi_set_opmode(i32) #1

declare dso_local i32 @enduser_setup_ap_start(...) #1

declare dso_local i32 @IP2STR(i32*) #1

declare dso_local i32 @enduser_setup_connected_callback(...) #1

declare dso_local i32 @enduser_setup_check_station_stop(...) #1

declare dso_local i32 @os_timer_setfn(i32*, i32, i32*) #1

declare dso_local i32 @SWTIMER_REG_CB(i32, i32) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
