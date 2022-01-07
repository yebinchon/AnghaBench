; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_require.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_require.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"loading %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"require '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @require to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @require(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.script_ctx*, align 8
  %6 = alloca [80 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.script_ctx* @get_ctx(i32* %7)
  store %struct.script_ctx* %8, %struct.script_ctx** %5, align 8
  %9 = load %struct.script_ctx*, %struct.script_ctx** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @MP_DBG(%struct.script_ctx* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @snprintf(i8* %12, i32 80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %17 = call i64 @luaL_loadstring(i32* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_error(i32* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_call(i32* %23, i32 0, i32 0)
  ret void
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i32 @MP_DBG(%struct.script_ctx*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @luaL_loadstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
