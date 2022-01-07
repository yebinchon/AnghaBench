; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_gc.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"websocketclient_gc\0A\00", align 1
@METATABLE_WSCLIENT = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_GCSTOP = common dso_local global i32 0, align 4
@LUA_GCRESTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"freeing lua data\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"done freeing lua data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @websocketclient_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @websocketclient_gc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32 @NODE_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @METATABLE_WSCLIENT, align 4
  %8 = call i64 @luaL_checkudata(i32* %6, i32 1, i32 %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @realloc_headers(i32 %12, i32 0)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %4, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @luaL_unref(i32* %20, i32 %21, i64 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @luaL_unref(i32* %26, i32 %27, i64 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LUA_NOREF, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 4
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @lua_rawgeti(i32* %43, i32 %44, i64 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @lua_pushnumber(i32* %49, i32 -100)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_call(i32* %51, i32 1, i32 0)
  br label %53

53:                                               ; preds = %42, %37
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @luaL_unref(i32* %54, i32 %55, i64 %58)
  br label %60

60:                                               ; preds = %53, %1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LUA_NOREF, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @LUA_GCSTOP, align 4
  %69 = call i32 @lua_gc(i32* %67, i32 %68, i32 0)
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @luaL_unref(i32* %70, i32 %71, i64 %74)
  %76 = load i64, i64* @LUA_NOREF, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load i32*, i32** %2, align 8
  %80 = load i32, i32* @LUA_GCRESTART, align 4
  %81 = call i32 @lua_gc(i32* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %66, %60
  %83 = call i32 @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32*, i32** %2, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = call i32 @luaM_free(i32* %84, %struct.TYPE_5__* %85)
  %87 = call i32 @NODE_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i32) #1

declare dso_local i32 @realloc_headers(i32, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @luaM_free(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
