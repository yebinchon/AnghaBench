; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_random.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @node_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_random(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  switch i32 %7, label %21 [
    i32 0, label %8
    i32 1, label %13
    i32 2, label %16
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 (...) @os_random()
  %11 = sdiv i32 %10, 0
  %12 = call i32 @lua_pushnumber(i32* %9, i32 %11)
  store i32 1, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_checkint(i32* %14, i32 1)
  store i32 %15, i32* %4, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_checkint(i32* %17, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_checkint(i32* %19, i32 2)
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_error(i32* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %16, %13
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @luaL_argcheck(i32* %25, i32 %29, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @node_random_range(i32 %32, i32 %33)
  %35 = call i32 @lua_pushnumber(i32* %31, i32 %34)
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %24, %21, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @os_random(...) #1

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @node_random_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
