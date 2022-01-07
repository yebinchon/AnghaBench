; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_file_info.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"is_file\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"is_dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_file_info(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca [6 x i8*], align 16
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @luaL_checkstring(i32* %9, i32 1)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @stat(i8* %11, %struct.stat* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_pushnil(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_pushstring(i32* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_newtable(i32* %20)
  %22 = bitcast [6 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 48, i1 false)
  %23 = bitcast i8* %22 to [6 x i8*]*
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %26, align 16
  %27 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %27, align 8
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %28, align 16
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds i32, i32* %29, i64 1
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds i32, i32* %32, i64 1
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds i32, i32* %35, i64 1
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds i32, i32* %38, i64 1
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %63, %19
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lua_pushinteger(i32* %51, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @lua_setfield(i32* %57, i32 -2, i8* %61)
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @S_ISREG(i32 %69)
  %71 = call i32 @lua_pushboolean(i32* %67, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @lua_setfield(i32* %72, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @S_ISDIR(i32 %76)
  %78 = call i32 @lua_pushboolean(i32* %74, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @lua_setfield(i32* %79, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %66, %14
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
