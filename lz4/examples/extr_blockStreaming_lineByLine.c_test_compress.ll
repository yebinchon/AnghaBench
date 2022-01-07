; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_lineByLine.c_test_compress.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_lineByLine.c_test_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i64)* @test_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_compress(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = call i32* (...) @LZ4_createStream()
  store i32* %17, i32** %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @LZ4_COMPRESSBOUND(i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @malloc(i64 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @malloc(i64 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %69, %4
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fgets(i8* %31, i32 %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %70

38:                                               ; preds = %26
  %39 = load i8*, i8** %14, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @LZ4_compress_fast_continue(i32* %42, i8* %43, i8* %44, i32 %45, i64 %46, i32 1)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %70

51:                                               ; preds = %38
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @write_uint16(i32* %52, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @write_bin(i32* %55, i8* %56, i32 %57)
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %64, %65
  %67 = icmp uge i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %51
  br label %26

70:                                               ; preds = %50, %37
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @write_uint16(i32* %71, i32 0)
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @LZ4_freeStream(i32* %77)
  ret void
}

declare dso_local i32* @LZ4_createStream(...) #1

declare dso_local i64 @LZ4_COMPRESSBOUND(i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @LZ4_compress_fast_continue(i32*, i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @write_uint16(i32*, i32) #1

declare dso_local i32 @write_bin(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @LZ4_freeStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
