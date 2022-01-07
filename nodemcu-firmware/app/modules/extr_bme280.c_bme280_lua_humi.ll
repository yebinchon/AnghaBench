; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_humi.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_humi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bme280_isbme = common dso_local global i32 0, align 4
@BME280_REGISTER_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bme280_lua_humi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_lua_humi(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @bme280_isbme, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  %12 = load i32, i32* @BME280_REGISTER_TEMP, align 4
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %14 = call i32 @r8u_n(i32 %12, i32 5, i32* %13)
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = shl i32 %16, 16
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = or i32 %17, %20
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %21, %23
  %25 = ashr i32 %24, 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @bme280_compensate_T(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %32 = load i32, i32* %31, align 16
  %33 = or i32 %30, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 524288
  br i1 %35, label %45, label %36

36:                                               ; preds = %11
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 1048575
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 32768
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 65535
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %36, %11
  store i32 0, i32* %2, align 4
  br label %54

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @bme280_compensate_H(i32 %48)
  %50 = call i32 @lua_pushinteger(i32* %47, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @lua_pushinteger(i32* %51, i32 %52)
  store i32 2, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %45, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @r8u_n(i32, i32, i32*) #1

declare dso_local i32 @bme280_compensate_T(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @bme280_compensate_H(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
