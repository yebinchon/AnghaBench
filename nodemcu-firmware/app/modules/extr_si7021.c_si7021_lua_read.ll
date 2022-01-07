; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_si7021.c_si7021_lua_read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_si7021.c_si7021_lua_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SI7021_CMD_MEASURE_RH_HOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"crc error\00", align 1
@SI7021_CMD_READ_PREV_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @si7021_lua_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si7021_lua_read(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @SI7021_CMD_MEASURE_RH_HOLD, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %12 = call i32 @read_reg(i32 %10, i32* %11, i32 3)
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %16 = call i32 @si7021_crc8(i32 0, i32* %15, i32 2)
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_error(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %73

21:                                               ; preds = %1
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %24, %26
  %28 = sitofp i32 %27 to double
  store double %28, double* %5, align 8
  %29 = load double, double* %5, align 8
  %30 = fmul double %29, 1.250000e+02
  %31 = fdiv double %30, 6.553600e+04
  %32 = fsub double %31, 6.000000e+00
  store double %32, double* %5, align 8
  %33 = load double, double* %5, align 8
  %34 = load double, double* %5, align 8
  %35 = fptosi double %34 to i32
  %36 = sitofp i32 %35 to double
  %37 = fsub double %33, %36
  %38 = fmul double %37, 1.000000e+03
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @SI7021_CMD_READ_PREV_TEMP, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %42 = call i32 @read_reg(i32 %40, i32* %41, i32 2)
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %45, %47
  %49 = sitofp i32 %48 to double
  store double %49, double* %8, align 8
  %50 = load double, double* %8, align 8
  %51 = fmul double %50, 1.757200e+02
  %52 = fdiv double %51, 6.553600e+04
  %53 = fsub double %52, 4.685000e+01
  store double %53, double* %8, align 8
  %54 = load double, double* %8, align 8
  %55 = load double, double* %8, align 8
  %56 = fptosi double %55 to i32
  %57 = sitofp i32 %56 to double
  %58 = fsub double %54, %57
  %59 = fmul double %58, 1.000000e+03
  %60 = fptosi double %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load double, double* %5, align 8
  %63 = call i32 @lua_pushnumber(i32* %61, double %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load double, double* %8, align 8
  %66 = call i32 @lua_pushnumber(i32* %64, double %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @lua_pushinteger(i32* %67, i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @lua_pushinteger(i32* %70, i32 %71)
  store i32 4, i32* %2, align 4
  br label %73

73:                                               ; preds = %21, %18
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @read_reg(i32, i32*, i32) #1

declare dso_local i32 @si7021_crc8(i32, i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
