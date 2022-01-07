; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-lua.c_lwan_lua_create_state.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-lua.c_lwan_lua_create_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@request_metatable_name = common dso_local global i32 0, align 4
@lua_methods = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Error opening Lua script %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error evaluating Lua script %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Either file or inline script has to be provided\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lwan_lua_create_state(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32* (...) @luaL_newstate()
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp ne i32* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @UNLIKELY(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %66

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @luaL_openlibs(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @request_metatable_name, align 4
  %20 = call i32 @luaL_newmetatable(i32* %18, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lua_methods, i32 0, i32 0, i32 0), align 4
  %23 = call i32 @luaL_register(i32* %21, i32* null, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @lua_setfield(i32* %24, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %15
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @luaL_dofile(i32* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @UNLIKELY(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @lua_tostring(i32* %38, i32 -1)
  %40 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %39)
  br label %63

41:                                               ; preds = %28
  br label %61

42:                                               ; preds = %15
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @luaL_dostring(i32* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @UNLIKELY(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @lua_tostring(i32* %54, i32 -1)
  %56 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %63

57:                                               ; preds = %45
  br label %60

58:                                               ; preds = %42
  %59 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %63

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i32*, i32** %6, align 8
  store i32* %62, i32** %3, align 8
  br label %66

63:                                               ; preds = %58, %53, %36
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @lua_close(i32* %64)
  store i32* null, i32** %3, align 8
  br label %66

66:                                               ; preds = %63, %61, %14
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @luaL_newmetatable(i32*, i32) #1

declare dso_local i32 @luaL_register(i32*, i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i64 @luaL_dofile(i32*, i8*) #1

declare dso_local i32 @lwan_status_error(i8*, ...) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i64 @luaL_dostring(i32*, i8*) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
