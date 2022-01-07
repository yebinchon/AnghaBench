; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lbaselib.c_generic_reader.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lbaselib.c_generic_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"too many nested functions\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"reader function must return a string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i64*)* @generic_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generic_reader(i32* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i64*, i64** %7, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* null, i8** %4, align 8
  br label %42

15:                                               ; preds = %11, %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @luaL_checkstack(i32* %16, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @lua_pushvalue(i32* %18, i32 1)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @lua_call(i32* %20, i32 0, i32 1)
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @lua_isnil(i32* %22, i32 -1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i64*, i64** %7, align 8
  store i64 0, i64* %26, align 8
  store i8* null, i8** %4, align 8
  br label %42

27:                                               ; preds = %15
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @lua_isstring(i32* %28, i32 -1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @lua_replace(i32* %32, i32 3)
  %34 = load i32*, i32** %5, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = call i8* @lua_tolstring(i32* %34, i32 3, i64* %35)
  store i8* %36, i8** %4, align 8
  br label %42

37:                                               ; preds = %27
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @luaL_error(i32* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  br label %42

42:                                               ; preds = %41, %31, %25, %14
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
