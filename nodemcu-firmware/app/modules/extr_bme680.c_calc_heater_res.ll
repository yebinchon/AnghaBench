; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_calc_heater_res.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_calc_heater_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@amb_temp = common dso_local global i64 0, align 8
@bme680_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @calc_heater_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_heater_res(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 200
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 200, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = icmp sgt i32 %14, 400
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 400, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i64, i64* @amb_temp, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 0), align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %22, 1000
  %24 = mul nsw i32 %23, 256
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 1), align 4
  %26 = add nsw i32 %25, 784
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 2), align 4
  %28 = add nsw i32 %27, 154009
  %29 = load i32, i32* %2, align 4
  %30 = mul nsw i32 %28, %29
  %31 = mul nsw i32 %30, 5
  %32 = sdiv i32 %31, 100
  %33 = add nsw i32 %32, 3276800
  %34 = sdiv i32 %33, 10
  %35 = mul nsw i32 %26, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %37, 2
  %39 = add nsw i32 %36, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 3), align 4
  %42 = add nsw i32 %41, 4
  %43 = sdiv i32 %40, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 4), align 4
  %45 = mul nsw i32 131, %44
  %46 = add nsw i32 %45, 65536
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sdiv i32 %47, %48
  %50 = sub nsw i32 %49, 250
  %51 = mul nsw i32 %50, 34
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 50
  %54 = sdiv i32 %53, 100
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
