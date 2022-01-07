; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_ringBuffer.c_compare.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_ringBuffer.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [65536 x i8], align 16
  %7 = alloca [65536 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %39, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 0, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @fread(i8* %14, i32 1, i32 65536, i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @fread(i8* %17, i32 1, i32 65536, i32* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %5, align 4
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 0, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %13
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 0, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %13
  br label %40

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 0, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %36 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @memcmp(i8* %35, i8* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %31
  br label %10

40:                                               ; preds = %30, %10
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
