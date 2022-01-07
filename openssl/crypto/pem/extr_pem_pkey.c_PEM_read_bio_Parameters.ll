; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_pkey.c_PEM_read_bio_Parameters.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_pkey.c_PEM_read_bio_Parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_STORE_INFO_PARAMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PEM_read_bio_Parameters(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 (...) @UI_null()
  %10 = call i32* @ossl_store_attach_pem_bio(i32* %8, i32 %9, i32* null)
  store i32* %10, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @OSSL_STORE_eof(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @OSSL_STORE_load(i32* %19)
  store i32* %20, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @OSSL_STORE_INFO_get_type(i32* %25)
  %27 = load i64, i64* @OSSL_STORE_INFO_PARAMS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @OSSL_STORE_INFO_get1_PARAMS(i32* %30)
  store i32* %31, i32** %5, align 8
  br label %35

32:                                               ; preds = %24
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @OSSL_STORE_INFO_free(i32* %33)
  br label %14

35:                                               ; preds = %29, %22
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32**, i32*** %4, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = load i32**, i32*** %4, align 8
  store i32* %42, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %38, %35
  br label %45

45:                                               ; preds = %44, %12
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ossl_store_detach_pem_bio(i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @OSSL_STORE_INFO_free(i32* %48)
  %50 = load i32*, i32** %5, align 8
  ret i32* %50
}

declare dso_local i32* @ossl_store_attach_pem_bio(i32*, i32, i32*) #1

declare dso_local i32 @UI_null(...) #1

declare dso_local i32 @OSSL_STORE_eof(i32*) #1

declare dso_local i32* @OSSL_STORE_load(i32*) #1

declare dso_local i64 @OSSL_STORE_INFO_get_type(i32*) #1

declare dso_local i32* @OSSL_STORE_INFO_get1_PARAMS(i32*) #1

declare dso_local i32 @OSSL_STORE_INFO_free(i32*) #1

declare dso_local i32 @ossl_store_detach_pem_bio(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
