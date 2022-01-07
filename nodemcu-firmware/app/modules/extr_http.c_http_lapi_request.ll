; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_http.c_http_lapi_request.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_http.c_http_lapi_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"wrong arg type\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@http_callback_registry = common dso_local global i32 0, align 4
@http_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @http_lapi_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_lapi_request(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @luaL_checklstring(i32* %9, i32 1, i32* %4)
  store i8* %10, i8** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checklstring(i32* %11, i32 2, i32* %4)
  store i8* %12, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_error(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %62

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @lua_isstring(i32* %22, i32 3)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @luaL_checklstring(i32* %26, i32 3, i32* %4)
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @lua_isstring(i32* %29, i32 4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = call i8* @luaL_checklstring(i32* %33, i32 4, i32* %4)
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @lua_type(i32* %36, i32 5)
  %38 = load i64, i64* @LUA_TFUNCTION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @lua_type(i32* %41, i32 5)
  %43 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40, %35
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pushvalue(i32* %46, i32 5)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %50 = load i32, i32* @http_callback_registry, align 4
  %51 = call i32 @luaL_unref(i32* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %54 = call i32 @luaL_ref(i32* %52, i32 %53)
  store i32 %54, i32* @http_callback_registry, align 4
  br label %55

55:                                               ; preds = %45, %40
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @http_callback, align 4
  %61 = call i32 @http_request(i8* %56, i8* %57, i8* %58, i8* %59, i32 %60, i32 0)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @http_request(i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
