; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_send.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_websocket.c_websocketclient_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"websocketclient_send is called.\0A\00", align 1
@METATABLE_WSCLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Websocket isn't connected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @websocketclient_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @websocketclient_send(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = call i32 @NODE_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @METATABLE_WSCLIENT, align 4
  %12 = call i64 @luaL_checkudata(i32* %10, i32 1, i32 %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @luaL_checklstring(i32* %26, i32 2, i32* %6)
  store i8* %27, i8** %7, align 8
  store i32 1, i32* %8, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_gettop(i32* %28)
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @luaL_checkint(i32* %32, i32 3)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = trunc i32 %38 to i16
  %40 = call i32 @ws_send(%struct.TYPE_3__* %35, i32 %36, i8* %37, i16 zeroext %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %22
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @ws_send(%struct.TYPE_3__*, i32, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
