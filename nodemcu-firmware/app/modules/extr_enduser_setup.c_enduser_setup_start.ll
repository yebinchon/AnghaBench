; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_start.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"enduser_setup_start\00", align 1
@ipaddr = common dso_local global i8* null, align 8
@do_station_cfg_handle = common dso_local global i64 0, align 8
@do_station_cfg = common dso_local global i32 0, align 4
@manual = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"Performing AP Scan to identify likely AP's channel. Enabling Station if it wasn't already.\00", align 1
@STATION_MODE = common dso_local global i32 0, align 4
@on_initial_scan_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @enduser_setup_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enduser_setup_start(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** @ipaddr, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %5, align 1
  %6 = load i64, i64* @do_station_cfg_handle, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @do_station_cfg, align 4
  %10 = call i64 @task_get_id(i32 %9)
  store i64 %10, i64* @do_station_cfg_handle, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @enduser_setup_init(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %38

16:                                               ; preds = %11
  %17 = load i32, i32* @manual, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @STATION_MODE, align 4
  %22 = call i32 (...) @wifi_get_opmode()
  %23 = or i32 %21, %22
  %24 = call i32 @wifi_set_opmode(i32 %23)
  %25 = load i32, i32* @on_initial_scan_done, align 4
  %26 = call i32 @wifi_station_scan(i32* null, i32 %25)
  br label %29

27:                                               ; preds = %16
  %28 = call i32 (...) @enduser_setup_check_station_start()
  br label %29

29:                                               ; preds = %27, %19
  %30 = call i64 (...) @enduser_setup_dns_start()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %38

33:                                               ; preds = %29
  %34 = call i64 (...) @enduser_setup_http_start()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %38

37:                                               ; preds = %33
  br label %41

38:                                               ; preds = %36, %32, %15
  %39 = call i32 (...) @lua_getstate()
  %40 = call i32 @enduser_setup_stop(i32 %39)
  br label %41

41:                                               ; preds = %38, %37
  ret i32 0
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i64 @task_get_id(i32) #1

declare dso_local i64 @enduser_setup_init(i32*) #1

declare dso_local i32 @wifi_set_opmode(i32) #1

declare dso_local i32 @wifi_get_opmode(...) #1

declare dso_local i32 @wifi_station_scan(i32*, i32) #1

declare dso_local i32 @enduser_setup_check_station_start(...) #1

declare dso_local i64 @enduser_setup_dns_start(...) #1

declare dso_local i64 @enduser_setup_http_start(...) #1

declare dso_local i32 @enduser_setup_stop(i32) #1

declare dso_local i32 @lua_getstate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
