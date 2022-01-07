; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/sha3/generic32lc/extr_KeccakP-1600-inplace32BI.c_KeccakP1600_OverwriteWithZeroes.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/sha3/generic32lc/extr_KeccakP-1600-inplace32BI.c_KeccakP1600_OverwriteWithZeroes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @KeccakP1600_OverwriteWithZeroes(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = udiv i32 %11, 8
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load i64*, i64** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = mul i32 %16, 2
  %18 = add i32 %17, 0
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %15, i64 %19
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = mul i32 %22, 2
  %24 = add i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %21, i64 %25
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* %4, align 4
  %32 = urem i32 %31, 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = udiv i32 %36, 8
  %38 = load i32, i32* %4, align 4
  %39 = urem i32 %38, 8
  %40 = call i32 @KeccakP1600_SetBytesInLaneToZero(i8* %35, i32 %37, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %34, %30
  ret void
}

declare dso_local i32 @KeccakP1600_SetBytesInLaneToZero(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
