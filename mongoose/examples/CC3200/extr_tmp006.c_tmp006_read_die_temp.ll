; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_tmp006.c_tmp006_read_die_temp.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_tmp006.c_tmp006_read_die_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TMP006_REG_DIE_TEMP = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @tmp006_read_die_temp(i32 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i8, i8* @TMP006_REG_DIE_TEMP, align 1
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
  br label %39

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 6
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = ashr i32 %23, 2
  %25 = or i32 %20, %24
  store i32 %25, i32* %7, align 4
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 16384, %32
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %16
  %36 = load i32, i32* %7, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 3.200000e+01
  store double %38, double* %2, align 8
  br label %39

39:                                               ; preds = %35, %15
  %40 = load double, double* %2, align 8
  ret double %40
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
