; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_doubleBuffer.c_test_decompress.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_doubleBuffer.c_test_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_decompress(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* %5, i32** %6, align 8
  %18 = load i32, i32* @BLOCK_BYTES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = mul nuw i64 2, %19
  %22 = alloca i8, i64 %21, align 16
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @LZ4_setStreamDecode(i32* %23, i32* null, i32 0)
  br label %25

25:                                               ; preds = %74, %2
  %26 = load i32, i32* @BLOCK_BYTES, align 4
  %27 = call i32 @LZ4_COMPRESSBOUND(i32 %26)
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %10, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @read_int(i32* %31, i32* %12)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ne i64 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %12, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %25
  store i32 2, i32* %14, align 4
  br label %71

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = call i64 @read_bin(i32* %40, i8* %30, i64 %42)
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 2, i32* %14, align 4
  br label %71

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, %19
  %53 = getelementptr inbounds i8, i8* %22, i64 %52
  store i8* %53, i8** %16, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @BLOCK_BYTES, align 4
  %58 = call i32 @LZ4_decompress_safe_continue(i32* %54, i8* %30, i8* %55, i32 %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 2, i32* %14, align 4
  br label %71

62:                                               ; preds = %49
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = call i32 @write_bin(i32* %63, i8* %64, i64 %66)
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = srem i32 %69, 2
  store i32 %70, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %62, %61, %48, %38
  %72 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %14, align 4
  switch i32 %73, label %77 [
    i32 0, label %74
    i32 2, label %75
  ]

74:                                               ; preds = %71
  br label %25

75:                                               ; preds = %71
  %76 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %76)
  ret void

77:                                               ; preds = %71
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LZ4_setStreamDecode(i32*, i32*, i32) #2

declare dso_local i32 @LZ4_COMPRESSBOUND(i32) #2

declare dso_local i64 @read_int(i32*, i32*) #2

declare dso_local i64 @read_bin(i32*, i8*, i64) #2

declare dso_local i32 @LZ4_decompress_safe_continue(i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @write_bin(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
