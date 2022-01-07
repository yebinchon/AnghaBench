; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_color_utils.c_cu_grb2hsv.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_color_utils.c_cu_grb2hsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"greyscale value cannot be converted to hsv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cu_grb2hsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cu_grb2hsv(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @luaL_checkint(i32* %10, i32 1)
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @luaL_checkint(i32* %12, i32 2)
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @luaL_checkint(i32* %14, i32 3)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %1
  %25 = phi i1 [ false, %1 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @luaL_argcheck(i32* %16, i32 %26, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @grb2hsv(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -65536
  %34 = lshr i32 %33, 16
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 65280
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 255
  %40 = ashr i32 %39, 0
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @lua_pushnumber(i32* %41, i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @lua_pushnumber(i32* %44, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @lua_pushnumber(i32* %47, i32 %48)
  ret i32 3
}

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @grb2hsv(i32, i32, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
