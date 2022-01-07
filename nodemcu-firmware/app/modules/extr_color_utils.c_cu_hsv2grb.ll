; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_color_utils.c_cu_hsv2grb.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_color_utils.c_cu_hsv2grb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"should be a 0-360\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"should be 0-255\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cu_hsv2grb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cu_hsv2grb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @luaL_checkint(i32* %7, i32 1)
  store i32 %8, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @luaL_checkint(i32* %9, i32 2)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @luaL_checkint(i32* %11, i32 3)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp sle i32 %17, 360
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i1 [ false, %1 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @luaL_argcheck(i32* %13, i32 %21, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 255
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i1 [ false, %19 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @luaL_argcheck(i32* %23, i32 %31, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %37, 255
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i1 [ false, %29 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @luaL_argcheck(i32* %33, i32 %41, i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @hsv2grb(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 16711680
  %50 = ashr i32 %49, 16
  %51 = call i32 @lua_pushnumber(i32* %47, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 65280
  %55 = ashr i32 %54, 8
  %56 = call i32 @lua_pushnumber(i32* %52, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 255
  %60 = call i32 @lua_pushnumber(i32* %57, i32 %59)
  ret i32 3
}

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @hsv2grb(i32, i32, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
