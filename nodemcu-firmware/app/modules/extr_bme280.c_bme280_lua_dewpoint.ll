; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_dewpoint.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_dewpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bme280_lua_dewpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_lua_dewpoint(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_isnumber(i32* %10, i32 2)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_error(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call double @luaL_checkinteger(i32* %17, i32 1)
  %19 = fdiv double %18, 1.000000e+05
  store double %19, double* %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call double @luaL_checkinteger(i32* %20, i32 2)
  %22 = fdiv double %21, 1.000000e+02
  store double %22, double* %5, align 8
  store double 2.435000e+02, double* %6, align 8
  store double 1.767000e+01, double* %7, align 8
  %23 = load double, double* %4, align 8
  %24 = call double @ln(double %23)
  %25 = load double, double* %5, align 8
  %26 = fmul double 1.767000e+01, %25
  %27 = load double, double* %5, align 8
  %28 = fadd double 2.435000e+02, %27
  %29 = fdiv double %26, %28
  %30 = fadd double %24, %29
  store double %30, double* %8, align 8
  %31 = load double, double* %8, align 8
  %32 = fmul double 2.435000e+02, %31
  %33 = load double, double* %8, align 8
  %34 = fsub double 1.767000e+01, %33
  %35 = fdiv double %32, %34
  %36 = fmul double %35, 1.000000e+02
  store double %36, double* %9, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load double, double* %9, align 8
  %39 = load double, double* %9, align 8
  %40 = fcmp olt double %39, 0.000000e+00
  br i1 %40, label %41, label %42

41:                                               ; preds = %16
  br label %46

42:                                               ; preds = %16
  %43 = load double, double* %9, align 8
  %44 = fcmp ogt double %43, 0.000000e+00
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi i32 [ -1, %41 ], [ %45, %42 ]
  %48 = sitofp i32 %47 to double
  %49 = fmul double %48, 5.000000e-01
  %50 = fadd double %38, %49
  %51 = fptosi double %50 to i32
  %52 = call i32 @lua_pushinteger(i32* %37, i32 %51)
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %46, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local double @luaL_checkinteger(i32*, i32) #1

declare dso_local double @ln(double) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
