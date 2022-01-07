; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_ads1115_lua_register.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_ads1115_lua_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"i2c_id must be 0\00", align 1
@unexpected_value = common dso_local global i8* null, align 8
@ADS1115_POINTER_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"found no device\00", align 1
@ADS1115_DEFAULT_CONFIG_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"unexpected config value (%p) please reset device before calling this function\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"ads1115 malloc: out of memory\00", align 1
@metatable_name = common dso_local global i32 0, align 4
@ADS1115_PGA_6_144V = common dso_local global i32 0, align 4
@ADS1115_DR_128SPS = common dso_local global i32 0, align 4
@ADS1115_ADS1115 = common dso_local global i64 0, align 8
@ADS1115_CQUE_NONE = common dso_local global i32 0, align 4
@ADS1115_MODE_SINGLE = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @ads1115_lua_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1115_lua_register(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @luaL_checkinteger(i32* %10, i32 1)
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @luaL_argcheck(i32* %12, i32 %15, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @luaL_checkinteger(i32* %17, i32 2)
  store i64 %18, i64* %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @IS_I2C_ADDR_VALID(i64 %20)
  %22 = load i8*, i8** @unexpected_value, align 8
  %23 = call i32 @luaL_argcheck(i32* %19, i32 %21, i32 2, i8* %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @ADS1115_POINTER_CONFIG, align 4
  %26 = call i32 @read_reg(i64 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 65535
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 (i32*, i8*, ...) @luaL_error(i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %3, align 4
  br label %90

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ADS1115_DEFAULT_CONFIG_REG, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32*, i8*, ...) @luaL_error(i32* %37, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %3, align 4
  br label %90

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @lua_newuserdata(i32* %41, i32 56)
  %43 = inttoptr i64 %42 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %9, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = icmp eq %struct.TYPE_2__* null, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @luaL_error(i32* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %3, align 4
  br label %90

49:                                               ; preds = %40
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @metatable_name, align 4
  %52 = call i32 @luaL_getmetatable(i32* %50, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @lua_setmetatable(i32* %53, i32 -2)
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 10
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 9
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @ADS1115_PGA_6_144V, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @ADS1115_DR_128SPS, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @ADS1115_ADS1115, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 128, i32 1600
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @ADS1115_CQUE_NONE, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @ADS1115_MODE_SINGLE, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 32768, i32* %81, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 32767, i32* %83, align 8
  %84 = load i32, i32* @ADS1115_DEFAULT_CONFIG_REG, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @LUA_NOREF, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %49, %46, %36, %29
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @IS_I2C_ADDR_VALID(i64) #1

declare dso_local i32 @read_reg(i64, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
