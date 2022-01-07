; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_tmp006.c_tmp006_read_sensor_voltage.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_tmp006.c_tmp006_read_sensor_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TMP006_REG_SENSOR_VOLTAGE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @tmp006_read_sensor_voltage(i32 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i8, i8* @TMP006_REG_SENSOR_VOLTAGE, align 1
  store i8 %8, i8* %4, align 1
  %9 = bitcast [2 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %9, i8 0, i64 2, i1 false)
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %12 = call i32 @I2C_IF_ReadFrom(i32 %10, i8* %4, i32 1, i8* %11, i32 2)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store double -1.000000e+03, double* %2, align 8
  br label %38

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 65536, %31
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %16
  %35 = load i32, i32* %7, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double %36, 1.562500e-04
  store double %37, double* %2, align 8
  br label %38

38:                                               ; preds = %34, %15
  %39 = load double, double* %2, align 8
  ret double %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @I2C_IF_ReadFrom(i32, i8*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
