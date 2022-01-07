; ModuleID = '/home/carl/AnghaBench/lz4/ossfuzz/extr_decompress_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/lz4/ossfuzz/extr_decompress_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32* @FUZZ_dataProducer_create(i32* %16, i64 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @FUZZ_dataProducer_retrieve32(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @FUZZ_dataProducer_remainingBytes(i32* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i64 @FUZZ_getRange_from_uint32(i64 %23, i32 0, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  store i64 65535, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @MAX(i64 %30, i64 65535)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @malloc(i64 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %35, %36
  %38 = call i64 @malloc(i64 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @FUZZ_ASSERT(i8* %48)
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @FUZZ_ASSERT(i8* %50)
  %52 = load i8*, i8** %12, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @memset(i8* %52, i32 0, i64 %53)
  %55 = load i8*, i8** %14, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @memcpy(i8* %55, i32* %56, i64 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @LZ4_decompress_safe_usingDict(i8* %60, i8* %61, i64 %62, i64 %63, i8* null, i64 0)
  %65 = load i32*, i32** %3, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @LZ4_decompress_safe_usingDict(i8* %66, i8* %67, i64 %68, i64 %69, i8* %70, i64 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = load i8*, i8** %11, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @LZ4_decompress_safe_usingDict(i8* %74, i8* %75, i64 %76, i64 %77, i8* %78, i64 65535)
  %80 = load i8*, i8** %14, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @LZ4_decompress_safe_usingDict(i8* %80, i8* %81, i64 %82, i64 %83, i8* %84, i64 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load i8*, i8** %11, align 8
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @LZ4_decompress_safe_usingDict(i8* %88, i8* %89, i64 %90, i64 %91, i8* %92, i64 65535)
  %94 = load i32*, i32** %3, align 8
  %95 = bitcast i32* %94 to i8*
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @LZ4_decompress_safe_partial(i8* %95, i8* %96, i64 %97, i64 %98, i64 %99)
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @FUZZ_dataProducer_free(i32* %105)
  ret i32 0
}

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i64 @FUZZ_dataProducer_retrieve32(i32*) #1

declare dso_local i64 @FUZZ_dataProducer_remainingBytes(i32*) #1

declare dso_local i64 @FUZZ_getRange_from_uint32(i64, i32, i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @FUZZ_ASSERT(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @LZ4_decompress_safe_usingDict(i8*, i8*, i64, i64, i8*, i64) #1

declare dso_local i32 @LZ4_decompress_safe_partial(i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FUZZ_dataProducer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
