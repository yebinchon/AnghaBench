; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_ads1115_lua_readoutdone.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_ads1115_lua_readoutdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ADS1115_POINTER_CONVERSION = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ads1115_lua_readoutdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1115_lua_readoutdone(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ADS1115_POINTER_CONVERSION, align 4
  %13 = call i32 @read_reg(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = call i32* (...) @lua_getstate()
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i32 @os_timer_disarm(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lua_rawgeti(i32* %18, i32 %19, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @luaL_unref(i32* %24, i32 %25, i32 %28)
  %30 = load i32, i32* @LUA_NOREF, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @read_common(%struct.TYPE_3__* %33, i32 %34, i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @lua_call(i32* %37, i32 4, i32 0)
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @read_reg(i32, i32) #1

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @read_common(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
