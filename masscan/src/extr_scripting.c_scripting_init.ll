; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_scripting.c_scripting_init.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_scripting.c_scripting_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.lua_State* }
%struct.lua_State = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s: no script specified, use --script option\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SCRIPTING\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Lua version = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to load Lua library\0A\00", align 1
@LUA_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"%s error loading: %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SCRIPTING:\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s running script: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s error running: %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scripting_init(%struct.Masscan* %0) #0 {
  %2 = alloca %struct.Masscan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %2, align 8
  %7 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %8 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %1
  %20 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %13
  %23 = call i32 (...) @stublua_init()
  %24 = call i64* @lua_version(i32 0)
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 503
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 502
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %31, %22
  %38 = call %struct.lua_State* (...) @luaL_newstate()
  store %struct.lua_State* %38, %struct.lua_State** %4, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = call i32 @luaL_openlibs(%struct.lua_State* %39)
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %42 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %43 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.lua_State* %41, %struct.lua_State** %44, align 8
  %45 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %46 = call i32 @scripting_masscan_init(%struct.Masscan* %45)
  %47 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @luaL_loadfile(%struct.lua_State* %47, i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @LUA_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %37
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %56 = call i32 @lua_tostring(%struct.lua_State* %55, i32 -1)
  %57 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %54, i32 %56)
  %58 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %59 = call i32 @lua_close(%struct.lua_State* %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %37
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  %64 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %65 = call i32 @lua_pcall(%struct.lua_State* %64, i32 0, i32 0, i32 0)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @LUA_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %72 = call i32 @lua_tostring(%struct.lua_State* %71, i32 -1)
  %73 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %70, i32 %72)
  %74 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %75 = call i32 @lua_close(%struct.lua_State* %74)
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %61
  ret void
}

declare dso_local i32 @LOG(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @stublua_init(...) #1

declare dso_local i64* @lua_version(i32) #1

declare dso_local %struct.lua_State* @luaL_newstate(...) #1

declare dso_local i32 @luaL_openlibs(%struct.lua_State*) #1

declare dso_local i32 @scripting_masscan_init(%struct.Masscan*) #1

declare dso_local i32 @luaL_loadfile(%struct.lua_State*, i8*) #1

declare dso_local i32 @lua_tostring(%struct.lua_State*, i32) #1

declare dso_local i32 @lua_close(%struct.lua_State*) #1

declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
