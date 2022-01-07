; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_onReceiveCallback.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_onReceiveCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"websocketclient_onReceiveCallback\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Client websocket is nil.\0A\00", align 1
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i8*, i32)* @websocketclient_onReceiveCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocketclient_onReceiveCallback(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 @NODE_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = call i32* (...) @lua_getstate()
  store i32* %12, i32** %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @luaL_error(i32* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %55

23:                                               ; preds = %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %10, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LUA_NOREF, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %23
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @lua_rawgeti(i32* %34, i32 %35, i64 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @lua_rawgeti(i32* %40, i32 %41, i64 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @lua_pushlstring(i32* %46, i8* %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @lua_pushnumber(i32* %50, i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @lua_call(i32* %53, i32 3, i32 0)
  br label %55

55:                                               ; preds = %20, %33, %23
  ret void
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
