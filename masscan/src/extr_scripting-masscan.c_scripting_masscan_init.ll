; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_scripting-masscan.c_scripting_masscan_init.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_scripting-masscan.c_scripting_masscan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32* }
%struct.Masscan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.lua_State* }
%struct.lua_State = type { i32 }
%struct.MasscanWrapper = type { %struct.Masscan* }

@scripting_masscan_init.my_methods = internal constant [3 x %struct.TYPE_5__] [%struct.TYPE_5__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32* inttoptr (i64 128 to i32*) }, %struct.TYPE_5__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32* inttoptr (i64 129 to i32*) }, %struct.TYPE_5__ zeroinitializer], align 16
@.str = private unnamed_addr constant [10 x i8] c"setconfig\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@MASSCAN_CLASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Masscan\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scripting_masscan_init(%struct.Masscan* %0) #0 {
  %2 = alloca %struct.Masscan*, align 8
  %3 = alloca %struct.MasscanWrapper*, align 8
  %4 = alloca %struct.lua_State*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %2, align 8
  %5 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %6 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  store %struct.lua_State* %8, %struct.lua_State** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* @MASSCAN_CLASS, align 4
  %11 = call i32 @luaL_newmetatable(%struct.lua_State* %9, i32 %10)
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = call i32 @lua_pushvalue(%struct.lua_State* %12, i32 -1)
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = call i32 @lua_setfield(%struct.lua_State* %14, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = call i32 @luaL_setfuncs(%struct.lua_State* %16, %struct.TYPE_5__* getelementptr inbounds ([3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* @scripting_masscan_init.my_methods, i64 0, i64 0), i32 0)
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = call i32 @lua_pop(%struct.lua_State* %18, i32 1)
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = call %struct.MasscanWrapper* @lua_newuserdata(%struct.lua_State* %20, i32 8)
  store %struct.MasscanWrapper* %21, %struct.MasscanWrapper** %3, align 8
  %22 = load %struct.MasscanWrapper*, %struct.MasscanWrapper** %3, align 8
  %23 = call i32 @memset(%struct.MasscanWrapper* %22, i32 0, i32 8)
  %24 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %25 = load %struct.MasscanWrapper*, %struct.MasscanWrapper** %3, align 8
  %26 = getelementptr inbounds %struct.MasscanWrapper, %struct.MasscanWrapper* %25, i32 0, i32 0
  store %struct.Masscan* %24, %struct.Masscan** %26, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = load i32, i32* @MASSCAN_CLASS, align 4
  %29 = call i32 @luaL_setmetatable(%struct.lua_State* %27, i32 %28)
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %31 = call i32 @lua_setglobal(%struct.lua_State* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @luaL_newmetatable(%struct.lua_State*, i32) #1

declare dso_local i32 @lua_pushvalue(%struct.lua_State*, i32) #1

declare dso_local i32 @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare dso_local i32 @luaL_setfuncs(%struct.lua_State*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @lua_pop(%struct.lua_State*, i32) #1

declare dso_local %struct.MasscanWrapper* @lua_newuserdata(%struct.lua_State*, i32) #1

declare dso_local i32 @memset(%struct.MasscanWrapper*, i32, i32) #1

declare dso_local i32 @luaL_setmetatable(%struct.lua_State*, i32) #1

declare dso_local i32 @lua_setglobal(%struct.lua_State*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
