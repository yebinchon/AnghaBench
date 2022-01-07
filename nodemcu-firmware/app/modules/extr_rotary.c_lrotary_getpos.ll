; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rotary.c_lrotary_getpos.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rotary.c_lrotary_getpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rotary = common dso_local global i32 0, align 4
@PRESS = common dso_local global i32 0, align 4
@RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lrotary_getpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lrotary_getpos(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @luaL_checkinteger(i32* %6, i32 1)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @rotary, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @MOD_CHECK_ID(i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @rotary_getpos(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 1
  %20 = ashr i32 %19, 1
  %21 = call i32 @lua_pushnumber(i32* %17, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, -2147483648
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @PRESS, align 4
  %28 = call i32 @MASK(i32 %27)
  br label %32

29:                                               ; preds = %16
  %30 = load i32, i32* @RELEASE, align 4
  %31 = call i32 @MASK(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ %28, %26 ], [ %31, %29 ]
  %34 = call i32 @lua_pushnumber(i32* %22, i32 %33)
  store i32 2, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @rotary_getpos(i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
