; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_apa102.c_apa102_write.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_apa102.c_apa102_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gpio = common dso_local global i32 0, align 4
@pin_num = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [80 x i8] c"The supplied buffer is too long, and might cause the callback watchdog to bark.\00", align 1
@PLATFORM_GPIO_OUTPUT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_FLOAT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_HIGH = common dso_local global i32 0, align 4
@PLATFORM_GPIO_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @apa102_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apa102_write(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @luaL_checkinteger(i32* %11, i32 1)
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* @gpio, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @MOD_CHECK_ID(i32 %13, i64 %14)
  %16 = load i32*, i32** @pin_num, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @luaL_checkinteger(i32* %20, i32 2)
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* @gpio, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @MOD_CHECK_ID(i32 %22, i64 %23)
  %25 = load i32*, i32** @pin_num, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @luaL_checklstring(i32* %29, i32 3, i64* %8)
  store i8* %30, i8** %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = udiv i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 100000
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @luaL_error(i32* %37, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %2, align 4
  br label %60

39:                                               ; preds = %1
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @PLATFORM_GPIO_OUTPUT, align 4
  %42 = load i32, i32* @PLATFORM_GPIO_FLOAT, align 4
  %43 = call i32 @platform_gpio_mode(i64 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PLATFORM_GPIO_HIGH, align 4
  %46 = call i32 @GPIO_OUTPUT_SET(i32 %44, i32 %45)
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @PLATFORM_GPIO_OUTPUT, align 4
  %49 = load i32, i32* @PLATFORM_GPIO_FLOAT, align 4
  %50 = call i32 @platform_gpio_mode(i64 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PLATFORM_GPIO_LOW, align 4
  %53 = call i32 @GPIO_OUTPUT_SET(i32 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @apa102_send_buffer(i32 %54, i32 %55, i32* %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %39, %36
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i64) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @platform_gpio_mode(i64, i32, i32) #1

declare dso_local i32 @GPIO_OUTPUT_SET(i32, i32) #1

declare dso_local i32 @apa102_send_buffer(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
