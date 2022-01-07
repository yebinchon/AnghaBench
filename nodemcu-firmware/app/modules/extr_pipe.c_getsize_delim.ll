; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_getsize_delim.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_getsize_delim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid chunk size\00", align 1
@CHAR_DELIM = common dso_local global i32 0, align 4
@CHAR_DELIM_KEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid delimiter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*, i32, i32*)* @getsize_delim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @getsize_delim(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @lua_type(i32* %11, i32 %12)
  %14 = load i64, i64* @LUA_TNUMBER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @luaL_checkinteger(i32* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @luaL_argcheck(i32* %20, i32 %23, i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8 0, i8* %7, align 1
  br label %63

26:                                               ; preds = %3
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @lua_isnil(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @CHAR_DELIM, align 4
  store i32 %32, i32* %8, align 4
  store i8 10, i8* %7, align 1
  br label %62

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @lua_tolstring(i32* %34, i32 2, i64* %9)
  store i8* %35, i8** %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 43
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @CHAR_DELIM_KEEP, align 4
  br label %48

46:                                               ; preds = %38, %33
  %47 = load i32, i32* @CHAR_DELIM, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @luaL_argcheck(i32* %50, i32 %56, i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %7, align 1
  br label %62

62:                                               ; preds = %48, %31
  br label %63

63:                                               ; preds = %62, %16
  %64 = load i32*, i32** %6, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i8, i8* %7, align 1
  ret i8 %70
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
