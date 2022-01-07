; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_tmr_register.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_tmr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i64 }

@MAX_TIMEOUT = common dso_local global i64 0, align 8
@MAX_TIMEOUT_ERR_STR = common dso_local global i8* null, align 8
@TIMER_MODE_SINGLE = common dso_local global i32 0, align 4
@TIMER_MODE_SEMI = common dso_local global i32 0, align 4
@TIMER_MODE_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Invalid mode\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Must be function\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@TIMER_IDLE_FLAG = common dso_local global i32 0, align 4
@TIMER_MODE_OFF = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i64 0, align 8
@alarm_timer_common = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tmr_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmr_register(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_4__* @tmr_get(i32* %7, i32 1)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @luaL_checkinteger(i32* %9, i32 2)
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @luaL_checkinteger(i32* %12, i32 3)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @MAX_TIMEOUT, align 8
  %21 = icmp sle i64 %19, %20
  br label %22

22:                                               ; preds = %18, %1
  %23 = phi i1 [ false, %1 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = load i8*, i8** @MAX_TIMEOUT_ERR_STR, align 8
  %26 = call i32 @luaL_argcheck(i32* %15, i32 %24, i32 2, i8* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TIMER_MODE_SINGLE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @TIMER_MODE_SEMI, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TIMER_MODE_AUTO, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31, %22
  %40 = phi i1 [ true, %31 ], [ true, %22 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @luaL_argcheck(i32* %27, i32 %41, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = call i64 @lua_type(i32* %44, i32 4)
  %46 = load i64, i64* @LUA_TFUNCTION, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @lua_type(i32* %49, i32 4)
  %51 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %48, %39
  %54 = phi i1 [ true, %39 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @luaL_argcheck(i32* %43, i32 %55, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @lua_pushvalue(i32* %57, i32 4)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %61 = call i64 @luaL_ref(i32* %59, i32 %60)
  store i64 %61, i64* %6, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TIMER_IDLE_FLAG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %53
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TIMER_MODE_OFF, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = call i32 @os_timer_disarm(i32* %76)
  br label %78

78:                                               ; preds = %74, %68, %53
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LUA_NOREF, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32*, i32** %2, align 8
  %92 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @luaL_unref(i32* %91, i32 %92, i64 %95)
  br label %97

97:                                               ; preds = %90, %84, %78
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @TIMER_IDLE_FLAG, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* @alarm_timer_common, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = call i32 @os_timer_setfn(i32* %110, i32 %111, %struct.TYPE_4__* %112)
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @tmr_get(i32*, i32) #1

declare dso_local i8* @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i32 @os_timer_setfn(i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
