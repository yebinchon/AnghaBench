; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_test.c_test_rsa_pkcs1.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_test.c_test_rsa_pkcs1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_rsa_pkcs1.ptext_ex = internal global [9 x i8] c"T\85\9B4,I\EA*\00", align 1
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_rsa_pkcs1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rsa_pkcs1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %9, align 4
  store i32 8, i32* %8, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @rsa_setkey(i32** %4, i8* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %18 = call i32 @RSA_public_encrypt(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_pkcs1.ptext_ex, i64 0, i64 0), i8* %15, i32* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @TEST_int_eq(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %38

24:                                               ; preds = %1
  %25 = load i32, i32* %10, align 4
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %30 = call i32 @RSA_private_decrypt(i32 %25, i8* %26, i8* %27, i32* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @TEST_mem_eq(i8* %31, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_pkcs1.ptext_ex, i64 0, i64 0), i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %38

37:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %23
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @RSA_free(i32* %39)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @rsa_setkey(i32**, i8*, i32) #1

declare dso_local i32 @RSA_public_encrypt(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @RSA_private_decrypt(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @RSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
