; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ws2812.buffer\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"no valid buffer provided\00", align 1
@state = common dso_local global %struct.TYPE_4__* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@SPEED_DEFAULT = common dso_local global i32 0, align 4
@DELAY_DEFAULT = common dso_local global i32 0, align 4
@BRIGHTNESS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ws2812_effects_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @luaL_checkudata(i32* %5, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = inttoptr i64 %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @luaL_argcheck(i32* %8, i32 %11, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @luaL_unref(i32* %16, i32 %17, i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %23 = bitcast %struct.TYPE_4__* %22 to i8*
  %24 = call i32 @free(i8* %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 32, %30
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @calloc(i32 1, i64 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** @state, align 8
  %35 = load i32, i32* @SPEED_DEFAULT, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @DELAY_DEFAULT, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @BRIGHTNESS_DEFAULT, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %46, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %49 = call i32 @luaL_ref(i32* %47, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret i32 0
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
