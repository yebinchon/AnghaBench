; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_i2c.c_i2c_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_i2c.c_i2c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c = common dso_local global i32 0, align 4
@gpio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c SDA on D0 is not supported\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to initialize i2c %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @i2c_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_setup(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_checkinteger(i32* %8, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_checkinteger(i32* %10, i32 2)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_checkinteger(i32* %12, i32 3)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @i2c, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @MOD_CHECK_ID(i32 %14, i32 %15)
  %17 = load i32, i32* @gpio, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @MOD_CHECK_ID(i32 %17, i32 %18)
  %20 = load i32, i32* @gpio, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @MOD_CHECK_ID(i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @luaL_error(i32* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @luaL_checkinteger(i32* %29, i32 4)
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 (i32*, i8*, ...) @luaL_error(i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %2, align 4
  br label %54

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @platform_i2c_setup(i32 %38, i32 %39, i32 %40, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i32*, i8*, ...) @luaL_error(i32* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %2, align 4
  br label %54

50:                                               ; preds = %37
  %51 = load i32*, i32** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @lua_pushinteger(i32* %51, i64 %52)
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %46, %34, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i64 @platform_i2c_setup(i32, i32, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
