; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_frametest.c_test_lz4f_decompression.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_frametest.c_test_lz4f_decompression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@o_noncontiguous = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @test_lz4f_decompression(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32* %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32*, i32** %15, align 8
  %24 = call i32 @FUZ_rand(i32* %23)
  %25 = srem i32 %24, 3
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %19, align 8
  %27 = load i64, i64* %19, align 8
  %28 = load i64, i64* @o_noncontiguous, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %9
  %31 = load i64, i64* %13, align 8
  %32 = mul i64 %31, 2
  %33 = add i64 %32, 128
  br label %36

34:                                               ; preds = %9
  %35 = load i64, i64* %13, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %33, %30 ], [ %35, %34 ]
  store i64 %37, i64* %20, align 8
  %38 = load i64, i64* %20, align 8
  %39 = call i8* @malloc(i64 %38)
  store i8* %39, i8** %22, align 8
  %40 = load i8*, i8** %22, align 8
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i8*, i8** %22, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i64, i64* %19, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i64 @test_lz4f_decompression_wBuffers(i8* %44, i64 %45, i8* %46, i64 %47, i64 %48, i8* %49, i64 %50, i32 %51, i32* %52, i32* %53, i32 %54, i32 %55)
  store i64 %56, i64* %21, align 8
  %57 = load i8*, i8** %22, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i64, i64* %21, align 8
  ret i64 %59
}

declare dso_local i32 @FUZ_rand(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @test_lz4f_decompression_wBuffers(i8*, i64, i8*, i64, i64, i8*, i64, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
