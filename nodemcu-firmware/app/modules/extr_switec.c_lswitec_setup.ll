; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_switec.c_lswitec_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_switec.c_lswitec_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@switec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to setup stepper.\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Invalid pin\00", align 1
@pin_num = common dso_local global i32* null, align 8
@PLATFORM_GPIO_OUTPUT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_PULLUP = common dso_local global i32 0, align 4
@tasknumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lswitec_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lswitec_setup(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @luaL_checkinteger(i32* %9, i32 1)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @switec, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @MOD_CHECK_ID(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @switec_close(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_error(i32* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %70

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 2, %27
  %29 = call i8* @luaL_checkinteger(i32* %26, i32 %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %7, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @platform_gpio_exists(i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 2, %34
  %36 = call i32 @luaL_argcheck(i32* %31, i32 %33, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** @pin_num, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @PLATFORM_GPIO_OUTPUT, align 4
  %46 = load i32, i32* @PLATFORM_GPIO_PULLUP, align 4
  %47 = call i32 @platform_gpio_mode(i64 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %25
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %22

51:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_gettop(i32* %52)
  %54 = icmp sge i32 %53, 6
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = call i8* @luaL_checkinteger(i32* %56, i32 6)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %4, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @tasknumber, align 4
  %64 = call i64 @switec_setup(i32 %60, i32* %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @luaL_error(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i64 @switec_close(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @platform_gpio_exists(i64) #1

declare dso_local i32 @platform_gpio_mode(i64, i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @switec_setup(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
