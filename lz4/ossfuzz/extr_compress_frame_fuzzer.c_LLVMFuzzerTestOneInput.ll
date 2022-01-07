; ModuleID = '/home/carl/AnghaBench/lz4/ossfuzz/extr_compress_frame_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/lz4/ossfuzz/extr_compress_frame_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Incorrect regenerated size\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corruption!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32* @FUZZ_dataProducer_create(i32* %14, i64 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @FUZZ_dataProducer_preferences(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @FUZZ_dataProducer_retrieve32(i32* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @FUZZ_dataProducer_remainingBytes(i32* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @LZ4F_compressFrameBound(i64 %23, i32* %6)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @FUZZ_getRange_from_uint32(i64 %25, i32 0, i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %10, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @malloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @FUZZ_ASSERT(i8* %34)
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @FUZZ_ASSERT(i8* %36)
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @LZ4F_compressFrame(i8* %38, i64 %39, i32* %40, i64 %41, i32* %6)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @LZ4F_isError(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %2
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @FUZZ_decompressFrame(i8* %47, i64 %48, i8* %49, i64 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @FUZZ_ASSERT_MSG(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %57 = load i32*, i32** %3, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @memcmp(i32* %57, i8* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @FUZZ_ASSERT_MSG(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %46, %2
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @FUZZ_dataProducer_free(i32* %70)
  ret i32 0
}

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i32 @FUZZ_dataProducer_preferences(i32*) #1

declare dso_local i64 @FUZZ_dataProducer_retrieve32(i32*) #1

declare dso_local i64 @FUZZ_dataProducer_remainingBytes(i32*) #1

declare dso_local i64 @LZ4F_compressFrameBound(i64, i32*) #1

declare dso_local i64 @FUZZ_getRange_from_uint32(i64, i32, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @FUZZ_ASSERT(i8*) #1

declare dso_local i64 @LZ4F_compressFrame(i8*, i64, i32*, i64, i32*) #1

declare dso_local i32 @LZ4F_isError(i64) #1

declare dso_local i64 @FUZZ_decompressFrame(i8*, i64, i8*, i64) #1

declare dso_local i32 @FUZZ_ASSERT_MSG(i32, i8*) #1

declare dso_local i32 @memcmp(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FUZZ_dataProducer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
