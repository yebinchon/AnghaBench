; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_close.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@LUA_TUSERDATA = common dso_local global i64 0, align 8
@file_fd_ref = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"file.obj\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_close(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @lua_type(i32* %7, i32 1)
  %9 = load i64, i64* @LUA_TUSERDATA, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i64, i64* @file_fd_ref, align 8
  %13 = load i64, i64* @LUA_NOREF, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %18 = load i64, i64* @file_fd_ref, align 8
  %19 = call i32 @lua_rawgeti(i32* %16, i32 %17, i64 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @luaL_checkudata(i32* %20, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = inttoptr i64 %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pop(i32* %23, i32 1)
  br label %26

25:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %49

26:                                               ; preds = %15
  br label %31

27:                                               ; preds = %1
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @luaL_checkudata(i32* %28, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %30 = inttoptr i64 %29 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %5, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @vfs_close(i64 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %46 = load i64, i64* @file_fd_ref, align 8
  %47 = call i32 @luaL_unref(i32* %44, i32 %45, i64 %46)
  %48 = load i64, i64* @LUA_NOREF, align 8
  store i64 %48, i64* @file_fd_ref, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %25
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @vfs_close(i64) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
