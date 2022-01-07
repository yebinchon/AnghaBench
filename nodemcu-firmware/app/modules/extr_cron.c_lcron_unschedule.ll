; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_unschedule.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_unschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"cron.entry\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@cronent_list = common dso_local global i32* null, align 8
@cronent_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lcron_unschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcron_unschedule(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @luaL_checkudata(i32* %6, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @lcron_findindex(i32* %8, i32* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %17 = load i32*, i32** @cronent_list, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @luaL_unref(i32* %15, i32 %16, i32 %20)
  %22 = load i32*, i32** @cronent_list, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32*, i32** @cronent_list, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i64, i64* @cronent_count, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub i64 %29, %30
  %32 = sub i64 %31, 1
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memmove(i32* %24, i32* %28, i32 %34)
  %36 = load i64, i64* @cronent_count, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* @cronent_count, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %14, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32* @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i64 @lcron_findindex(i32*, i32*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
