; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio_pulse.c_gpio_pulse_stop.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio_pulse.c_gpio_pulse_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"gpio.pulse\00", align 1
@active_pulser = common dso_local global %struct.TYPE_4__* null, align 8
@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"bad stop position: %d (valid range 1 - %d)\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"missing callback\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @gpio_pulse_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_pulse_stop(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_4__* @luaL_checkudata(i32* %9, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_pulser, align 8
  %13 = icmp ne %struct.TYPE_4__* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

15:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  store i32 -2, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @lua_type(i32* %16, i32 %17)
  %19 = load i64, i64* @LUA_TNUMBER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_checkinteger(i32* %22, i32 2)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, -2
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29, %26
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32*, i8*, ...) @luaL_error(i32* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %91

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %21
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %15
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @lua_type(i32* %49, i32 %50)
  %52 = load i64, i64* @LUA_TFUNCTION, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @lua_type(i32* %55, i32 %56)
  %58 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @lua_pushvalue(i32* %61, i32 %62)
  br label %67

64:                                               ; preds = %54
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 (i32*, i8*, ...) @luaL_error(i32* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %66, i32* %2, align 4
  br label %91

67:                                               ; preds = %60
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %70 = call i32 @luaL_ref(i32* %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @LUA_NOREF, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 -1, i32* %78, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @luaL_unref(i32* %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @lua_pushboolean(i32* %89, i32 1)
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %67, %64, %35, %14
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_4__* @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
