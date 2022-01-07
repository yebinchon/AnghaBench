; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tcs34725.c_tcs34725EnableDone.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tcs34725.c_tcs34725EnableDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Enable finished\0A\00", align 1
@tcs34725_timer = common dso_local global i32 0, align 4
@TCS34725_ENABLE = common dso_local global i32 0, align 4
@TCS34725_ENABLE_PON = common dso_local global i32 0, align 4
@TCS34725_ENABLE_AEN = common dso_local global i32 0, align 4
@_tcs34725Initialised = common dso_local global i32 0, align 4
@TCS34725_INTEGRATIONTIME_2_4MS = common dso_local global i32 0, align 4
@TCS34725_GAIN_60X = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@cb_tcs_en = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcs34725EnableDone() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @dbg_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %3 = call i32* (...) @lua_getstate()
  store i32* %3, i32** %1, align 8
  %4 = call i32 @os_timer_disarm(i32* @tcs34725_timer)
  %5 = load i32, i32* @TCS34725_ENABLE, align 4
  %6 = load i32, i32* @TCS34725_ENABLE_PON, align 4
  %7 = load i32, i32* @TCS34725_ENABLE_AEN, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @tcs34725Write8(i32 %5, i32 %8)
  store i32 1, i32* @_tcs34725Initialised, align 4
  %10 = load i32, i32* @TCS34725_INTEGRATIONTIME_2_4MS, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @tcs34725SetIntegrationTime(i32 %10, i32* %11)
  %13 = load i32, i32* @TCS34725_GAIN_60X, align 4
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @tcs34725SetGain(i32 %13, i32* %14)
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %18 = load i32, i32* @cb_tcs_en, align 4
  %19 = call i32 @lua_rawgeti(i32* %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %22 = load i32, i32* @cb_tcs_en, align 4
  %23 = call i32 @luaL_unref(i32* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @LUA_NOREF, align 4
  store i32 %24, i32* @cb_tcs_en, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @lua_call(i32* %25, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @dbg_printf(i8*) #1

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @tcs34725Write8(i32, i32) #1

declare dso_local i32 @tcs34725SetIntegrationTime(i32, i32*) #1

declare dso_local i32 @tcs34725SetGain(i32, i32*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
