; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_verify_extra_test.c_test_store_ctx.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_verify_extra_test.c_test_store_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bad_f = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_store_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_store_ctx() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @bad_f, align 4
  %7 = call i32* @BIO_new_file(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %35

11:                                               ; preds = %0
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @PEM_read_bio_X509(i32* %12, i32* null, i32 0, i32* null)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %35

17:                                               ; preds = %11
  %18 = call i32* (...) @X509_STORE_CTX_new()
  store i32* %18, i32** %1, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %35

22:                                               ; preds = %17
  %23 = load i32*, i32** %1, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @X509_STORE_CTX_init(i32* %23, i32* null, i32* %24, i32* null)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %35

28:                                               ; preds = %22
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @X509_verify_cert(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %34, %27, %21, %16, %10
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @X509_STORE_CTX_free(i32* %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @X509_free(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @BIO_free(i32* %40)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32* @BIO_new_file(i32, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32, i32*) #1

declare dso_local i32* @X509_STORE_CTX_new(...) #1

declare dso_local i32 @X509_STORE_CTX_init(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @X509_verify_cert(i32*) #1

declare dso_local i32 @X509_STORE_CTX_free(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
