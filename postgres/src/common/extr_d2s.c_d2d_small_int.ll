; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_d2d_small_int.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_d2d_small_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@DOUBLE_BIAS = common dso_local global i32 0, align 4
@DOUBLE_MANTISSA_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_3__*)* @d2d_small_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d2d_small_int(i64 %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @DOUBLE_BIAS, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load i32, i32* @DOUBLE_MANTISSA_BITS, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @DOUBLE_MANTISSA_BITS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  %26 = call i32 @UINT64CONST(i32 1)
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 0, %27
  %29 = shl i32 %26, %28
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = and i64 %32, %33
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %25
  %38 = call i32 @UINT64CONST(i32 1)
  %39 = load i32, i32* @DOUBLE_MANTISSA_BITS, align 4
  %40 = shl i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %5, align 8
  %43 = or i64 %41, %42
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 0, %45
  %47 = zext i32 %46 to i64
  %48 = ashr i64 %44, %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  store i32 1, i32* %4, align 4
  br label %55

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %22, %3
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @UINT64CONST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
