; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_split_path.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_split_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_split_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_split_path(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i8* @luaL_checkstring(i32* %5, i32 1)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @mp_dirname(i8* %7)
  %9 = bitcast %struct.TYPE_3__* %4 to i64*
  store i64 %8, i64* %9, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @lua_pushlstring(i32* %10, i32 %12, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @mp_basename(i8* %17)
  %19 = call i32 @lua_pushstring(i32* %16, i32 %18)
  ret i32 2
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @mp_dirname(i8*) #1

declare dso_local i32 @lua_pushlstring(i32*, i32, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @mp_basename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
