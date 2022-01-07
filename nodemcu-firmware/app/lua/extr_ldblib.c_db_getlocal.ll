; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldblib.c_db_getlocal.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldblib.c_db_getlocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"level out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_getlocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getlocal(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @getthread(i32* %8, i32* %4)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @luaL_checkint(i32* %11, i32 %13)
  %15 = call i32 @lua_getstack(i32* %10, i32 %14, i32* %6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @luaL_argerror(i32* %18, i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %43

22:                                               ; preds = %1
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 2
  %27 = call i32 @luaL_checkint(i32* %24, i32 %26)
  %28 = call i8* @lua_getlocal(i32* %23, i32* %6, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_xmove(i32* %32, i32* %33, i32 1)
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @lua_pushstring(i32* %35, i8* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_pushvalue(i32* %38, i32 -2)
  store i32 2, i32* %2, align 4
  br label %43

40:                                               ; preds = %22
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_pushnil(i32* %41)
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %31, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32* @getthread(i32*, i32*) #1

declare dso_local i32 @lua_getstack(i32*, i32, i32*) #1

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i8* @lua_getlocal(i32*, i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
