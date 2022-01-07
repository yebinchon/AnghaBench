; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_siphash24.c_test_vectors.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_siphash24.c_test_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vectors = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"test vector failed for %d bytes\0A\00", align 1
@MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_vectors() #0 {
  %1 = alloca [64 x i64], align 16
  %2 = alloca [8 x i64], align 16
  %3 = alloca [16 x i64], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 %13
  store i64 %11, i64* %14, align 8
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %6

18:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [64 x i64], [64 x i64]* %1, i64 0, i64 %26
  store i64 %24, i64* %27, align 8
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0
  %29 = getelementptr inbounds [64 x i64], [64 x i64]* %1, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 0
  %32 = call i32 @crypto_auth(i64* %28, i64* %29, i32 %30, i64* %31)
  %33 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0
  %34 = load i32*, i32** @vectors, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @memcmp(i64* %33, i32 %38, i32 8)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @crypto_auth(i64*, i64*, i32, i64*) #1

declare dso_local i64 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
