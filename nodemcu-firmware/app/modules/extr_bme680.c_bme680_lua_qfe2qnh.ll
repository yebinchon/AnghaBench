; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_bme680_lua_qfe2qnh.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_bme680_lua_qfe2qnh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bme680_lua_qfe2qnh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_lua_qfe2qnh(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_isnumber(i32* %7, i32 2)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_error(i32* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_checkinteger(i32* %14, i32 1)
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaL_checkinteger(i32* %16, i32 2)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call double @bme280_qfe2qnh(i32 %18, i32 %19)
  store double %20, double* %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load double, double* %6, align 8
  %23 = fadd double %22, 5.000000e-01
  %24 = fptosi double %23 to i32
  %25 = call i32 @lua_pushinteger(i32* %21, i32 %24)
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local double @bme280_qfe2qnh(i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
