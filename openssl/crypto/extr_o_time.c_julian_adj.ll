; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_o_time.c_julian_adj.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_o_time.c_julian_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@SECS_PER_DAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i32, i64, i64*, i32*)* @julian_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @julian_adj(%struct.tm* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @SECS_PER_DAY, align 8
  %20 = sdiv i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @SECS_PER_DAY, align 8
  %26 = mul nsw i64 %24, %25
  %27 = sub nsw i64 %22, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %13, align 4
  %32 = load %struct.tm*, %struct.tm** %7, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 3600
  %36 = load %struct.tm*, %struct.tm** %7, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 60
  %40 = add nsw i32 %35, %39
  %41 = sext i32 %40 to i64
  %42 = load %struct.tm*, %struct.tm** %7, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @SECS_PER_DAY, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %5
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load i64, i64* @SECS_PER_DAY, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %12, align 4
  br label %74

62:                                               ; preds = %5
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %13, align 4
  %68 = load i64, i64* @SECS_PER_DAY, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %65, %62
  br label %74

74:                                               ; preds = %73, %54
  %75 = load %struct.tm*, %struct.tm** %7, align 8
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1900
  store i32 %78, i32* %15, align 4
  %79 = load %struct.tm*, %struct.tm** %7, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  %83 = load %struct.tm*, %struct.tm** %7, align 8
  %84 = getelementptr inbounds %struct.tm, %struct.tm* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = call i64 @date_to_julian(i32 %86, i32 %87, i32 %88)
  store i64 %89, i64* %14, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %14, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %14, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %102

97:                                               ; preds = %74
  %98 = load i64, i64* %14, align 8
  %99 = load i64*, i64** %10, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  store i32 1, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %96
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i64 @date_to_julian(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
