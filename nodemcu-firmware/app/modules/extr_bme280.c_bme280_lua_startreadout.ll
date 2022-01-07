; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_startreadout.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_startreadout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BME280_SAMPLING_DELAY = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@lua_connected_readout_ref = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@BME280_REGISTER_CONTROL_HUM = common dso_local global i32 0, align 4
@bme280_ossh = common dso_local global i32 0, align 4
@BME280_REGISTER_CONTROL = common dso_local global i32 0, align 4
@bme280_mode = common dso_local global i32 0, align 4
@BME280_FORCED_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"control old: %x, control: %x, delay: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"timer armed\0A\00", align 1
@bme280_timer = common dso_local global i32 0, align 4
@bme280_readoutdone = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bme280_lua_startreadout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_lua_startreadout(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @lua_isnumber(i32* %4, i32 1)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @luaL_checkinteger(i32* %8, i32 1)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load i64, i64* @BME280_SAMPLING_DELAY, align 8
  store i64 %13, i64* %3, align 8
  br label %14

14:                                               ; preds = %12, %7
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_isnoneornil(i32* %16, i32 2)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @lua_pushvalue(i32* %20, i32 2)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %24 = call i64 @luaL_ref(i32* %22, i32 %23)
  store i64 %24, i64* @lua_connected_readout_ref, align 8
  br label %27

25:                                               ; preds = %15
  %26 = load i64, i64* @LUA_NOREF, align 8
  store i64 %26, i64* @lua_connected_readout_ref, align 8
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* @BME280_REGISTER_CONTROL_HUM, align 4
  %29 = load i32, i32* @bme280_ossh, align 4
  %30 = call i32 @w8u(i32 %28, i32 %29)
  %31 = load i32, i32* @BME280_REGISTER_CONTROL, align 4
  %32 = load i32, i32* @bme280_mode, align 4
  %33 = and i32 %32, 252
  %34 = load i32, i32* @BME280_FORCED_MODE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @w8u(i32 %31, i32 %35)
  %37 = load i32, i32* @bme280_mode, align 4
  %38 = load i32, i32* @bme280_mode, align 4
  %39 = and i32 %38, 252
  %40 = load i32, i32* @BME280_FORCED_MODE, align 4
  %41 = or i32 %39, %40
  %42 = load i64, i64* %3, align 8
  %43 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41, i64 %42)
  %44 = load i64, i64* @lua_connected_readout_ref, align 8
  %45 = load i64, i64* @LUA_NOREF, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %27
  %48 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @os_timer_disarm(i32* @bme280_timer)
  %50 = load i64, i64* @bme280_readoutdone, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @os_timer_setfn(i32* @bme280_timer, i32* %51, i32* %52)
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @os_timer_arm(i32* @bme280_timer, i64 %54, i32 0)
  br label %56

56:                                               ; preds = %47, %27
  ret i32 0
}

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @w8u(i32, i32) #1

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_setfn(i32*, i32*, i32*) #1

declare dso_local i32 @os_timer_arm(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
