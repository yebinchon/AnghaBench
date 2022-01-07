; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lauxlib.c_pushglobalfuncname.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lauxlib.c_pushglobalfuncname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_LOADED_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"_G.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pushglobalfuncname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushglobalfuncname(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @lua_getinfo(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %15 = load i32, i32* @LUA_LOADED_TABLE, align 4
  %16 = call i32 @lua_getfield(i32* %13, i32 %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i64 @findfield(i32* %17, i32 %19, i32 2)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @lua_tostring(i32* %23, i32 -1)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  %32 = call i32 @lua_pushstring(i32* %29, i8* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @lua_remove(i32* %33, i32 -2)
  br label %35

35:                                               ; preds = %28, %22
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @lua_copy(i32* %36, i32 -1, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @lua_pop(i32* %40, i32 2)
  store i32 1, i32* %3, align 4
  br label %46

42:                                               ; preds = %2
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @lua_settop(i32* %43, i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, i32*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i32) #1

declare dso_local i64 @findfield(i32*, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @lua_copy(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
