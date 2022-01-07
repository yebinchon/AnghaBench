; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_lflashimg.c_addTS.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_lflashimg.c_addTS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@LUA_TSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Adding string: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*)* @addTS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addTS(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LUA_TSTRING, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @lua_assert(i32 %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = call i32 @lua_pushnil(%struct.TYPE_13__* %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = call i32 @setsvalue(%struct.TYPE_13__* %15, i64 %19, %struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = call i32 @lua_pushinteger(%struct.TYPE_13__* %22, i32 1)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = call i32 @lua_rawset(%struct.TYPE_13__* %24, i32 -3)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = call i32 @getstr(%struct.TYPE_14__* %26)
  %28 = call i32 @DBG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lua_pushnil(%struct.TYPE_13__*) #1

declare dso_local i32 @setsvalue(%struct.TYPE_13__*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @lua_pushinteger(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lua_rawset(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @DBG_PRINT(i8*, i32) #1

declare dso_local i32 @getstr(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
