; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pwm2.c_lpwm2_setup_pin_common.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pwm2.c_lpwm2_setup_pin_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"pwm2 : already started, stop it before setting up pins.\00", align 1
@GPIO_PIN_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid pin number\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid frequency\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid frequency resolution\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"invalid duty\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"invalid frequency fractions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @lpwm2_setup_pin_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpwm2_setup_pin_common(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i64 (...) @pwm2_is_started()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @luaL_error(i32* %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @lua_tointeger(i32* %17, i32 1)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @lua_tointeger(i32* %19, i32 2)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @lua_tointeger(i32* %21, i32 3)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @lua_tointeger(i32* %23, i32 4)
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @luaL_optinteger(i32* %25, i32 5, i32 1)
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @GPIO_PIN_NUM, align 4
  %33 = icmp sle i32 %31, %32
  br label %34

34:                                               ; preds = %30, %16
  %35 = phi i1 [ false, %16 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @luaL_argcheck2(i32* %27, i32 %36, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @luaL_argcheck2(i32* %38, i32 %41, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @luaL_argcheck2(i32* %43, i32 %46, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %34
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %52, %53
  br label %55

55:                                               ; preds = %51, %34
  %56 = phi i1 [ false, %34 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @luaL_argcheck2(i32* %48, i32 %57, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @luaL_argcheck2(i32* %59, i32 %62, i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @pwm2_setup_pin(i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  br label %80

73:                                               ; preds = %55
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @pwm2_setup_pin(i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %66
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %13
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @pwm2_is_started(...) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck2(i32*, i32, i32, i8*) #1

declare dso_local i32 @pwm2_setup_pin(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
