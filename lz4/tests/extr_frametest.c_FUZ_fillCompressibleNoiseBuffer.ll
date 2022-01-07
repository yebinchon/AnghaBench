; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_frametest.c_FUZ_fillCompressibleNoiseBuffer.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_frametest.c_FUZ_fillCompressibleNoiseBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUZ_RAND15BITS = common dso_local global i32 0, align 4
@FUZ_RANDLENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, double, i32*)* @FUZ_fillCompressibleNoiseBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FUZ_fillCompressibleNoiseBuffer(i8* %0, i64 %1, double %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i64*
  store i64* %22, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %23 = load double, double* %7, align 8
  %24 = fmul double 3.276800e+04, %23
  %25 = fptosi double %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @FUZ_rand(i32* %26)
  %28 = sext i32 %27 to i64
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %10, align 8
  %32 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 %28, i64* %32, align 8
  br label %33

33:                                               ; preds = %103, %4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %33
  %38 = load i32, i32* @FUZ_RAND15BITS, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  %42 = load i32, i32* @FUZ_RANDLENGTH, align 4
  %43 = add nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 %46, %47
  %49 = call i64 @MIN(i64 %45, i64 %48)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %14, align 8
  %53 = load i32, i32* @FUZ_RAND15BITS, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @MIN(i64 %56, i64 %57)
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %16, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %17, align 8
  br label %62

62:                                               ; preds = %66, %41
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %17, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %17, align 8
  %70 = getelementptr inbounds i64, i64* %67, i64 %68
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  %75 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %71, i64* %75, align 8
  br label %62

76:                                               ; preds = %62
  br label %103

77:                                               ; preds = %37
  %78 = load i32, i32* @FUZ_RANDLENGTH, align 4
  %79 = add nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %18, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %10, align 8
  %84 = sub i64 %82, %83
  %85 = call i64 @MIN(i64 %81, i64 %84)
  store i64 %85, i64* %19, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %19, align 8
  %88 = add i64 %86, %87
  store i64 %88, i64* %20, align 8
  br label %89

89:                                               ; preds = %93, %77
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %20, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @FUZ_rand(i32* %94)
  %96 = ashr i32 %95, 5
  %97 = sext i32 %96 to i64
  %98 = load i64*, i64** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  %101 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %101, align 8
  br label %89

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %76
  br label %33

104:                                              ; preds = %33
  ret void
}

declare dso_local i32 @FUZ_rand(i32*) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
