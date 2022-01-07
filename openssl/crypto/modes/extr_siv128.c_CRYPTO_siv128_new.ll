; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_siv128.c_CRYPTO_siv128_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_siv128.c_CRYPTO_siv128_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CRYPTO_siv128_new(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32* @OPENSSL_malloc(i32 4)
  store i32* %12, i32** %10, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = load i32*, i32** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @CRYPTO_siv128_init(i32* %15, i8* %16, i32 %17, i32* %18, i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32*, i32** %10, align 8
  store i32* %24, i32** %5, align 8
  br label %29

25:                                               ; preds = %14
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @OPENSSL_free(i32* %26)
  br label %28

28:                                               ; preds = %25, %4
  store i32* null, i32** %5, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32*, i32** %5, align 8
  ret i32* %30
}

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @CRYPTO_siv128_init(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
