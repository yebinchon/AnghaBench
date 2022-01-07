; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_main.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@bitlib = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32* (...) @luaL_newstate()
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @luaL_openlibs(i32* %9)
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @bitlib, align 4
  %13 = call i32 @luaL_register(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 8, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @lua_createtable(i32* %18, i32 0, i32 1)
  %20 = load i32*, i32** %6, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @lua_pushstring(i32* %20, i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @lua_rawseti(i32* %25, i32 -2, i32 0)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @lua_setglobal(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %6, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @luaL_loadfile(i32* %29, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %59

36:                                               ; preds = %17
  store i32 2, i32* %7, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @lua_pushstring(i32* %42, i8* %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 2
  %56 = call i64 @lua_pcall(i32* %53, i32 %55, i32 0, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i8* @lua_tostring(i32* %61, i32 -1)
  %63 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  store i32 1, i32* %3, align 4
  br label %67

64:                                               ; preds = %52
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @lua_close(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %59, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @luaL_register(i32*, i8*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_setglobal(i32*, i8*) #1

declare dso_local i64 @luaL_loadfile(i32*, i8*) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
