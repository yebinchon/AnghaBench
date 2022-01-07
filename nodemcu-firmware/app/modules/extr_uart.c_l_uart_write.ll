; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_uart.c_l_uart_write.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_uart.c_l_uart_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uart = common dso_local global i32 0, align 4
@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@LUA_TSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @l_uart_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_uart_write(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_gettop(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_checkinteger(i32* %12, i32 1)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @uart, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @MOD_CHECK_ID(i32 %14, i32 %15)
  store i32 2, i32* %9, align 4
  br label %17

17:                                               ; preds = %65, %1
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @lua_type(i32* %22, i32 %23)
  %25 = load i64, i64* @LUA_TNUMBER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @lua_tointeger(i32* %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ugt i64 %31, 255
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @luaL_error(i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %2, align 4
  br label %69

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i8
  %40 = call i32 @platform_uart_send(i32 %37, i8 signext %39)
  br label %64

41:                                               ; preds = %21
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @LUA_TSTRING, align 4
  %45 = call i32 @luaL_checktype(i32* %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i8* @lua_tolstring(i32* %46, i32 %47, i64* %6)
  store i8* %48, i8** %5, align 8
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %60, %41
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @platform_uart_send(i32 %54, i8 signext %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %49

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %17

68:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %33
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @platform_uart_send(i32, i8 signext) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
