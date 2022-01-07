; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_run_lua.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_run_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"mp\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"script_name\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"UNKNOWN_TYPE\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"MAP\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ARRAY\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@LUA_TTABLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@builtin_lua_scripts = common dso_local global i8*** null, align 8
@load_builtin = common dso_local global i32 0, align 4
@error_handler = common dso_local global i32 0, align 4
@load_scripts = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Lua error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @run_lua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_lua(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.script_ctx* @lua_touserdata(i32* %6, i32 -1)
  store %struct.script_ctx* %7, %struct.script_ctx** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_pop(i32* %8, i32 1)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @luaL_openlibs(i32* %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %14 = call i32 @lua_pushlightuserdata(i32* %12, %struct.script_ctx* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %17 = call i32 @lua_setfield(i32* %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %19 = call i32 @add_functions(%struct.script_ctx* %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @push_module_table(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_pushvalue(i32* %22, i32 -1)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_setglobal(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %2, align 8
  %27 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @lua_pushstring(i32* %26, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_setfield(i32* %31, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @lua_newtable(i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @lua_pushvalue(i32* %35, i32 -1)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %39 = call i32 @lua_setfield(i32* %37, i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @lua_setfield(i32* %40, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @lua_newtable(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @lua_pushvalue(i32* %44, i32 -1)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %48 = call i32 @lua_setfield(i32* %46, i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @lua_setfield(i32* %49, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_newtable(i32* %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @lua_pushvalue(i32* %53, i32 -1)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %57 = call i32 @lua_setfield(i32* %55, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @lua_setfield(i32* %58, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @lua_pop(i32* %60, i32 1)
  %62 = load i32*, i32** %2, align 8
  %63 = call i64 @lua_gettop(i32* %62)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @lua_getglobal(i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32*, i32** %2, align 8
  %70 = call i64 @lua_type(i32* %69, i32 -1)
  %71 = load i64, i64* @LUA_TTABLE, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @lua_getfield(i32* %75, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32*, i32** %2, align 8
  %78 = call i64 @lua_type(i32* %77, i32 -1)
  %79 = load i64, i64* @LUA_TTABLE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %105, %1
  %84 = load i8***, i8**** @builtin_lua_scripts, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8**, i8*** %84, i64 %86
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %108

92:                                               ; preds = %83
  %93 = load i32*, i32** %2, align 8
  %94 = load i32, i32* @load_builtin, align 4
  %95 = call i32 @lua_pushcfunction(i32* %93, i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load i8***, i8**** @builtin_lua_scripts, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8**, i8*** %97, i64 %99
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @lua_setfield(i32* %96, i32 -2, i8* %103)
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %83

108:                                              ; preds = %83
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @lua_pop(i32* %109, i32 2)
  %111 = load i32*, i32** %2, align 8
  %112 = call i64 @lua_gettop(i32* %111)
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @set_path(i32* %116)
  %118 = load i32*, i32** %2, align 8
  %119 = call i64 @lua_gettop(i32* %118)
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i32*, i32** %2, align 8
  %124 = load i32, i32* @error_handler, align 4
  %125 = call i32 @lua_pushcfunction(i32* %123, i32 %124)
  %126 = load i32*, i32** %2, align 8
  %127 = load i32, i32* @load_scripts, align 4
  %128 = call i32 @lua_pushcfunction(i32* %126, i32 %127)
  %129 = load i32*, i32** %2, align 8
  %130 = call i64 @lua_pcall(i32* %129, i32 0, i32 0, i32 -2)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %108
  %133 = load i32*, i32** %2, align 8
  %134 = call i8* @lua_tostring(i32* %133, i32 -1)
  store i8* %134, i8** %5, align 8
  %135 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i8*, i8** %5, align 8
  br label %141

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i8* [ %139, %138 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %140 ]
  %143 = call i32 @MP_FATAL(%struct.script_ctx* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %141, %108
  ret i32 0
}

declare dso_local %struct.script_ctx* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.script_ctx*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @add_functions(%struct.script_ctx*) #1

declare dso_local i32 @push_module_table(i32*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setglobal(i32*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @set_path(i32*) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @MP_FATAL(%struct.script_ctx*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
