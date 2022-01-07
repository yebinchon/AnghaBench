; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_doubleBuffer.c_test_compress.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_doubleBuffer.c_test_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_compress(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* %5, i32** %6, align 8
  %16 = load i32, i32* @BLOCK_BYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = mul nuw i64 2, %17
  %20 = alloca i8, i64 %19, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @LZ4_initStream(i32* %21, i32 4)
  br label %23

23:                                               ; preds = %61, %2
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, %17
  %27 = getelementptr inbounds i8, i8* %20, i64 %26
  store i8* %27, i8** %10, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* @BLOCK_BYTES, align 4
  %31 = call i64 @read_bin(i32* %28, i8* %29, i32 %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %65

36:                                               ; preds = %23
  %37 = load i32, i32* @BLOCK_BYTES, align 4
  %38 = call i32 @LZ4_COMPRESSBOUND(i32 %37)
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %12, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %13, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = trunc i64 %39 to i32
  %46 = call i32 @LZ4_compress_fast_continue(i32* %42, i8* %43, i8* %41, i32 %44, i32 %45, i32 1)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 2, i32* %15, align 4
  br label %58

50:                                               ; preds = %36
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @write_int(i32* %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @write_bin(i32* %54, i8* %41, i64 %56)
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %50, %49
  %59 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %15, align 4
  switch i32 %60, label %69 [
    i32 0, label %61
    i32 2, label %65
  ]

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = srem i32 %63, 2
  store i32 %64, i32* %9, align 4
  br label %23

65:                                               ; preds = %58, %35
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @write_int(i32* %66, i32 0)
  %68 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void

69:                                               ; preds = %58
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LZ4_initStream(i32*, i32) #2

declare dso_local i64 @read_bin(i32*, i8*, i32) #2

declare dso_local i32 @LZ4_COMPRESSBOUND(i32) #2

declare dso_local i32 @LZ4_compress_fast_continue(i32*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @write_int(i32*, i32) #2

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
