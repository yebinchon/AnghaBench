; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_load_builtin.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_load_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@builtin_lua_scripts = common dso_local global i8*** null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"builtin module '%s' not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @load_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_builtin(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @luaL_checkstring(i32* %8, i32 1)
  store i8* %9, i8** %4, align 8
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @snprintf(i8* %10, i32 80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %55, %1
  %14 = load i8***, i8**** @builtin_lua_scripts, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8**, i8*** %14, i64 %16
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %13
  %23 = load i8*, i8** %4, align 8
  %24 = load i8***, i8**** @builtin_lua_scripts, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8**, i8*** %24, i64 %26
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %23, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %22
  %34 = load i8***, i8**** @builtin_lua_scripts, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8**, i8*** %34, i64 %36
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %46 = call i64 @luaL_loadbuffer(i32* %41, i8* %42, i32 %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_error(i32* %49)
  br label %51

51:                                               ; preds = %48, %33
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_call(i32* %52, i32 0, i32 1)
  store i32 1, i32* %2, align 4
  br label %62

54:                                               ; preds = %22
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %13

58:                                               ; preds = %13
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @luaL_error(i32* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @luaL_loadbuffer(i32*, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
