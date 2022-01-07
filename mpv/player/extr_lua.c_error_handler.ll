; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_error_handler.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"return debug.traceback('', 3)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @error_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.script_ctx* @get_ctx(i32* %5)
  store %struct.script_ctx* %6, %struct.script_ctx** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @luaL_loadstring(i32* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_call(i32* %11, i32 0, i32 1)
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @lua_tostring(i32* %13, i32 -1)
  store i8* %14, i8** %4, align 8
  %15 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  br label %21

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i8* [ %19, %18 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %20 ]
  %23 = call i32 @MP_WARN(%struct.script_ctx* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @lua_pop(i32* %25, i32 1)
  ret i32 1
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i64 @luaL_loadstring(i32*, i8*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @MP_WARN(%struct.script_ctx*, i8*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
