; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_config.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"websocketclient_config is called.\0A\00", align 1
@METATABLE_WSCLIENT = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @websocketclient_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @websocketclient_config(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = call i32 @NODE_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @METATABLE_WSCLIENT, align 4
  %10 = call i64 @luaL_checkudata(i32* %8, i32 1, i32 %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @LUA_TTABLE, align 4
  %18 = call i32 @luaL_checktype(i32* %16, i32 2, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_getfield(i32* %19, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i64 @lua_istable(i32* %21, i32 -1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %1
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @lua_pushnil(i32* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %31, %24
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @lua_next(i32* %28, i32 -2)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_pop(i32* %34, i32 1)
  br label %27

36:                                               ; preds = %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.TYPE_6__* @realloc_headers(%struct.TYPE_6__* %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %36
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %6, align 8
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @lua_pushnil(i32* %52)
  br label %54

54:                                               ; preds = %58, %48
  %55 = load i32*, i32** %2, align 8
  %56 = call i64 @lua_next(i32* %55, i32 -2)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @lua_tostring(i32* %59, i32 -2)
  %61 = call i8* @strdup(i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @lua_tostring(i32* %64, i32 -1)
  %66 = call i8* @strdup(i32 %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 1
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %6, align 8
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @lua_pop(i32* %72, i32 1)
  br label %54

74:                                               ; preds = %54
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i8* null, i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %36
  br label %80

80:                                               ; preds = %79, %1
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @lua_pop(i32* %81, i32 1)
  ret i32 0
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @realloc_headers(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
