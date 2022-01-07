; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/smart/extr_smart.c_smart_end.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/smart/extr_smart.c_smart_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smart_timer = common dso_local global i32 0, align 4
@cur_channel = common dso_local global i32 0, align 4
@NULL_MODE = common dso_local global i64 0, align 8
@mode = common dso_local global i64 0, align 8
@STATION_MODE = common dso_local global i64 0, align 8
@sta_conf = common dso_local global i32* null, align 8
@alldone = common dso_local global i64 0, align 8
@STATIONAP_MODE = common dso_local global i64 0, align 8
@station_check_connect = common dso_local global i64 0, align 8
@SWTIMER_RESUME = common dso_local global i32 0, align 4
@STATION_CHECK_TIME = common dso_local global i32 0, align 4
@ADDR_MAP_NUM = common dso_local global i32 0, align 4
@am = common dso_local global i32** null, align 8
@matched = common dso_local global i32* null, align 8
@got_password = common dso_local global i32* null, align 8
@got_ssid = common dso_local global i32* null, align 8
@password_nibble = common dso_local global i32* null, align 8
@ssid_nibble = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smart_end() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @os_timer_disarm(i32* @smart_timer)
  %3 = call i32 (...) @smart_disable()
  %4 = load i32, i32* @cur_channel, align 4
  %5 = call i32 @wifi_set_channel(i32 %4)
  %6 = load i64, i64* @NULL_MODE, align 8
  %7 = load i64, i64* @mode, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i64, i64* @mode, align 8
  %11 = call i32 @wifi_set_opmode(i64 %10)
  br label %15

12:                                               ; preds = %0
  %13 = load i64, i64* @STATION_MODE, align 8
  %14 = call i32 @wifi_set_opmode(i64 %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = call i64 (...) @wifi_get_opmode()
  store i64 %16, i64* @mode, align 8
  %17 = load i32*, i32** @sta_conf, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i64, i64* @alldone, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i64, i64* @STATION_MODE, align 8
  %24 = load i64, i64* @mode, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @mode, align 8
  %28 = load i64, i64* @STATIONAP_MODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26, %22
  %31 = load i32*, i32** @sta_conf, align 8
  %32 = call i32 @wifi_station_set_config(i32* %31)
  %33 = call i32 @wifi_station_set_auto_connect(i32 1)
  %34 = call i32 (...) @wifi_station_disconnect()
  %35 = call i32 (...) @wifi_station_connect()
  %36 = call i32 @os_timer_disarm(i32* @smart_timer)
  %37 = load i64, i64* @station_check_connect, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @os_timer_setfn(i32* @smart_timer, i32* %38, i8* inttoptr (i64 1 to i8*))
  %40 = load i64, i64* @station_check_connect, align 8
  %41 = load i32, i32* @SWTIMER_RESUME, align 4
  %42 = call i32 @SWTIMER_REG_CB(i64 %40, i32 %41)
  %43 = load i32, i32* @STATION_CHECK_TIME, align 4
  %44 = call i32 @os_timer_arm(i32* @smart_timer, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %30, %26
  br label %46

46:                                               ; preds = %45, %19, %15
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @ADDR_MAP_NUM, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32**, i32*** @am, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load i32**, i32*** @am, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @free(i32* %63)
  %65 = load i32**, i32*** @am, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %58, %51
  store i32* null, i32** @matched, align 8
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load i32*, i32** @sta_conf, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32*, i32** @sta_conf, align 8
  %78 = call i32 @free(i32* %77)
  store i32* null, i32** @sta_conf, align 8
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32*, i32** @got_password, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** @got_password, align 8
  %84 = call i32 @free(i32* %83)
  store i32* null, i32** @got_password, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32*, i32** @got_ssid, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** @got_ssid, align 8
  %90 = call i32 @free(i32* %89)
  store i32* null, i32** @got_ssid, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32*, i32** @password_nibble, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** @password_nibble, align 8
  %96 = call i32 @free(i32* %95)
  store i32* null, i32** @password_nibble, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32*, i32** @ssid_nibble, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** @ssid_nibble, align 8
  %102 = call i32 @free(i32* %101)
  store i32* null, i32** @ssid_nibble, align 8
  br label %103

103:                                              ; preds = %100, %97
  ret void
}

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @smart_disable(...) #1

declare dso_local i32 @wifi_set_channel(i32) #1

declare dso_local i32 @wifi_set_opmode(i64) #1

declare dso_local i64 @wifi_get_opmode(...) #1

declare dso_local i32 @wifi_station_set_config(i32*) #1

declare dso_local i32 @wifi_station_set_auto_connect(i32) #1

declare dso_local i32 @wifi_station_disconnect(...) #1

declare dso_local i32 @wifi_station_connect(...) #1

declare dso_local i32 @os_timer_setfn(i32*, i32*, i8*) #1

declare dso_local i32 @SWTIMER_REG_CB(i64, i32) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
