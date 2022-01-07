; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_dictionaryRandomAccess.c_compare.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_dictionaryRandomAccess.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %45, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 0, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @MIN(i32 %18, i32 4096)
  %20 = call i64 @read_bin(i32* %16, i8* %17, i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @MIN(i32 %23, i32 4096)
  %25 = call i64 @read_bin(i32* %21, i8* %22, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %7, align 4
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 0, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %15
  %34 = load i64, i64* %11, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %15
  br label %51

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 0, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @memcmp(i8* %41, i8* %42, i64 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  br label %12

51:                                               ; preds = %36, %12
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @read_bin(i32*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
