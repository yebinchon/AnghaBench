; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_rtc_cb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_rtc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VFS_RES_ERR = common dso_local global i32 0, align 4
@rtc_cb_ref = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i64 0, align 8
@VFS_RES_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_rtc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_rtc_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @VFS_RES_ERR, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @rtc_cb_ref, align 8
  %7 = load i64, i64* @LUA_NOREF, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = call i32* (...) @lua_getstate()
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %13 = load i64, i64* @rtc_cb_ref, align 8
  %14 = call i32 @lua_rawgeti(i32* %11, i32 %12, i64 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @lua_call(i32* %15, i32 0, i32 1)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @lua_gettop(i32* %18)
  %20 = call i64 @lua_type(i32* %17, i32 %19)
  %21 = load i64, i64* @LUA_TTABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %9
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @table2tm(i32* %24, i32* %25)
  %27 = load i32, i32* @VFS_RES_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %9
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @lua_pop(i32* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @table2tm(i32*, i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
