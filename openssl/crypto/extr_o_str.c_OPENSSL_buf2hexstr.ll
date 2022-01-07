; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_o_str.c_OPENSSL_buf2hexstr.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_o_str.c_OPENSSL_buf2hexstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO_F_OPENSSL_BUF2HEXSTR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OPENSSL_buf2hexstr(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i8* @OPENSSL_zalloc(i32 1)
  store i8* %11, i8** %3, align 8
  br label %34

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = mul nsw i64 %13, 3
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i8* @OPENSSL_malloc(i64 %15)
  store i8* %16, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @CRYPTO_F_OPENSSL_BUF2HEXSTR, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @CRYPTOerr(i32 %19, i32 %20)
  store i8* null, i8** %3, align 8
  br label %34

22:                                               ; preds = %12
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @OPENSSL_buf2hexstr_ex(i8* %23, i64 %24, i32* null, i8* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %3, align 8
  br label %34

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @OPENSSL_free(i8* %32)
  store i8* null, i8** %3, align 8
  br label %34

34:                                               ; preds = %31, %29, %18, %10
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i8* @OPENSSL_zalloc(i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i64 @OPENSSL_buf2hexstr_ex(i8*, i64, i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
