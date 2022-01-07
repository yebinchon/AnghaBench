; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_calc_humidity.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_calc_humidity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@bme680_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calc_humidity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_humidity(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 7), align 8
  %12 = trunc i64 %11 to i32
  %13 = mul nsw i32 %12, 5
  %14 = add nsw i32 %13, 128
  %15 = sdiv i32 %14, 256
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 6), align 8
  %18 = trunc i64 %17 to i32
  %19 = mul nsw i32 %18, 16
  %20 = sub nsw i32 %16, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 5), align 8
  %23 = trunc i64 %22 to i32
  %24 = mul nsw i32 %21, %23
  %25 = sdiv i32 %24, 100
  %26 = sdiv i32 %25, 2
  %27 = sub nsw i32 %20, %26
  store i32 %27, i32* %3, align 4
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 4), align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 3), align 8
  %32 = trunc i64 %31 to i32
  %33 = mul nsw i32 %30, %32
  %34 = sdiv i32 %33, 100
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 2), align 8
  %38 = trunc i64 %37 to i32
  %39 = mul nsw i32 %36, %38
  %40 = sdiv i32 %39, 100
  %41 = mul nsw i32 %35, %40
  %42 = sdiv i32 %41, 64
  %43 = sdiv i32 %42, 100
  %44 = add nsw i32 %34, %43
  %45 = add nsw i32 %44, 16384
  %46 = mul nsw i32 %29, %45
  %47 = sdiv i32 %46, 1024
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %5, align 4
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 1), align 8
  %52 = trunc i64 %51 to i32
  %53 = mul nsw i32 %52, 128
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme680_data, i32 0, i32 0), align 8
  %57 = trunc i64 %56 to i32
  %58 = mul nsw i32 %55, %57
  %59 = sdiv i32 %58, 100
  %60 = add nsw i32 %54, %59
  %61 = sdiv i32 %60, 16
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sdiv i32 %62, 16384
  %64 = load i32, i32* %5, align 4
  %65 = sdiv i32 %64, 16384
  %66 = mul nsw i32 %63, %65
  %67 = sdiv i32 %66, 1024
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = sdiv i32 %74, 1024
  %76 = mul nsw i32 %75, 1000
  %77 = sdiv i32 %76, 4096
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 100000
  br i1 %79, label %80, label %81

80:                                               ; preds = %1
  store i32 100000, i32* %10, align 4
  br label %86

81:                                               ; preds = %1
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %81
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32, i32* %10, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
