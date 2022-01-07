; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_scripting_init_tcp.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_scripting_init_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_3__*)* }
%struct.TYPE_3__ = type { %struct.lua_State* }
%struct.lua_State = type { i32 }
%struct.TCP_ConnectionTable = type { %struct.TYPE_3__* }

@banner_scripting = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scripting_init_tcp(%struct.TCP_ConnectionTable* %0, %struct.lua_State* %1) #0 {
  %3 = alloca %struct.TCP_ConnectionTable*, align 8
  %4 = alloca %struct.lua_State*, align 8
  store %struct.TCP_ConnectionTable* %0, %struct.TCP_ConnectionTable** %3, align 8
  store %struct.lua_State* %1, %struct.lua_State** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %6 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %3, align 8
  %7 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.lua_State* %5, %struct.lua_State** %9, align 8
  %10 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @banner_scripting, i32 0, i32 0), align 8
  %11 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call i32 %10(%struct.TYPE_3__* %13)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
