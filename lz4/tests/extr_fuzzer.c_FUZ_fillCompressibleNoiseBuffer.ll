; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_fuzzer.c_FUZ_fillCompressibleNoiseBuffer.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_fuzzer.c_FUZ_fillCompressibleNoiseBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUZ_RAND15BITS = common dso_local global i64 0, align 8
@FUZ_RANDLENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, double, i64*)* @FUZ_fillCompressibleNoiseBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FUZ_fillCompressibleNoiseBuffer(i8* %0, i64 %1, double %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  store i64* %3, i64** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %20 = load double, double* %7, align 8
  %21 = fmul double 3.276800e+04, %20
  %22 = fptosi double %21 to i64
  store i64 %22, i64* %11, align 8
  br label %23

23:                                               ; preds = %26, %4
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, 20
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i64*, i64** %8, align 8
  %28 = call i32 @FUZ_rand(i64* %27)
  %29 = sext i32 %28 to i64
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %10, align 8
  %33 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 %29, i64* %33, align 8
  br label %23

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %100, %34
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %101

39:                                               ; preds = %35
  %40 = load i64, i64* @FUZ_RAND15BITS, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %39
  %44 = load i64, i64* @FUZ_RANDLENGTH, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @MIN(i64 %48, i64 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* @FUZ_RAND15BITS, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %15, align 8
  br label %53

53:                                               ; preds = %57, %43
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* %15, align 8
  %59 = lshr i64 %58, 1
  store i64 %59, i64* %15, align 8
  br label %53

60:                                               ; preds = %53
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %15, align 8
  %63 = sub i64 %61, %62
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %68, %60
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %14, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %14, align 8
  %72 = getelementptr inbounds i64, i64* %69, i64 %70
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  %77 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %73, i64* %77, align 8
  br label %64

78:                                               ; preds = %64
  br label %100

79:                                               ; preds = %39
  %80 = load i64, i64* @FUZ_RANDLENGTH, align 8
  store i64 %80, i64* %16, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %16, align 8
  %83 = add i64 %81, %82
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @MIN(i64 %83, i64 %84)
  store i64 %85, i64* %17, align 8
  br label %86

86:                                               ; preds = %90, %79
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %17, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i64*, i64** %8, align 8
  %92 = call i32 @FUZ_rand(i64* %91)
  %93 = ashr i32 %92, 5
  %94 = sext i32 %93 to i64
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %10, align 8
  %98 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %94, i64* %98, align 8
  br label %86

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %78
  br label %35

101:                                              ; preds = %35
  ret void
}

declare dso_local i32 @FUZ_rand(i64*) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
