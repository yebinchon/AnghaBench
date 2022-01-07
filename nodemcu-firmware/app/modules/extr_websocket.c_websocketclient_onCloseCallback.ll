; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_onCloseCallback.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_onCloseCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"websocketclient_onCloseCallback\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Client websocket is nil.\0A\00", align 1
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_GCSTOP = common dso_local global i32 0, align 4
@LUA_GCRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @websocketclient_onCloseCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocketclient_onCloseCallback(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @NODE_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = call i32* (...) @lua_getstate()
  store i32* %8, i32** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %63

19:                                               ; preds = %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LUA_NOREF, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %19
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @lua_rawgeti(i32* %30, i32 %31, i64 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @lua_rawgeti(i32* %36, i32 %37, i64 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @lua_pushnumber(i32* %42, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @lua_call(i32* %45, i32 2, i32 0)
  br label %47

47:                                               ; preds = %29, %19
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @LUA_GCSTOP, align 4
  %50 = call i32 @lua_gc(i32* %48, i32 %49, i32 0)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @luaL_unref(i32* %51, i32 %52, i64 %55)
  %57 = load i64, i64* @LUA_NOREF, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @LUA_GCRESTART, align 4
  %62 = call i32 @lua_gc(i32* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %47, %16
  ret void
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
