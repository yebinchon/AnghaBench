; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ecstresstest.c_walk_curve.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ecstresstest.c_walk_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64)* @walk_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @walk_curve(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %8, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @EC_POINT_get_affine_coordinates(i32* %14, i32* %15, i32* %16, i32* null, i32* null)
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %3
  br label %48

21:                                               ; preds = %13
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @EC_POINT_mul(i32* %27, i32* %28, i32* null, i32* %29, i32* %30, i32* null)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @EC_POINT_get_affine_coordinates(i32* %35, i32* %36, i32* %37, i32* null, i32* null)
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34, %26
  br label %48

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %22

46:                                               ; preds = %22
  %47 = load i32*, i32** %8, align 8
  store i32* %47, i32** %4, align 8
  br label %51

48:                                               ; preds = %41, %20
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @BN_free(i32* %49)
  store i32* null, i32** %4, align 8
  br label %51

51:                                               ; preds = %48, %46
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
