; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_osd_margins.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_osd_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.mp_osd_res = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_get_osd_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_get_osd_margins(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.mp_osd_res, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.MPContext* @get_mpctx(i32* %5)
  store %struct.MPContext* %6, %struct.MPContext** %3, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call { i64, i64 } @osd_get_vo_res(i32 %9)
  %11 = bitcast %struct.mp_osd_res* %4 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { i64, i64 } %10, 0
  store i64 %13, i64* %12, align 4
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { i64, i64 } %10, 1
  store i64 %15, i64* %14, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lua_pushnumber(i32* %16, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lua_pushnumber(i32* %20, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lua_pushnumber(i32* %24, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lua_pushnumber(i32* %28, i32 %30)
  ret i32 4
}

declare dso_local %struct.MPContext* @get_mpctx(i32*) #1

declare dso_local { i64, i64 } @osd_get_vo_res(i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
