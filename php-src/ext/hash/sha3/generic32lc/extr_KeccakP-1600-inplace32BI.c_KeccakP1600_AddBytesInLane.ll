; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/sha3/generic32lc/extr_KeccakP-1600-inplace32BI.c_KeccakP1600_AddBytesInLane.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/sha3/generic32lc/extr_KeccakP-1600-inplace32BI.c_KeccakP1600_AddBytesInLane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @KeccakP1600_AddBytesInLane(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %17, align 8
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %21 = call i32 @memset(i32* %20, i32 0, i32 8)
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @memcpy(i32* %25, i8* %26, i32 %27)
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32*, i32** %17, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul i32 %38, 2
  %40 = add i32 %39, 0
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %7, align 4
  %46 = mul i32 %45, 2
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @toBitInterleavingAndXOR(i32 %35, i32 %36, i32 %43, i32 %50, i32 %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @toBitInterleavingAndXOR(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
