; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_f2s.c_f2d_small_int.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_f2s.c_f2d_small_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@FLOAT_BIAS = common dso_local global i32 0, align 4
@FLOAT_MANTISSA_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_3__*)* @f2d_small_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2d_small_int(i64 %0, i64 %1, %struct.TYPE_3__* %2) #0 {
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
  %14 = load i32, i32* @FLOAT_BIAS, align 4
  %15 = sub i32 %13, %14
  %16 = load i32, i32* @FLOAT_MANTISSA_BITS, align 4
  %17 = sub i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @FLOAT_MANTISSA_BITS, align 4
  %20 = sub i32 0, %19
  %21 = icmp uge i32 %18, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ule i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = sub i32 0, %26
  %28 = shl i32 1, %27
  %29 = sub i32 %28, 1
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = and i64 %31, %32
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %25
  %37 = load i32, i32* @FLOAT_MANTISSA_BITS, align 4
  %38 = shl i32 1, %37
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %5, align 8
  %41 = or i64 %39, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sub i32 0, %43
  %45 = zext i32 %44 to i64
  %46 = ashr i64 %42, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  store i32 1, i32* %4, align 4
  br label %53

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51, %22, %3
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
