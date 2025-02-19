; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocket_createClient.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocket_createClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32*, i32*, i32*, i32*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"websocket_createClient\0A\00", align 1
@LUA_NOREF = common dso_local global i8* null, align 8
@websocketclient_onConnectionCallback = common dso_local global i32 0, align 4
@websocketclient_onReceiveCallback = common dso_local global i32 0, align 4
@websocketclient_onCloseCallback = common dso_local global i32 0, align 4
@METATABLE_WSCLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @websocket_createClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @websocket_createClient(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32 @NODE_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @luaM_malloc(i32* %6, i32 32)
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load i8*, i8** @LUA_NOREF, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @LUA_NOREF, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @LUA_NOREF, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @LUA_NOREF, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i64 @lua_newuserdata(i32* %21, i32 48)
  %23 = inttoptr i64 %22 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i32* @websocketclient_onConnectionCallback, i32** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32* @websocketclient_onReceiveCallback, i32** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32* @websocketclient_onCloseCallback, i32** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @METATABLE_WSCLIENT, align 4
  %39 = call i32 @luaL_getmetatable(i32* %37, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @lua_setmetatable(i32* %40, i32 -2)
  ret i32 1
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @luaM_malloc(i32*, i32) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
