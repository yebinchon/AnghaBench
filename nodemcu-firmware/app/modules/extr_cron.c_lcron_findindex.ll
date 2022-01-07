; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_findindex.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_findindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cronent_count = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@cronent_list = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @lcron_findindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lcron_findindex(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @cronent_count, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %15 = load i32*, i32** @cronent_list, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lua_rawgeti(i32* %13, i32 %14, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @lua_touserdata(i32* %20, i32 -1)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @lua_pop(i32* %22, i32 1)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %32

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %8

32:                                               ; preds = %27, %8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @cronent_count, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i64 -1, i64* %3, align 8
  br label %39

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
