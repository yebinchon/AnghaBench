; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_compensate_H.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_compensate_H.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@bme280_t_fine = common dso_local global i32 0, align 4
@bme280_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bme280_compensate_H to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_compensate_H(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @bme280_t_fine, align 4
  %5 = sub nsw i32 %4, 76800
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = shl i32 %6, 14
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 5), align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 20
  %11 = sub nsw i32 %7, %10
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 4), align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sub nsw i32 %11, %15
  %17 = add nsw i32 %16, 16384
  %18 = ashr i32 %17, 15
  %19 = load i32, i32* %3, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 3), align 8
  %21 = trunc i64 %20 to i32
  %22 = mul nsw i32 %19, %21
  %23 = ashr i32 %22, 10
  %24 = load i32, i32* %3, align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 2), align 8
  %26 = trunc i64 %25 to i32
  %27 = mul nsw i32 %24, %26
  %28 = ashr i32 %27, 11
  %29 = add nsw i32 %28, 32768
  %30 = mul nsw i32 %23, %29
  %31 = ashr i32 %30, 10
  %32 = add nsw i32 %31, 2097152
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 1), align 8
  %34 = trunc i64 %33 to i32
  %35 = mul nsw i32 %32, %34
  %36 = add nsw i32 %35, 8192
  %37 = ashr i32 %36, 14
  %38 = mul nsw i32 %18, %37
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = ashr i32 %40, 15
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 15
  %44 = mul nsw i32 %41, %43
  %45 = ashr i32 %44, 7
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 0), align 8
  %47 = trunc i64 %46 to i32
  %48 = mul nsw i32 %45, %47
  %49 = ashr i32 %48, 4
  %50 = sub nsw i32 %39, %49
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %1
  br label %56

54:                                               ; preds = %1
  %55 = load i32, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 0, %53 ], [ %55, %54 ]
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp sgt i32 %58, 419430400
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ 419430400, %60 ], [ %62, %61 ]
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = ashr i32 %65, 12
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = mul nsw i32 %67, 1000
  %69 = ashr i32 %68, 10
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
