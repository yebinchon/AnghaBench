; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_dht.c_dht_lapi_read11.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_dht.c_dht_lapi_read11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dht_lapi_read11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dht_lapi_read11(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @luaL_checkinteger(i32* %8, i32 1)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @dht, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @MOD_CHECK_ID(i32 %10, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @dht_read11(i32 %14)
  %16 = call i32 @lua_pushinteger(i32* %13, i32 %15)
  %17 = call double (...) @dht_getTemperature()
  store double %17, double* %4, align 8
  %18 = call double (...) @dht_getHumidity()
  store double %18, double* %5, align 8
  %19 = load double, double* %4, align 8
  %20 = load double, double* %4, align 8
  %21 = fptosi double %20 to i32
  %22 = sitofp i32 %21 to double
  %23 = fsub double %19, %22
  %24 = fmul double %23, 1.000000e+03
  %25 = fptosi double %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load double, double* %5, align 8
  %27 = load double, double* %5, align 8
  %28 = fptosi double %27 to i32
  %29 = sitofp i32 %28 to double
  %30 = fsub double %26, %29
  %31 = fmul double %30, 1.000000e+03
  %32 = fptosi double %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load double, double* %4, align 8
  %35 = fptosi double %34 to i32
  %36 = call i32 @lua_pushnumber(i32* %33, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load double, double* %5, align 8
  %39 = fptosi double %38 to i32
  %40 = call i32 @lua_pushnumber(i32* %37, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @lua_pushnumber(i32* %41, i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @lua_pushnumber(i32* %44, i32 %45)
  ret i32 5
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @dht_read11(i32) #1

declare dso_local double @dht_getTemperature(...) #1

declare dso_local double @dht_getHumidity(...) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
