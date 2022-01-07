; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lstate.c_init_registry.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lstate.c_init_registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@LUA_RIDX_LAST = common dso_local global i32 0, align 4
@LUA_RIDX_MAINTHREAD = common dso_local global i32 0, align 4
@LUA_RIDX_GLOBALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @init_registry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_registry(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @luaH_new(i32* %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @sethvalue(i32* %9, i32* %11, i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @LUA_RIDX_LAST, align 4
  %17 = call i32 @luaH_resize(i32* %14, i32* %15, i32 %16, i32 0)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @setthvalue(i32* %18, i32* %5, i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @LUA_RIDX_MAINTHREAD, align 4
  %24 = call i32 @luaH_setint(i32* %21, i32* %22, i32 %23, i32* %5)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @luaH_new(i32* %26)
  %28 = call i32 @sethvalue(i32* %25, i32* %5, i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @LUA_RIDX_GLOBALS, align 4
  %32 = call i32 @luaH_setint(i32* %29, i32* %30, i32 %31, i32* %5)
  ret void
}

declare dso_local i32* @luaH_new(i32*) #1

declare dso_local i32 @sethvalue(i32*, i32*, i32*) #1

declare dso_local i32 @luaH_resize(i32*, i32*, i32, i32) #1

declare dso_local i32 @setthvalue(i32*, i32*, i32*) #1

declare dso_local i32 @luaH_setint(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
