; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_baro.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_baro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BME280_REGISTER_PRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bme280_lua_baro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_lua_baro(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @BME280_REGISTER_PRESS, align 4
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %10 = call i32 @r8u_n(i32 %8, i32 6, i32* %9)
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 16
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 4
  %15 = load i32, i32* %14, align 16
  %16 = shl i32 %15, 8
  %17 = or i32 %13, %16
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 5
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %17, %19
  %21 = ashr i32 %20, 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @bme280_compensate_T(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = shl i32 %25, 16
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %26, %29
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %30, %32
  %34 = ashr i32 %33, 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 524288
  br i1 %36, label %46, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 1048575
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 524288
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 1048575
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40, %37, %1
  store i32 0, i32* %2, align 4
  br label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @bme280_compensate_P(i32 %49)
  %51 = call i32 @lua_pushinteger(i32* %48, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @lua_pushinteger(i32* %52, i32 %53)
  store i32 2, i32* %2, align 4
  br label %55

55:                                               ; preds = %47, %46
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @r8u_n(i32, i32, i32*) #1

declare dso_local i32 @bme280_compensate_T(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @bme280_compensate_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
