; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_property.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@MPV_FORMAT_OSD_STRING = common dso_local global i32 0, align 4
@MPV_FORMAT_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_get_property(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.script_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.script_ctx* @get_ctx(i32* %9)
  store %struct.script_ctx* %10, %struct.script_ctx** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checkstring(i32* %11, i32 1)
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_upvalueindex(i32 1)
  %15 = call i64 @lua_tointeger(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @MPV_FORMAT_OSD_STRING, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @MPV_FORMAT_STRING, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %23 = load %struct.script_ctx*, %struct.script_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mpv_get_property(i32 %25, i8* %26, i32 %27, i8** %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @lua_pushstring(i32* %32, i8* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @talloc_free(i8* %35)
  store i32 1, i32* %2, align 4
  br label %56

37:                                               ; preds = %21
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @lua_isnoneornil(i32* %38, i32 2)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MPV_FORMAT_OSD_STRING, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pushstring(i32* %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %51

48:                                               ; preds = %41, %37
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_pushvalue(i32* %49, i32 2)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @mpv_error_string(i32 %53)
  %55 = call i32 @lua_pushstring(i32* %52, i8* %54)
  store i32 2, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %31
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @mpv_get_property(i32, i8*, i32, i8**) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @mpv_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
