; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_cts128.c_CRYPTO_nistcts128_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_cts128.c_CRYPTO_nistcts128_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64, [8 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_nistcts128_encrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i32, i8*, i8*, i32)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i8*, i32, i8*, i8*, i32)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %union.anon, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 (i8*, i8*, i32, i8*, i8*, i32)* %5, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ult i64 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %65

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = urem i64 %20, 16
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %10, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %10, align 8
  %25 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 %25(i8* %26, i8* %27, i32 %29, i8* %30, i8* %31, i32 1)
  %33 = load i64, i64* %14, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %7, align 8
  br label %65

37:                                               ; preds = %19
  %38 = load i64, i64* %10, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %9, align 8
  %44 = bitcast %union.anon* %15 to [16 x i8]*
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %44, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i32 0, i32 16)
  %47 = bitcast %union.anon* %15 to [16 x i8]*
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %47, i64 0, i64 0
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %53 = bitcast %union.anon* %15 to [16 x i8]*
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %53, i64 0, i64 0
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -16
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 %52(i8* %54, i8* %58, i32 16, i8* %59, i8* %60, i32 1)
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %14, align 8
  %64 = add i64 %62, %63
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %37, %35, %18
  %66 = load i64, i64* %7, align 8
  ret i64 %66
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
