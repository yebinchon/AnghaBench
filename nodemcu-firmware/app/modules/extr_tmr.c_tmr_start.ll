; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_tmr_start.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_tmr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@TIMER_IDLE_FLAG = common dso_local global i32 0, align 4
@TIMER_MODE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tmr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmr_start(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_3__* @tmr_get(i32* %4, i32 1)
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LUA_NOREF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @lua_pushvalue(i32* %12, i32 1)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %16 = call i64 @luaL_ref(i32* %14, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TIMER_IDLE_FLAG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_pushboolean(i32* %27, i32 0)
  br label %50

29:                                               ; preds = %19
  %30 = load i32, i32* @TIMER_IDLE_FLAG, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TIMER_MODE_AUTO, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @os_timer_arm(i32* %37, i32 %40, i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @lua_pushboolean(i32* %48, i32 1)
  br label %50

50:                                               ; preds = %29, %26
  ret i32 1
}

declare dso_local %struct.TYPE_3__* @tmr_get(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
