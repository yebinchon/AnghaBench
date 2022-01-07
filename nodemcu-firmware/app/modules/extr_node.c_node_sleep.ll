; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_sleep.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [121 x i8] c"\0A The options \22TIMER_SUSPEND_ENABLE\22 and \22PMSLEEP_ENABLE\22 in \22app/include/user_config.h\22 were disabled during FW build!\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"node.sleep() is unavailable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @node_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_sleep(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @dbg_printf(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0))
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @luaL_error(i32* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  ret i32 %5
}

declare dso_local i32 @dbg_printf(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
