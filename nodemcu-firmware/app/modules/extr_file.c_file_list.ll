; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_list.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_stat = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@VFS_RES_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_list(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfs_stat, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_settop(i32* %8, i32 1)
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_optstring(i32* %10, i32 1, i32* null)
  store i8* %11, i8** %5, align 8
  %12 = call i32* @vfs_opendir(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_newtable(i32* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_getmetafield(i32* %22, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %59, %57, %24
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @vfs_readdir(i32* %26, %struct.vfs_stat* %6)
  %28 = load i64, i64* @VFS_RES_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_settop(i32* %34, i32 3)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_pushvalue(i32* %36, i32 3)
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lua_pushstring(i32* %38, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_pushvalue(i32* %42, i32 1)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_pcall(i32* %44, i32 2, i32 1, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @vfs_closedir(i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_error(i32* %51)
  br label %53

53:                                               ; preds = %48, %33
  %54 = load i32*, i32** %3, align 8
  %55 = call i64 @lua_isnil(i32* %54, i32 -1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %25

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %30
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lua_pushinteger(i32* %60, i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lua_setfield(i32* %64, i32 2, i32 %66)
  br label %25

68:                                               ; preds = %25
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @lua_settop(i32* %69, i32 2)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @vfs_closedir(i32* %71)
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i32*) #1

declare dso_local i32* @vfs_opendir(i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @luaL_getmetafield(i32*, i32, i8*) #1

declare dso_local i64 @vfs_readdir(i32*, %struct.vfs_stat*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @vfs_closedir(i32*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
