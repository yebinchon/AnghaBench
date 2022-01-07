; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_generate_pkey.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_generate_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ssl_generate_pkey(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %32

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @EVP_PKEY_CTX_new(i32* %10, i32* null)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %28

15:                                               ; preds = %9
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @EVP_PKEY_keygen_init(i32* %16)
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %28

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @EVP_PKEY_keygen(i32* %21, i32** %5)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @EVP_PKEY_free(i32* %25)
  store i32* null, i32** %5, align 8
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %19, %14
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @EVP_PKEY_CTX_free(i32* %29)
  %31 = load i32*, i32** %5, align 8
  store i32* %31, i32** %2, align 8
  br label %32

32:                                               ; preds = %28, %8
  %33 = load i32*, i32** %2, align 8
  ret i32* %33
}

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_keygen_init(i32*) #1

declare dso_local i64 @EVP_PKEY_keygen(i32*, i32**) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
