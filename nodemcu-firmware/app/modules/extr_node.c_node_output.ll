; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_output.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@output_redir_ref = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@serial_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @node_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_output(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @lua_type(i32* %4, i32 1)
  %6 = load i64, i64* @LUA_TFUNCTION, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @lua_type(i32* %9, i32 1)
  %11 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %8, %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_pushvalue(i32* %14, i32 1)
  %16 = load i64, i64* @output_redir_ref, align 8
  %17 = load i64, i64* @LUA_NOREF, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %22 = load i64, i64* @output_redir_ref, align 8
  %23 = call i32 @luaL_unref(i32* %20, i32 %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %27 = call i64 @luaL_ref(i32* %25, i32 %26)
  store i64 %27, i64* @output_redir_ref, align 8
  br label %39

28:                                               ; preds = %8
  %29 = load i64, i64* @output_redir_ref, align 8
  %30 = load i64, i64* @LUA_NOREF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %35 = load i64, i64* @output_redir_ref, align 8
  %36 = call i32 @luaL_unref(i32* %33, i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i64, i64* @LUA_NOREF, align 8
  store i64 %38, i64* @output_redir_ref, align 8
  store i32 1, i32* @serial_debug, align 4
  store i32 0, i32* %2, align 4
  br label %52

39:                                               ; preds = %24
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @lua_isnumber(i32* %40, i32 2)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_tointeger(i32* %44, i32 2)
  store i32 %45, i32* @serial_debug, align 4
  %46 = load i32, i32* @serial_debug, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* @serial_debug, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %51

50:                                               ; preds = %39
  store i32 1, i32* @serial_debug, align 4
  br label %51

51:                                               ; preds = %50, %49
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
