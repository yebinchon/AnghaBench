; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_compensate_P.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_compensate_P.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@bme280_t_fine = common dso_local global i64 0, align 8
@bme280_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bme280_compensate_P to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_compensate_P(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @bme280_t_fine, align 8
  %8 = trunc i64 %7 to i32
  %9 = sub nsw i32 %8, 128000
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 8), align 8
  %14 = trunc i64 %13 to i32
  %15 = mul nsw i32 %12, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 7), align 8
  %19 = trunc i64 %18 to i32
  %20 = mul nsw i32 %17, %19
  %21 = shl i32 %20, 17
  %22 = add nsw i32 %16, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 6), align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 35
  %27 = add nsw i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 5), align 8
  %32 = trunc i64 %31 to i32
  %33 = mul nsw i32 %30, %32
  %34 = ashr i32 %33, 8
  %35 = load i32, i32* %4, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 4), align 8
  %37 = trunc i64 %36 to i32
  %38 = mul nsw i32 %35, %37
  %39 = shl i32 %38, 12
  %40 = add nsw i32 %34, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 undef, %41
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 3), align 8
  %44 = trunc i64 %43 to i32
  %45 = mul nsw i32 %42, %44
  %46 = ashr i32 %45, 33
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 1048576, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 %53, 31
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  %57 = mul nsw i32 %56, 3125
  %58 = load i32, i32* %4, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 2), align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %62, 13
  %64 = mul nsw i32 %61, %63
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 13
  %67 = mul nsw i32 %64, %66
  %68 = ashr i32 %67, 25
  store i32 %68, i32* %4, align 4
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 1), align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %70, %71
  %73 = ashr i32 %72, 19
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %76, %77
  %79 = ashr i32 %78, 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 0), align 8
  %81 = trunc i64 %80 to i32
  %82 = shl i32 %81, 4
  %83 = add nsw i32 %79, %82
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = mul nsw i32 %84, 10
  %86 = ashr i32 %85, 8
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %50, %49
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
