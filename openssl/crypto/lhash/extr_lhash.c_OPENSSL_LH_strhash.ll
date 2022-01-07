; ModuleID = '/home/carl/AnghaBench/openssl/crypto/lhash/extr_lhash.c_OPENSSL_LH_strhash.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/lhash/extr_lhash.c_OPENSSL_LH_strhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OPENSSL_LH_strhash(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %60

17:                                               ; preds = %10
  store i64 256, i64* %5, align 8
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i64
  %27 = or i64 %23, %26
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, 256
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = lshr i64 %30, 2
  %32 = load i64, i64* %6, align 8
  %33 = xor i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 15
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 %36, %38
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 32, %41
  %43 = zext i32 %42 to i64
  %44 = lshr i64 %40, %43
  %45 = or i64 %39, %44
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = and i64 %46, 4294967295
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = mul i64 %48, %49
  %51 = load i64, i64* %4, align 8
  %52 = xor i64 %51, %50
  store i64 %52, i64* %4, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  br label %18

55:                                               ; preds = %18
  %56 = load i64, i64* %4, align 8
  %57 = lshr i64 %56, 16
  %58 = load i64, i64* %4, align 8
  %59 = xor i64 %57, %58
  store i64 %59, i64* %2, align 8
  br label %60

60:                                               ; preds = %55, %15
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
