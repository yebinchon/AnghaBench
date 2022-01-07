; ModuleID = '/home/carl/AnghaBench/lz4/ossfuzz/extr_decompress_frame_fuzzer.c_decompress.c'
source_filename = "/home/carl/AnghaBench/lz4/ossfuzz/extr_decompress_frame_fuzzer.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i8*, i64, i8*, i64, i32*)* @decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompress(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @LZ4F_resetDecompressionContext(i32* %17)
  %19 = load i64, i64* %15, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %8
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = call i32 @LZ4F_decompress(i32* %22, i8* %23, i64* %11, i8* %24, i64* %13, i32* %25)
  br label %35

27:                                               ; preds = %8
  %28 = load i32*, i32** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 @LZ4F_decompress_usingDict(i32* %28, i8* %29, i64* %11, i8* %30, i64* %13, i8* %31, i64 %32, i32* %33)
  br label %35

35:                                               ; preds = %27, %21
  ret void
}

declare dso_local i32 @LZ4F_resetDecompressionContext(i32*) #1

declare dso_local i32 @LZ4F_decompress(i32*, i8*, i64*, i8*, i64*, i32*) #1

declare dso_local i32 @LZ4F_decompress_usingDict(i32*, i8*, i64*, i8*, i64*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
