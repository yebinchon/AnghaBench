; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_stop.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@state = common dso_local global %struct.TYPE_2__* null, align 8
@LIBRARY_NOT_INITIALIZED_ERROR_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ws2812_effects_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_stop(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* @LIBRARY_NOT_INITIALIZED_ERROR_MSG, align 4
  %8 = call i32 @luaL_argcheck(i32* %3, i32 %6, i32 1, i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @os_timer_disarm(i32* %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
