; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_numeric_to_scalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_numeric_to_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numeric_float8_no_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32, i32*)* @convert_numeric_to_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @convert_numeric_to_scalar(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %43 [
    i32 145, label %9
    i32 142, label %13
    i32 141, label %17
    i32 140, label %21
    i32 144, label %25
    i32 143, label %29
    i32 139, label %33
    i32 138, label %39
    i32 130, label %39
    i32 131, label %39
    i32 132, label %39
    i32 133, label %39
    i32 137, label %39
    i32 128, label %39
    i32 136, label %39
    i32 135, label %39
    i32 129, label %39
    i32 134, label %39
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @DatumGetBool(i32 %10)
  %12 = sitofp i64 %11 to double
  store double %12, double* %4, align 8
  br label %45

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @DatumGetInt16(i32 %14)
  %16 = sitofp i64 %15 to double
  store double %16, double* %4, align 8
  br label %45

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @DatumGetInt32(i32 %18)
  %20 = sitofp i64 %19 to double
  store double %20, double* %4, align 8
  br label %45

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @DatumGetInt64(i32 %22)
  %24 = sitofp i64 %23 to double
  store double %24, double* %4, align 8
  br label %45

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @DatumGetFloat4(i32 %26)
  %28 = sitofp i64 %27 to double
  store double %28, double* %4, align 8
  br label %45

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @DatumGetFloat8(i32 %30)
  %32 = sitofp i64 %31 to double
  store double %32, double* %4, align 8
  br label %45

33:                                               ; preds = %3
  %34 = load i32, i32* @numeric_float8_no_overflow, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @DirectFunctionCall1(i32 %34, i32 %35)
  %37 = call i64 @DatumGetFloat8(i32 %36)
  %38 = sitofp i64 %37 to double
  store double %38, double* %4, align 8
  br label %45

39:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @DatumGetObjectId(i32 %40)
  %42 = sitofp i64 %41 to double
  store double %42, double* %4, align 8
  br label %45

43:                                               ; preds = %3
  %44 = load i32*, i32** %7, align 8
  store i32 1, i32* %44, align 4
  store double 0.000000e+00, double* %4, align 8
  br label %45

45:                                               ; preds = %43, %39, %33, %29, %25, %21, %17, %13, %9
  %46 = load double, double* %4, align 8
  ret double %46
}

declare dso_local i64 @DatumGetBool(i32) #1

declare dso_local i64 @DatumGetInt16(i32) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i64 @DatumGetInt64(i32) #1

declare dso_local i64 @DatumGetFloat4(i32) #1

declare dso_local i64 @DatumGetFloat8(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i64 @DatumGetObjectId(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
