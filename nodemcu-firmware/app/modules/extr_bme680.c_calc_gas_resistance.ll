; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_calc_gas_resistance.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_calc_gas_resistance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@bme680_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@lookupTable1 = common dso_local global i64* null, align 8
@lookupTable2 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @calc_gas_resistance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_gas_resistance(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 0), align 8
  %10 = trunc i64 %9 to i32
  %11 = mul nsw i32 5, %10
  %12 = add nsw i32 1340, %11
  %13 = load i64*, i64** @lookupTable1, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = mul nsw i32 %12, %17
  %19 = sdiv i32 %18, 65536
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i32
  %22 = mul nsw i32 %21, 32768
  %23 = sub nsw i32 %22, 16777216
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i64*, i64** @lookupTable2, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sdiv i32 %32, 512
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %35, 2
  %37 = add nsw i32 %34, %36
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %37, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
