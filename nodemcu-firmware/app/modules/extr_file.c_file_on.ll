; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_on.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@__const.file_on.eventnames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@rtc_cb_ref = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@LUA_TLIGHTFUNCTION = common dso_local global i32 0, align 4
@file_rtc_cb = common dso_local global i32* null, align 8
@LUA_NOREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_on(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i8*], align 16
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([2 x i8*]* @__const.file_on.eventnames to i8*), i64 16, i1 false)
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %8 = call i32 @luaL_checkoption(i32* %6, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %36 [
    i32 0, label %10
  ]

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %13 = load i32, i32* @rtc_cb_ref, align 4
  %14 = call i32 @luaL_unref(i32* %11, i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @lua_type(i32* %15, i32 2)
  %17 = load i32, i32* @LUA_TFUNCTION, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @lua_type(i32* %20, i32 2)
  %22 = load i32, i32* @LUA_TLIGHTFUNCTION, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %19, %10
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @lua_pushvalue(i32* %25, i32 2)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %29 = call i32 @luaL_ref(i32* %27, i32 %28)
  store i32 %29, i32* @rtc_cb_ref, align 4
  %30 = load i32*, i32** @file_rtc_cb, align 8
  %31 = call i32 @vfs_register_rtc_cb(i32* %30)
  br label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @LUA_NOREF, align 4
  store i32 %33, i32* @rtc_cb_ref, align 4
  %34 = call i32 @vfs_register_rtc_cb(i32* null)
  br label %35

35:                                               ; preds = %32, %24
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %35
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @luaL_checkoption(i32*, i32, i8*, i8**) #2

declare dso_local i32 @luaL_unref(i32*, i32, i32) #2

declare dso_local i32 @lua_type(i32*, i32) #2

declare dso_local i32 @lua_pushvalue(i32*, i32) #2

declare dso_local i32 @luaL_ref(i32*, i32) #2

declare dso_local i32 @vfs_register_rtc_cb(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
