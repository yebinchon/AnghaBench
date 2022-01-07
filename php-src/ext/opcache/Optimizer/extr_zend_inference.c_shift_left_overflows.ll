; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_shift_left_overflows.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_shift_left_overflows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZEOF_ZEND_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @shift_left_overflows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shift_left_overflows(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* @SIZEOF_ZEND_LONG, align 4
  %11 = mul nsw i32 %10, 8
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = icmp sge i64 %9, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @safe_shift_left(i64 %16, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = icmp slt i64 %18, %19
  br label %21

21:                                               ; preds = %15, %8
  %22 = phi i1 [ true, %8 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @SIZEOF_ZEND_LONG, align 4
  %27 = mul nsw i32 %26, 8
  %28 = sext i32 %27 to i64
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @safe_shift_left(i64 %31, i64 %32)
  %34 = load i64, i64* %4, align 8
  %35 = icmp sgt i64 %33, %34
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ true, %24 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @safe_shift_left(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
