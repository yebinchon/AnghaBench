; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_openssl.c_bf_check_supported_key_len.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_openssl.c_bf_check_supported_key_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bf_check_supported_key_len.key = internal constant [56 x i32] [i32 240, i32 225, i32 210, i32 195, i32 180, i32 165, i32 150, i32 135, i32 120, i32 105, i32 90, i32 75, i32 60, i32 45, i32 30, i32 15, i32 0, i32 17, i32 34, i32 51, i32 68, i32 85, i32 102, i32 119, i32 4, i32 104, i32 145, i32 4, i32 194, i32 253, i32 59, i32 47, i32 88, i32 64, i32 35, i32 100, i32 26, i32 186, i32 97, i32 118, i32 31, i32 31, i32 31, i32 31, i32 14, i32 14, i32 14, i32 14, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@bf_check_supported_key_len.data = internal constant [8 x i32] [i32 254, i32 220, i32 186, i32 152, i32 118, i32 84, i32 50, i32 16], align 16
@bf_check_supported_key_len.res = internal constant [8 x i32] [i32 192, i32 69, i32 4, i32 1, i32 46, i32 78, i32 31, i32 83], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bf_check_supported_key_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf_check_supported_key_len() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %42

10:                                               ; preds = %0
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* (...) @EVP_bf_ecb()
  %13 = call i32 @EVP_EncryptInit_ex(i32* %11, i32* %12, i32* null, i32* null, i32* null)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %38

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @EVP_CIPHER_CTX_set_key_length(i32* %17, i32 56)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %38

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @EVP_EncryptInit_ex(i32* %22, i32* null, i32* null, i32* getelementptr inbounds ([56 x i32], [56 x i32]* @bf_check_supported_key_len.key, i64 0, i64 0), i32* null)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %38

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %29 = call i32 @EVP_EncryptUpdate(i32* %27, i32* %28, i32* %4, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @bf_check_supported_key_len.data, i64 0, i64 0), i32 8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %38

32:                                               ; preds = %26
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %34 = call i64 @memcmp(i32* %33, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @bf_check_supported_key_len.res, i64 0, i64 0), i32 8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %36, %31, %25, %20, %15
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @EVP_CIPHER_CTX_free(i32* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %38, %9
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EVP_bf_ecb(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(i32*, i32) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
