; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio.c_seroutasync_done.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio.c_seroutasync_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32 }

@serout = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@uint32 = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @seroutasync_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seroutasync_done(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32* (...) @lua_getstate()
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serout, i32 0, i32 1), align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serout, i32 0, i32 1), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serout, i32 0, i32 2), align 8
  %11 = load i32, i32* @uint32, align 4
  %12 = call i32 @luaM_freearray(i32* %8, i32* %9, i32 %10, i32 %11)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serout, i32 0, i32 1), align 8
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serout, i32 0, i32 0), align 8
  %15 = load i64, i64* @LUA_NOREF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serout, i32 0, i32 0), align 8
  %21 = call i32 @lua_rawgeti(i32* %18, i32 %19, i64 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serout, i32 0, i32 0), align 8
  %25 = call i32 @luaL_unref(i32* %22, i32 %23, i64 %24)
  %26 = load i64, i64* @LUA_NOREF, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serout, i32 0, i32 0), align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @lua_pcall(i32* %27, i32 0, i32 0, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_tostring(i32* %32, i32 -1)
  %34 = call i32 @luaL_error(i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %17
  br label %36

36:                                               ; preds = %35, %13
  ret void
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @luaM_freearray(i32*, i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
