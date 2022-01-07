; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common_hw.c_cipher_hw_chunked_cbc.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common_hw.c_cipher_hw_chunked_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCHUNK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_hw_chunked_cbc(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %9

9:                                                ; preds = %13, %4
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @MAXCHUNK, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* @MAXCHUNK, align 8
  %18 = call i32 @cipher_hw_generic_cbc(i32* %14, i8* %15, i8* %16, i64 %17)
  %19 = load i64, i64* @MAXCHUNK, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* @MAXCHUNK, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %24, i8** %7, align 8
  %25 = load i64, i64* @MAXCHUNK, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %27, i8** %6, align 8
  br label %9

28:                                               ; preds = %9
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @cipher_hw_generic_cbc(i32* %32, i8* %33, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %31, %28
  ret i32 1
}

declare dso_local i32 @cipher_hw_generic_cbc(i32*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
