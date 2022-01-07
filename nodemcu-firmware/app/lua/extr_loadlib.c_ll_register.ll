; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_loadlib.c_ll_register.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_loadlib.c_ll_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@LIBPREFIX = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"_LOADLIB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i32*, i8*)* @ll_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @ll_register(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @LIBPREFIX, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @lua_pushfstring(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7, i8* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %12 = call i32 @lua_gettable(i32* %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_isnil(i32* %13, i32 -1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @lua_touserdata(i32* %17, i32 -1)
  %19 = inttoptr i64 %18 to i8**
  store i8** %19, i8*** %5, align 8
  br label %40

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_pop(i32* %21, i32 1)
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @lua_newuserdata(i32* %23, i32 8)
  %25 = inttoptr i64 %24 to i8**
  store i8** %25, i8*** %5, align 8
  %26 = load i8**, i8*** %5, align 8
  store i8* null, i8** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @luaL_getmetatable(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_setmetatable(i32* %29, i32 -2)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @LIBPREFIX, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @lua_pushfstring(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_pushvalue(i32* %35, i32 -2)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %39 = call i32 @lua_settable(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %20, %16
  %41 = load i8**, i8*** %5, align 8
  ret i8** %41
}

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
