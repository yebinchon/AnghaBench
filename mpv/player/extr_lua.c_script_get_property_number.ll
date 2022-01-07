; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_property_number.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_property_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@MPV_FORMAT_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_get_property_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_get_property_number(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.script_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.script_ctx* @get_ctx(i32* %8)
  store %struct.script_ctx* %9, %struct.script_ctx** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checkstring(i32* %10, i32 1)
  store i8* %11, i8** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  %12 = load %struct.script_ctx*, %struct.script_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @MPV_FORMAT_DOUBLE, align 4
  %17 = call i32 @mpv_get_property(i32 %14, i8* %15, i32 %16, double* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load double, double* %6, align 8
  %23 = call i32 @lua_pushnumber(i32* %21, double %22)
  store i32 1, i32* %2, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushvalue(i32* %25, i32 2)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mpv_error_string(i32 %28)
  %30 = call i32 @lua_pushstring(i32* %27, i32 %29)
  store i32 2, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @mpv_get_property(i32, i8*, i32, double*) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @mpv_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
