; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_traceback.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_traceback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_GLOBALSINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @traceback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traceback(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @lua_isstring(i32* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %42

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %11 = call i32 @lua_getfield(i32* %9, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_istable(i32* %12, i32 -1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_isrotable(i32* %16, i32 -1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pop(i32* %20, i32 1)
  store i32 1, i32* %2, align 4
  br label %42

22:                                               ; preds = %15, %8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_getfield(i32* %23, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_isfunction(i32* %25, i32 -1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_islightfunction(i32* %29, i32 -1)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pop(i32* %33, i32 2)
  store i32 1, i32* %2, align 4
  br label %42

35:                                               ; preds = %28, %22
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_pushvalue(i32* %36, i32 1)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_pushinteger(i32* %38, i32 2)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_call(i32* %40, i32 2, i32 1)
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %32, %19, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_isrotable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_islightfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
