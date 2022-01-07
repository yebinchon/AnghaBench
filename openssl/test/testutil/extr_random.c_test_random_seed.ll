; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_random.c_test_random_seed.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_random.c_test_random_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_random_state = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_random_seed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 2147483647, i32* %5, align 4
  %6 = load i64, i64* %2, align 8
  %7 = load i64*, i64** @test_random_state, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  store i64 %6, i64* %8, align 8
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 31
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load i64*, i64** @test_random_state, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  %21 = mul nsw i32 16807, %20
  %22 = urem i32 %21, 2147483647
  %23 = zext i32 %22 to i64
  %24 = load i64*, i64** @test_random_state, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 %23, i64* %27, align 8
  br label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %9

31:                                               ; preds = %9
  store i32 34, i32* %3, align 4
  br label %32

32:                                               ; preds = %37, %31
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 344
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = call i32 (...) @test_random()
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %32

40:                                               ; preds = %32
  ret void
}

declare dso_local i32 @test_random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
