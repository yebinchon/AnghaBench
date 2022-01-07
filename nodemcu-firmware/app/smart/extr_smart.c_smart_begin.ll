; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/smart/extr_smart.c_smart_begin.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/smart/extr_smart.c_smart_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.station_config = type { i32 }

@alldone = common dso_local global i64 0, align 8
@ADDR_MAP_NUM = common dso_local global i32 0, align 4
@am = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [27 x i8] c"smart_begin map no memory\0A\00", align 1
@sta_conf = common dso_local global %struct.station_config* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"smart_begin sta_conf no memory\0A\00", align 1
@ssid_nibble = common dso_local global i32* null, align 8
@SSID_NIBBLE_MAX = common dso_local global i32 0, align 4
@password_nibble = common dso_local global i32* null, align 8
@PWD_NIBBLE_MAX = common dso_local global i32 0, align 4
@got_ssid = common dso_local global i32* null, align 8
@SSID_BIT_MAX = common dso_local global i32 0, align 4
@got_password = common dso_local global i32* null, align 8
@PWD_BIT_MAX = common dso_local global i32 0, align 4
@mode = common dso_local global i64 0, align 8
@STATION_MODE = common dso_local global i64 0, align 8
@STATIONAP_MODE = common dso_local global i64 0, align 8
@cur_channel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"set channel to %d\0A\00", align 1
@detect = common dso_local global i32 0, align 4
@smart_timer = common dso_local global i32 0, align 4
@smart_next_channel = common dso_local global i64 0, align 8
@SWTIMER_RESUME = common dso_local global i32 0, align 4
@TIME_OUT_PER_CHANNEL = common dso_local global i32 0, align 4
@succeed = common dso_local global i64 0, align 8
@smart_succeed_arg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smart_begin(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* @alldone, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %37, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @ADDR_MAP_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load i32**, i32*** @am, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %12
  %20 = call i64 @calloc(i32 1, i32 4)
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32**, i32*** @am, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  store i32* %21, i32** %25, align 8
  %26 = load i32**, i32*** @am, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = call i32 @NODE_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @smart_end()
  br label %143

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %12
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load %struct.station_config*, %struct.station_config** @sta_conf, align 8
  %42 = icmp ne %struct.station_config* %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = call i64 @calloc(i32 1, i32 4)
  %45 = inttoptr i64 %44 to %struct.station_config*
  store %struct.station_config* %45, %struct.station_config** @sta_conf, align 8
  %46 = load %struct.station_config*, %struct.station_config** @sta_conf, align 8
  %47 = icmp ne %struct.station_config* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = call i32 @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 (...) @smart_end()
  br label %143

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32*, i32** @ssid_nibble, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @SSID_NIBBLE_MAX, align 4
  %57 = call i64 @calloc(i32 1, i32 %56)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** @ssid_nibble, align 8
  %59 = load i32*, i32** @ssid_nibble, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = call i32 @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 (...) @smart_end()
  br label %143

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %52
  %66 = load i32*, i32** @password_nibble, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @PWD_NIBBLE_MAX, align 4
  %70 = call i64 @calloc(i32 1, i32 %69)
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** @password_nibble, align 8
  %72 = load i32*, i32** @password_nibble, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = call i32 @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 (...) @smart_end()
  br label %143

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %65
  %79 = load i32*, i32** @got_ssid, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @SSID_BIT_MAX, align 4
  %83 = call i64 @calloc(i32 1, i32 %82)
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** @got_ssid, align 8
  %85 = load i32*, i32** @got_ssid, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = call i32 @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %89 = call i32 (...) @smart_end()
  br label %143

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %78
  %92 = load i32*, i32** @got_password, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @PWD_BIT_MAX, align 4
  %96 = call i64 @calloc(i32 1, i32 %95)
  %97 = inttoptr i64 %96 to i32*
  store i32* %97, i32** @got_password, align 8
  %98 = load i32*, i32** @got_password, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = call i32 @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %102 = call i32 (...) @smart_end()
  br label %143

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %91
  %105 = load i32**, i32*** @am, align 8
  %106 = load i32, i32* @ADDR_MAP_NUM, align 4
  %107 = call i32 @reset_map(i32** %105, i32 %106)
  %108 = call i64 (...) @wifi_get_opmode()
  store i64 %108, i64* @mode, align 8
  %109 = load i64, i64* @STATION_MODE, align 8
  %110 = load i64, i64* @mode, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %104
  %113 = load i64, i64* @mode, align 8
  %114 = load i64, i64* @STATIONAP_MODE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112, %104
  %117 = call i32 @wifi_station_set_auto_connect(i32 0)
  %118 = call i32 (...) @wifi_station_disconnect()
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* @cur_channel, align 4
  %121 = load i32, i32* @cur_channel, align 4
  %122 = call i32 @NODE_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @cur_channel, align 4
  %124 = call i32 @wifi_set_channel(i32 %123)
  %125 = load i32, i32* @detect, align 4
  %126 = call i32 @wifi_set_promiscuous_rx_cb(i32 %125)
  %127 = call i32 @os_timer_disarm(i32* @smart_timer)
  %128 = load i64, i64* @smart_next_channel, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = call i32 @os_timer_setfn(i32* @smart_timer, i32* %129, i32* null)
  %131 = load i64, i64* @smart_next_channel, align 8
  %132 = load i32, i32* @SWTIMER_RESUME, align 4
  %133 = call i32 @SWTIMER_REG_CB(i64 %131, i32 %132)
  %134 = load i32, i32* @TIME_OUT_PER_CHANNEL, align 4
  %135 = call i32 @os_timer_arm(i32* @smart_timer, i32 %134, i32 0)
  %136 = load i64, i64* %5, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %119
  %139 = load i64, i64* %5, align 8
  store i64 %139, i64* @succeed, align 8
  %140 = load i8*, i8** %6, align 8
  store i8* %140, i8** @smart_succeed_arg, align 8
  br label %141

141:                                              ; preds = %138, %119
  %142 = call i32 (...) @smart_enable()
  br label %143

143:                                              ; preds = %141, %100, %87, %74, %61, %48, %32
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i32 @smart_end(...) #1

declare dso_local i32 @reset_map(i32**, i32) #1

declare dso_local i64 @wifi_get_opmode(...) #1

declare dso_local i32 @wifi_station_set_auto_connect(i32) #1

declare dso_local i32 @wifi_station_disconnect(...) #1

declare dso_local i32 @NODE_ERR(i8*, i32) #1

declare dso_local i32 @wifi_set_channel(i32) #1

declare dso_local i32 @wifi_set_promiscuous_rx_cb(i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_setfn(i32*, i32*, i32*) #1

declare dso_local i32 @SWTIMER_REG_CB(i64, i32) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

declare dso_local i32 @smart_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
