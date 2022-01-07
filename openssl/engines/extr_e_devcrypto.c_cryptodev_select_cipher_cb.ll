; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_cryptodev_select_cipher_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_cryptodev_select_cipher_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"devcrypto: unknown cipher %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"devcrypto: cipher %s not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @cryptodev_select_cipher_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptodev_select_cipher_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @OPENSSL_strndup(i8* %21, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %17
  store i32 0, i32* %4, align 4
  br label %52

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = call i32* @EVP_get_cipherbyname(i8* %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %49

35:                                               ; preds = %26
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @EVP_CIPHER_nid(i32* %36)
  %38 = call i64 @find_cipher_data_index(i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 1, i32* %43, align 4
  br label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @OPENSSL_free(i8* %50)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %25, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i8* @OPENSSL_strndup(i8*, i32) #1

declare dso_local i32* @EVP_get_cipherbyname(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @find_cipher_data_index(i32) #1

declare dso_local i32 @EVP_CIPHER_nid(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
