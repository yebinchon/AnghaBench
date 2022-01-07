; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_cts128.c_CRYPTO_nistcts128_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_cts128.c_CRYPTO_nistcts128_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64, [24 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_nistcts128_decrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i32, i8*, i8*, i32)* %5) #0 {
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
  br label %96

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = urem i64 %20, 16
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 %25(i8* %26, i8* %27, i32 %29, i8* %30, i8* %31, i32 0)
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %7, align 8
  br label %96

34:                                               ; preds = %19
  %35 = load i64, i64* %14, align 8
  %36 = add i64 16, %35
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 %42(i8* %43, i8* %44, i32 %46, i8* %47, i8* %48, i32 0)
  %50 = load i64, i64* %10, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %41, %34
  %57 = bitcast %union.anon* %15 to [32 x i8]*
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %57, i64 0, i64 0
  %59 = call i32 @memset(i8* %58, i32 0, i32 32)
  %60 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %14, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = bitcast %union.anon* %15 to [32 x i8]*
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %64, i64 0, i64 0
  %66 = load i8*, i8** %11, align 8
  %67 = bitcast %union.anon* %15 to [32 x i8]*
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %67, i64 0, i64 0
  %69 = getelementptr inbounds i8, i8* %68, i64 16
  %70 = call i32 %60(i8* %63, i8* %65, i32 16, i8* %66, i8* %69, i32 0)
  %71 = bitcast %union.anon* %15 to [32 x i8]*
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %71, i64 0, i64 0
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %14, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memcpy(i8* %72, i8* %73, i32 %75)
  %77 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %78 = bitcast %union.anon* %15 to [32 x i8]*
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %78, i64 0, i64 0
  %80 = bitcast %union.anon* %15 to [32 x i8]*
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %80, i64 0, i64 0
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 %77(i8* %79, i8* %81, i32 32, i8* %82, i8* %83, i32 0)
  %85 = load i8*, i8** %9, align 8
  %86 = bitcast %union.anon* %15 to [32 x i8]*
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %86, i64 0, i64 0
  %88 = load i64, i64* %14, align 8
  %89 = add i64 16, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memcpy(i8* %85, i8* %87, i32 %90)
  %92 = load i64, i64* %10, align 8
  %93 = add i64 16, %92
  %94 = load i64, i64* %14, align 8
  %95 = add i64 %93, %94
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %56, %24, %18
  %97 = load i64, i64* %7, align 8
  ret i64 %97
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
