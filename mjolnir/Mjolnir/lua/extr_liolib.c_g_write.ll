; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_liolib.c_g_write.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_liolib.c_g_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i64 0, align 8
@LUA_INTEGER_FMT = common dso_local global i8* null, align 8
@LUA_NUMBER_FMT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @g_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_write(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %75, %3
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @lua_type(i32* %22, i32 %23)
  %25 = load i64, i64* @LUA_TNUMBER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @lua_isinteger(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** @LUA_INTEGER_FMT, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @lua_tointeger(i32* %35, i32 %36)
  %38 = trunc i64 %37 to i32
  %39 = call i32 @fprintf(i32* %33, i8* %34, i32 %38)
  br label %48

40:                                               ; preds = %27
  %41 = load i32*, i32** %6, align 8
  %42 = load i8*, i8** @LUA_NUMBER_FMT, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @lua_tonumber(i32* %43, i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = call i32 @fprintf(i32* %41, i8* %42, i32 %46)
  br label %48

48:                                               ; preds = %40, %32
  %49 = phi i32 [ %39, %32 ], [ %47, %40 ]
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i1 [ false, %48 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %74

58:                                               ; preds = %21
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @luaL_checklstring(i32* %59, i32 %60, i64* %11)
  store i8* %61, i8** %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @fwrite(i8* %65, i32 1, i64 %66, i32* %67)
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %64, %58
  %72 = phi i1 [ false, %58 ], [ %70, %64 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %55
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %17

78:                                               ; preds = %17
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @luaL_fileresult(i32* %83, i32 %84, i32* null)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %81
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_isinteger(i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @lua_tonumber(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @luaL_fileresult(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
