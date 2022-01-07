; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_cts128.c_CRYPTO_cts128_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_cts128.c_CRYPTO_cts128_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64, [8 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_cts128_encrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i32, i8*, i8*, i32)* %5) #0 {
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
  %17 = icmp ule i64 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %66

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = urem i64 %20, 16
  store i64 %21, i64* %14, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 16, i64* %14, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %10, align 8
  %28 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 %28(i8* %29, i8* %30, i32 %32, i8* %33, i8* %34, i32 1)
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %41, i8** %9, align 8
  %42 = bitcast %union.anon* %15 to [16 x i8]*
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %42, i64 0, i64 0
  %44 = call i32 @memset(i8* %43, i32 0, i32 16)
  %45 = bitcast %union.anon* %15 to [16 x i8]*
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i64 0, i64 0
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @memcpy(i8* %46, i8* %47, i64 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 -16
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @memcpy(i8* %50, i8* %52, i64 %53)
  %55 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %56 = bitcast %union.anon* %15 to [16 x i8]*
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i64 0, i64 0
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -16
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 %55(i8* %57, i8* %59, i32 16, i8* %60, i8* %61, i32 1)
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %63, %64
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %24, %18
  %67 = load i64, i64* %7, align 8
  ret i64 %67
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
