; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio_pulse.c_gpio_pulse_build.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio_pulse.c_gpio_pulse_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"table is too large: %d entries is more than 100\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gpio.pulse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @gpio_pulse_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_pulse_build(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @LUA_TTABLE, align 4
  %11 = call i32 @luaL_checktype(i32* %9, i32 1, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @luaL_getn(i32* %12, i32 1)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ugt i64 %14, 100
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i32 %19, i32* %2, align 4
  br label %68

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = mul i64 %21, 8
  %23 = add i64 16, %22
  store i64 %23, i64* %5, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @lua_newuserdata(i32* %24, i64 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @memset(%struct.TYPE_5__* %28, i32 0, i64 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @luaL_getmetatable(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_setmetatable(i32* %33, i32 -2)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 1
  %37 = bitcast %struct.TYPE_5__* %36 to %struct.TYPE_6__*
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %64, %20
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %8, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 -1, i32* %56, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  %60 = call i32 @lua_rawgeti(i32* %57, i32 1, i64 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = call i32 @fill_entry_from_table(i32* %61, %struct.TYPE_6__* %62)
  br label %64

64:                                               ; preds = %47
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %43

67:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i64 @luaL_getn(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i64) #1

declare dso_local i64 @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @fill_entry_from_table(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
