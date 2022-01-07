; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_on_long_timeout.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_on_long_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"sntp: long timer\0A\00", align 1
@state = common dso_local global %struct.TYPE_3__* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@repeat = common dso_local global %struct.TYPE_4__* null, align 8
@server_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @on_long_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_long_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @sntp_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = call i32* (...) @lua_getstate()
  store i32* %6, i32** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @state_init(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @repeat, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lua_rawgeti(i32* %14, i32 %15, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %22 = call i8* @luaL_ref(i32* %20, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @repeat, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @lua_rawgeti(i32* %25, i32 %26, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %33 = call i8* @luaL_ref(i32* %31, i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* @server_count, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %13
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @repeat, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lua_rawgeti(i32* %39, i32 %40, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %47 = call i8* @luaL_ref(i32* %45, i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %38, %13
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @state, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @sntp_dolookups(i32* %53)
  br label %55

55:                                               ; preds = %50, %9
  br label %56

56:                                               ; preds = %55, %1
  ret void
}

declare dso_local i32 @sntp_dbg(i8*) #1

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @state_init(i32*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local i32 @sntp_dolookups(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
