; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslcorrupttest.c_tls_corrupt_write.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslcorrupttest.c_tls_corrupt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@docorrupt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @tls_corrupt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_corrupt_write(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @BIO_next(i32* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i64, i64* @docorrupt, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @OPENSSL_memdup(i8* %16, i32 %17)
  store i8* %18, i8** %10, align 8
  %19 = call i32 @TEST_ptr(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %47

22:                                               ; preds = %15
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = xor i32 %29, 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = load i32*, i32** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @BIO_write(i32* %32, i8* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @OPENSSL_free(i8* %36)
  br label %43

38:                                               ; preds = %3
  %39 = load i32*, i32** %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @BIO_write(i32* %39, i8* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %22
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @copy_flags(i32* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @OPENSSL_memdup(i8*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @copy_flags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
