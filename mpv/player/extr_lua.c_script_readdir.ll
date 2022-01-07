; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_readdir.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dirs\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_readdir(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [5 x i8*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.stat, align 4
  store i32* %0, i32** %3, align 8
  %13 = bitcast [5 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false)
  %14 = bitcast i8* %13 to [5 x i8*]*
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %18, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @luaL_checkstring(i32* %19, i32 1)
  store i8* %20, i8** %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %23 = call i32 @luaL_checkoption(i32* %21, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %22)
  store i32 %23, i32* %6, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @opendir(i8* %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pushnil(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_pushstring(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %105

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_newtable(i32* %34)
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %90, %88, %69, %54, %33
  %37 = load i32*, i32** %7, align 8
  %38 = call %struct.dirent* @readdir(i32* %37)
  store %struct.dirent* %38, %struct.dirent** %9, align 8
  %39 = icmp ne %struct.dirent* %38, null
  br i1 %39, label %40, label %100

40:                                               ; preds = %36
  %41 = load %struct.dirent*, %struct.dirent** %9, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %11, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  br label %36

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i8* @talloc_asprintf_append(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %63, i8* %64)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @stat(i8* %66, %struct.stat* %12)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %36

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISREG(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74, %70
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 2
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @S_ISDIR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83, %79
  br label %36

89:                                               ; preds = %83, %74
  br label %90

90:                                               ; preds = %89, %40
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = call i32 @lua_pushinteger(i32* %91, i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @lua_pushstring(i32* %95, i8* %96)
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @lua_settable(i32* %98, i32 -3)
  br label %36

100:                                              ; preds = %36
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @closedir(i32* %101)
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @talloc_free(i8* %103)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %28
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #2

declare dso_local i32 @luaL_checkoption(i32*, i32, i8*, i8**) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @lua_pushnil(i32*) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

declare dso_local i32 @lua_newtable(i32*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @lua_pushinteger(i32*, i32) #2

declare dso_local i32 @lua_settable(i32*, i32) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @talloc_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
