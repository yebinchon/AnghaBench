; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_property_bool.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_property_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@MPV_FORMAT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_get_property_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_get_property_bool(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.script_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.script_ctx* @get_ctx(i32* %8)
  store %struct.script_ctx* %9, %struct.script_ctx** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checkstring(i32* %10, i32 1)
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.script_ctx*, %struct.script_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @MPV_FORMAT_FLAG, align 4
  %17 = call i32 @mpv_get_property(i32 %14, i8* %15, i32 %16, i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @lua_pushboolean(i32* %21, i32 %26)
  store i32 1, i32* %2, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pushvalue(i32* %29, i32 2)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mpv_error_string(i32 %32)
  %34 = call i32 @lua_pushstring(i32* %31, i32 %33)
  store i32 2, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @mpv_get_property(i32, i8*, i32, i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @mpv_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
