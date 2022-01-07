; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_bme680_lua_altitude.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_bme680_lua_altitude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bme680_lua_altitude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_lua_altitude(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
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
  br label %43

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @luaL_checkinteger(i32* %14, i32 1)
  store i64 %15, i64* %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @luaL_checkinteger(i32* %16, i32 2)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = sitofp i64 %18 to double
  %20 = load i64, i64* %5, align 8
  %21 = sitofp i64 %20 to double
  %22 = fdiv double %19, %21
  %23 = call double @pow(double %22, double 0x3FC85A8A8711438A) #3
  %24 = fsub double 1.000000e+00, %23
  %25 = fdiv double %24, 2.255770e-05
  %26 = fmul double %25, 1.000000e+02
  store double %26, double* %6, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load double, double* %6, align 8
  %29 = load double, double* %6, align 8
  %30 = fcmp olt double %29, 0.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  br label %36

32:                                               ; preds = %13
  %33 = load double, double* %6, align 8
  %34 = fcmp ogt double %33, 0.000000e+00
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i32 [ -1, %31 ], [ %35, %32 ]
  %38 = sitofp i32 %37 to double
  %39 = fmul double %38, 5.000000e-01
  %40 = fadd double %28, %39
  %41 = fptosi double %40 to i64
  %42 = call i32 @lua_pushinteger(i32* %27, i64 %41)
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
