; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_small_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_small_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LLVMFuzzerTestOneInput.kMaxSize = internal global i64 1048576, align 8
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
  %11 = call i64 @compressBound(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @LLVMFuzzerTestOneInput.kMaxSize, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %41

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** @data, align 8
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* @dataLen, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @calloc(i32 1, i64 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @calloc(i32 1, i64 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @test_deflate(i32* %29, i64 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @test_inflate(i32* %32, i64 %33, i32* %34, i64 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @free(i32* %37)
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @free(i32* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %20, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @compressBound(i64) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @test_deflate(i32*, i64) #1

declare dso_local i32 @test_inflate(i32*, i64, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
