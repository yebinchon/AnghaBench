; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltablib.c_foreach.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltablib.c_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* @LUA_TTABLE, align 4
  %6 = call i32 @luaL_checktype(i32* %4, i32 1, i32 %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @luaL_checkanyfunction(i32* %7, i32 2)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_pushnil(i32* %9)
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @lua_next(i32* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_pushvalue(i32* %16, i32 2)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_pushvalue(i32* %18, i32 -3)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushvalue(i32* %20, i32 -3)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_call(i32* %22, i32 2, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_isnil(i32* %24, i32 -1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %32

28:                                               ; preds = %15
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pop(i32* %29, i32 2)
  br label %11

31:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaL_checkanyfunction(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
