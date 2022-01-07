; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pwm.c_lpwm_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pwm.c_lpwm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"no pwm for D0\00", align 1
@pwm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@NORMAL_PWM_DEPTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"too many pwms.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lpwm_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpwm_setup(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @luaL_checkinteger(i32* %7, i32 1)
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_error(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load i32, i32* @pwm, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MOD_CHECK_ID(i32 %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @luaL_checkinteger(i32* %19, i32 2)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ule i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @luaL_error(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %51

26:                                               ; preds = %15
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @luaL_checkinteger(i32* %27, i32 3)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @NORMAL_PWM_DEPTH, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @luaL_error(i32* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32, i32* %5, align 4
  %41 = call i8* @platform_pwm_setup(i32 %37, i32 %39, i32 %40)
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %36
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @lua_pushinteger(i32* %48, i8* %49)
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %44, %33, %23, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i8* @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i8* @platform_pwm_setup(i32, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
