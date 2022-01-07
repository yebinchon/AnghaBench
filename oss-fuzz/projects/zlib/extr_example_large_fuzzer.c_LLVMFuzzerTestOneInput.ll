; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_large_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_large_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LLVMFuzzerTestOneInput.kMaxSize = internal global i64 524288, align 8
@data = common dso_local global i32* null, align 8
@dataLen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = mul i64 3, %10
  %12 = add i64 100, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @LLVMFuzzerTestOneInput.kMaxSize, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %44

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  store i32* %22, i32** @data, align 8
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* @dataLen, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @calloc(i32 1, i64 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @calloc(i32 1, i64 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @test_large_deflate(i32* %30, i64 %31, i32* %32, i64 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @test_large_inflate(i32* %35, i64 %36, i32* %37, i64 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @free(i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %21, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @test_large_deflate(i32*, i64, i32*, i64) #1

declare dso_local i32 @test_large_inflate(i32*, i64, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
