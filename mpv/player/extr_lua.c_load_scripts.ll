; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_load_scripts.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_load_scripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"mp.defaults\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"mp_event_loop\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no event loop function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @load_scripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_scripts(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.script_ctx* @get_ctx(i32* %5)
  store %struct.script_ctx* %6, %struct.script_ctx** %3, align 8
  %7 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @require(i32* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @require(i32* %18, i8* %19)
  br label %25

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @load_file(i32* %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @lua_getglobal(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @lua_isnil(i32* %28, i32 -1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @luaL_error(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @lua_call(i32* %35, i32 0, i32 0)
  ret i32 0
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i32 @require(i32*, i8*) #1

declare dso_local i32 @load_file(i32*, i8*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
