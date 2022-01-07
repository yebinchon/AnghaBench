; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tcs34725.c_tcs34725Enable.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tcs34725.c_tcs34725Enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Enable begun\0A\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@cb_tcs_en = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Enable argument must be a function.\00", align 1
@TCS34725_ENABLE = common dso_local global i32 0, align 4
@TCS34725_ENABLE_PON = common dso_local global i32 0, align 4
@tcs34725_timer = common dso_local global i32 0, align 4
@tcs34725EnableDone = common dso_local global i64 0, align 8
@TCS34725_EN_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcs34725Enable(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = call i32 @dbg_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @lua_type(i32* %5, i32 1)
  %7 = load i64, i64* @LUA_TFUNCTION, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @lua_type(i32* %10, i32 1)
  %12 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %9, %1
  %15 = load i64, i64* @cb_tcs_en, align 8
  %16 = load i64, i64* @LUA_NOREF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %21 = load i64, i64* @cb_tcs_en, align 8
  %22 = call i32 @luaL_unref(i32* %19, i32 %20, i64 %21)
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_pushvalue(i32* %24, i32 1)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %28 = call i64 @luaL_ref(i32* %26, i32 %27)
  store i64 %28, i64* @cb_tcs_en, align 8
  br label %32

29:                                               ; preds = %9
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load i32, i32* @TCS34725_ENABLE, align 4
  %34 = load i32, i32* @TCS34725_ENABLE_PON, align 4
  %35 = call i32 @tcs34725Write8(i32 %33, i32 %34)
  %36 = call i32 @os_timer_disarm(i32* @tcs34725_timer)
  %37 = load i64, i64* @tcs34725EnableDone, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @os_timer_setfn(i32* @tcs34725_timer, i32* %38, i32* null)
  %40 = load i32, i32* @TCS34725_EN_DELAY, align 4
  %41 = call i32 @os_timer_arm(i32* @tcs34725_timer, i32 %40, i32 0)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %32, %29
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dbg_printf(i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @tcs34725Write8(i32, i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_setfn(i32*, i32*, i32*) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
