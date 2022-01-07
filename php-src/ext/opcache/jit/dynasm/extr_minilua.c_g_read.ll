; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_g_read.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_g_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @g_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_read(i32* %0, i32* %1, i32 %2) #0 {
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
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @clearerr(i32* %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @read_line(i32* %21, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  br label %108

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 20
  %30 = call i32 @luaL_checkstack(i32* %27, i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %104, %26
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %8, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ false, %32 ], [ %38, %36 ]
  br i1 %40, label %41, label %107

41:                                               ; preds = %39
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @lua_type(i32* %42, i32 %43)
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @lua_tointeger(i32* %47, i32 %48)
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @test_eof(i32* %54, i32* %55)
  br label %62

57:                                               ; preds = %46
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @read_chars(i32* %58, i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i32 [ %56, %53 ], [ %61, %57 ]
  store i32 %63, i32* %9, align 4
  br label %103

64:                                               ; preds = %41
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i8* @lua_tostring(i32* %65, i32 %66)
  store i8* %67, i8** %12, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 42
  br label %77

77:                                               ; preds = %71, %64
  %78 = phi i1 [ false, %64 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @luaL_argcheck(i32* %68, i32 %79, i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  switch i32 %85, label %98 [
    i32 110, label %86
    i32 108, label %90
    i32 97, label %94
  ]

86:                                               ; preds = %77
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @read_number(i32* %87, i32* %88)
  store i32 %89, i32* %9, align 4
  br label %102

90:                                               ; preds = %77
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @read_line(i32* %91, i32* %92)
  store i32 %93, i32* %9, align 4
  br label %102

94:                                               ; preds = %77
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @read_chars(i32* %95, i32* %96, i64 -1)
  store i32 1, i32* %9, align 4
  br label %102

98:                                               ; preds = %77
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @luaL_argerror(i32* %99, i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %101, i32* %4, align 4
  br label %127

102:                                              ; preds = %94, %90, %86
  br label %103

103:                                              ; preds = %102, %62
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %32

107:                                              ; preds = %39
  br label %108

108:                                              ; preds = %107, %20
  %109 = load i32*, i32** %6, align 8
  %110 = call i64 @ferror(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @pushresult(i32* %113, i32 0, i32* null)
  store i32 %114, i32* %4, align 4
  br label %127

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @lua_pop(i32* %119, i32 1)
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @lua_pushnil(i32* %121)
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %112, %98
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @read_line(i32*, i32*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @test_eof(i32*, i32*) #1

declare dso_local i32 @read_chars(i32*, i32*, i64) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @read_number(i32*, i32*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @pushresult(i32*, i32, i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
