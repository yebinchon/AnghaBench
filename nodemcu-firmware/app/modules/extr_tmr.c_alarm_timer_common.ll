; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_alarm_timer_common.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_alarm_timer_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@TIMER_MODE_SINGLE = common dso_local global i32 0, align 4
@TIMER_MODE_OFF = common dso_local global i32 0, align 4
@TIMER_MODE_SEMI = common dso_local global i32 0, align 4
@TIMER_IDLE_FLAG = common dso_local global i32 0, align 4
@TIMER_MODE_AUTO = common dso_local global i32 0, align 4
@LUA_REFNIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @alarm_timer_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alarm_timer_common(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = call i32* (...) @lua_getstate()
  store i32* %7, i32** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LUA_NOREF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %83

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @lua_rawgeti(i32* %15, i32 %16, i64 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @lua_rawgeti(i32* %21, i32 %22, i64 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TIMER_MODE_SINGLE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %14
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @luaL_unref(i32* %33, i32 %34, i64 %37)
  %39 = load i64, i64* @LUA_NOREF, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @TIMER_MODE_OFF, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %58

45:                                               ; preds = %14
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TIMER_MODE_SEMI, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @TIMER_IDLE_FLAG, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TIMER_MODE_AUTO, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LUA_REFNIL, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @luaL_unref(i32* %71, i32 %72, i64 %75)
  %77 = load i64, i64* @LUA_NOREF, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %70, %64, %58
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @lua_call(i32* %81, i32 1, i32 0)
  br label %83

83:                                               ; preds = %80, %13
  ret void
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
