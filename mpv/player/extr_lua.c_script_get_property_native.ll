; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_property_native.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_property_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@MPV_FORMAT_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_get_property_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_get_property_native(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.script_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.script_ctx* @get_ctx(i32* %9)
  store %struct.script_ctx* %10, %struct.script_ctx** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checkstring(i32* %11, i32 1)
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mp_lua_optarg(i32* %13, i32 2)
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @mp_lua_PITA(i32* %15)
  store i8* %16, i8** %6, align 8
  %17 = load %struct.script_ctx*, %struct.script_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @MPV_FORMAT_NODE, align 4
  %22 = call i32 @mpv_get_property(i32 %19, i8* %20, i32 %21, i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @auto_free_node(i8* %26, i32* %7)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @pushnode(i32* %28, i32* %7)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @talloc_free_children(i8* %30)
  store i32 1, i32* %2, align 4
  br label %39

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushvalue(i32* %33, i32 2)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @mpv_error_string(i32 %36)
  %38 = call i32 @lua_pushstring(i32* %35, i32 %37)
  store i32 2, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @mp_lua_optarg(i32*, i32) #1

declare dso_local i8* @mp_lua_PITA(i32*) #1

declare dso_local i32 @mpv_get_property(i32, i8*, i32, i32*) #1

declare dso_local i32 @auto_free_node(i8*, i32*) #1

declare dso_local i32 @pushnode(i32*, i32*) #1

declare dso_local i32 @talloc_free_children(i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @mpv_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
