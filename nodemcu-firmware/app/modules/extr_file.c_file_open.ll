; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_open.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@file_fd_ref = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i32 0, align 4
@FS_OBJ_NAME_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"filename invalid\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@file_fd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"file.obj\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_open(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %10 = load i32, i32* @file_fd_ref, align 4
  %11 = call i32 @luaL_unref(i32* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @LUA_NOREF, align 4
  store i32 %12, i32* @file_fd_ref, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @luaL_checklstring(i32* %13, i32 1, i64* %3)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @vfs_basename(i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = load i64, i64* @FS_OBJ_NAME_LEN, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %22, %1
  %28 = phi i1 [ false, %1 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @luaL_argcheck(i32* %17, i32 %29, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %2, align 8
  %32 = call i8* @luaL_optstring(i32* %31, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @vfs_open(i8* %33, i8* %34)
  store i64 %35, i64* @file_fd, align 8
  %36 = load i64, i64* @file_fd, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @lua_pushnil(i32* %39)
  br label %57

41:                                               ; preds = %27
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @lua_newuserdata(i32* %42, i32 8)
  %44 = inttoptr i64 %43 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %7, align 8
  %45 = load i64, i64* @file_fd, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @luaL_getmetatable(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @lua_setmetatable(i32* %50, i32 -2)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @lua_pushvalue(i32* %52, i32 -1)
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %56 = call i32 @luaL_ref(i32* %54, i32 %55)
  store i32 %56, i32* @file_fd_ref, align 4
  br label %57

57:                                               ; preds = %41, %38
  ret i32 1
}

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @vfs_basename(i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i64 @vfs_open(i8*, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
