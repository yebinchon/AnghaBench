; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaL_loadfile.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaL_loadfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"reopen\00", align 1
@getF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @luaL_loadfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaL_loadfile(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @lua_pushliteral(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** @stdin, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32* %20, i32** %21, align 8
  br label %37

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @lua_pushfstring(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32* %27, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @errfile(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %3, align 4
  br label %137

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %17
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @getc(i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %56, %43
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @getc(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @EOF, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 10
  br label %54

54:                                               ; preds = %51, %45
  %55 = phi i1 [ false, %45 ], [ %53, %51 ]
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %45

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @getc(i32* %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %9, align 4
  %67 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %103

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %103

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32* @freopen(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32* %77, i32** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @errfile(i32* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  store i32 %85, i32* %3, align 4
  br label %137

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %100, %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @getc(i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @EOF, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %94, %96
  br label %98

98:                                               ; preds = %93, %87
  %99 = phi i1 [ false, %87 ], [ %97, %93 ]
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  br label %87

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %101, %70, %65
  %104 = load i32, i32* %9, align 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @ungetc(i32 %104, i32* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @getF, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @lua_tostring(i32* %110, i32 -1)
  %112 = call i32 @lua_load(i32* %108, i32 %109, %struct.TYPE_3__* %6, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @ferror(i32* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %103
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @fclose(i32* %120)
  br label %122

122:                                              ; preds = %118, %103
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @lua_settop(i32* %126, i32 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @errfile(i32* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %130)
  store i32 %131, i32* %3, align 4
  br label %137

132:                                              ; preds = %122
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @lua_remove(i32* %133, i32 %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %132, %125, %82, %32
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @errfile(i32*, i8*, i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32* @freopen(i8*, i8*, i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @lua_load(i32*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
