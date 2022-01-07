; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_input_set_section_mouse_area.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_input_set_section_mouse_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_input_set_section_mouse_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_input_set_section_mouse_area(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.MPContext* @get_mpctx(i32* %9)
  store %struct.MPContext* %10, %struct.MPContext** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @luaL_checkstring(i32* %11, i32 1)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %4, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @luaL_checkinteger(i32* %14, i32 2)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @luaL_checkinteger(i32* %16, i32 3)
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @luaL_checkinteger(i32* %18, i32 4)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @luaL_checkinteger(i32* %20, i32 5)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @mp_input_set_section_mouse_area(i32 %24, i8* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  ret i32 0
}

declare dso_local %struct.MPContext* @get_mpctx(i32*) #1

declare dso_local i64 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @mp_input_set_section_mouse_area(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
