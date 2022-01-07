; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_http.c_http_lapi_get.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_http.c_http_lapi_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"wrong arg type\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@http_callback_registry = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@http_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @http_lapi_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_lapi_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @luaL_checklstring(i32* %7, i32 1, i32* %4)
  store i8* %8, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_error(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @lua_isstring(i32* %15, i32 2)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @luaL_checklstring(i32* %19, i32 2, i32* %4)
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @lua_type(i32* %22, i32 3)
  %24 = load i64, i64* @LUA_TFUNCTION, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @lua_type(i32* %27, i32 3)
  %29 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26, %21
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_pushvalue(i32* %32, i32 3)
  %34 = load i64, i64* @http_callback_registry, align 8
  %35 = load i64, i64* @LUA_NOREF, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %40 = load i64, i64* @http_callback_registry, align 8
  %41 = call i32 @luaL_unref(i32* %38, i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %45 = call i64 @luaL_ref(i32* %43, i32 %44)
  store i64 %45, i64* @http_callback_registry, align 8
  br label %46

46:                                               ; preds = %42, %26
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @http_callback, align 4
  %50 = call i32 @http_get(i8* %47, i8* %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @http_get(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
