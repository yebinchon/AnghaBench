; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_get_callback_from_table_.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_get_callback_from_table_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REFNIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: item '%s' is not a function\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32*, i8*)* @get_callback_from_table_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_callback_from_table_(i32* %0, i32 %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* @LUA_REFNIL, align 4
  %12 = load i32*, i32** %9, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @lua_pushstring(i32* %13, i8* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @lua_gettable(i32* %16, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @lua_isfunction(i32* %20, i32 -1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @lua_isnil(i32* %24, i32 -1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @lua_pop(i32* %32, i32 1)
  br label %39

34:                                               ; preds = %5
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %37 = call i32 @luaL_ref(i32* %35, i32 %36)
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @warn(i8*, i8*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
