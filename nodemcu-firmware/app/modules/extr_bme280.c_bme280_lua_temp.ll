; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_temp.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BME280_REGISTER_TEMP = common dso_local global i32 0, align 4
@bme280_t_fine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bme280_lua_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_lua_temp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @BME280_REGISTER_TEMP, align 4
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %8 = call i32 @r8u_n(i32 %6, i32 3, i32* %7)
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 16
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 8
  %15 = or i32 %11, %14
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %15, %17
  %19 = ashr i32 %18, 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 524288
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 1048575
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %34

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bme280_compensate_T(i32 %28)
  %30 = call i32 @lua_pushinteger(i32* %27, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @bme280_t_fine, align 4
  %33 = call i32 @lua_pushinteger(i32* %31, i32 %32)
  store i32 2, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @r8u_n(i32, i32, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @bme280_compensate_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
