; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_http.c_http_lapi_post.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_http.c_http_lapi_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"wrong arg type\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@http_callback_registry = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@http_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @http_lapi_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_lapi_post(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @luaL_checklstring(i32* %8, i32 1, i32* %4)
  store i8* %9, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_error(i32* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @lua_isstring(i32* %16, i32 2)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @luaL_checklstring(i32* %20, i32 2, i32* %4)
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @lua_isstring(i32* %23, i32 3)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @luaL_checklstring(i32* %27, i32 3, i32* %4)
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @lua_type(i32* %30, i32 4)
  %32 = load i64, i64* @LUA_TFUNCTION, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @lua_type(i32* %35, i32 4)
  %37 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_pushvalue(i32* %40, i32 4)
  %42 = load i64, i64* @http_callback_registry, align 8
  %43 = load i64, i64* @LUA_NOREF, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %48 = load i64, i64* @http_callback_registry, align 8
  %49 = call i32 @luaL_unref(i32* %46, i32 %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %53 = call i64 @luaL_ref(i32* %51, i32 %52)
  store i64 %53, i64* @http_callback_registry, align 8
  br label %54

54:                                               ; preds = %50, %34
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @http_callback, align 4
  %59 = call i32 @http_post(i8* %55, i8* %56, i8* %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @http_post(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
