; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_station_sleeptype.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_station_sleeptype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NONE_SLEEP_T = common dso_local global i32 0, align 4
@LIGHT_SLEEP_T = common dso_local global i32 0, align 4
@MODEM_SLEEP_T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"range:0-2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @wifi_station_sleeptype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_station_sleeptype(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @lua_isnumber(i32* %5, i32 1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_tointeger(i32* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NONE_SLEEP_T, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @LIGHT_SLEEP_T, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MODEM_SLEEP_T, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15, %8
  %24 = phi i1 [ true, %15 ], [ true, %8 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @luaL_argcheck(i32* %11, i32 %25, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @wifi_set_sleep_type(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_pushnil(i32* %31)
  store i32 1, i32* %2, align 4
  br label %39

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %1
  %35 = call i32 (...) @wifi_get_sleep_type()
  store i32 %35, i32* %4, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @lua_pushinteger(i32* %36, i32 %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @wifi_set_sleep_type(i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @wifi_get_sleep_type(...) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
