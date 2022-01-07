; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_log.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_log(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.script_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.script_ctx* @get_ctx(i32* %9)
  store %struct.script_ctx* %10, %struct.script_ctx** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @check_loglevel(i32* %11, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_getglobal(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %7, align 4
  br label %17

17:                                               ; preds = %49, %1
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pushvalue(i32* %22, i32 -1)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @lua_pushvalue(i32* %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_call(i32* %27, i32 1, i32 1)
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @lua_tostring(i32* %29, i32 -1)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @luaL_error(i32* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %21
  %37 = load %struct.script_ctx*, %struct.script_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %46 = call i32 (i32, i32, i8*, ...) @mp_msg(i32 %39, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 1)
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %17

52:                                               ; preds = %17
  %53 = load %struct.script_ctx*, %struct.script_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32, i32, i8*, ...) @mp_msg(i32 %55, i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %33
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i32 @check_loglevel(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @mp_msg(i32, i32, i8*, ...) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
