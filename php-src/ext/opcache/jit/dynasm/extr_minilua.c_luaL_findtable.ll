; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaL_findtable.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaL_findtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i8*, i32)* @luaL_findtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @luaL_findtable(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @lua_pushvalue(i32* %11, i32 %12)
  br label %14

14:                                               ; preds = %81, %4
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 46)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @lua_pushlstring(i32* %26, i8* %27, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @lua_rawget(i32* %35, i32 -2)
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @lua_isnil(i32* %37, i32 -1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %25
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @lua_pop(i32* %41, i32 1)
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 1, %48 ], [ %50, %49 ]
  %53 = call i32 @lua_createtable(i32* %43, i32 0, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @lua_pushlstring(i32* %54, i8* %55, i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @lua_pushvalue(i32* %63, i32 -2)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @lua_settable(i32* %65, i32 -4)
  br label %76

67:                                               ; preds = %25
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @lua_istable(i32* %68, i32 -1)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @lua_pop(i32* %72, i32 2)
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %5, align 8
  br label %87

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @lua_remove(i32* %77, i32 -2)
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %8, align 8
  br label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %14, label %86

86:                                               ; preds = %81
  store i8* null, i8** %5, align 8
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i8*, i8** %5, align 8
  ret i8* %88
}

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
