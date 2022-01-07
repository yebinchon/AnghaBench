; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_setmode.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATION_MODE = common dso_local global i32 0, align 4
@SOFTAP_MODE = common dso_local global i32 0, align 4
@STATIONAP_MODE = common dso_local global i32 0, align 4
@NULL_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Invalid mode\00", align 1
@LUA_TBOOLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @wifi_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_setmode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @luaL_checkinteger(i32* %5, i32 1)
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @STATION_MODE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SOFTAP_MODE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @STATIONAP_MODE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @NULL_MODE, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15, %11, %1
  %24 = phi i1 [ true, %15 ], [ true, %11 ], [ true, %1 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @luaL_argcheck(i32* %7, i32 %25, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_isnoneornil(i32* %27, i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %23
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_isboolean(i32* %31, i32 2)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @LUA_TBOOLEAN, align 4
  %38 = call i32 @lua_typename(i32* %36, i32 %37)
  %39 = call i32 @luaL_typerror(i32* %35, i32 2, i32 %38)
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @lua_toboolean(i32* %41, i32 2)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %23
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @wifi_set_opmode(i32 %47)
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @wifi_set_opmode_current(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = call i64 (...) @wifi_get_opmode()
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @lua_pushinteger(i32* %55, i32 %56)
  ret i32 1
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @luaL_typerror(i32*, i32, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @wifi_set_opmode(i32) #1

declare dso_local i32 @wifi_set_opmode_current(i32) #1

declare dso_local i64 @wifi_get_opmode(...) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
