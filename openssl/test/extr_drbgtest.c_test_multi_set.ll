; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_multi_set.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_multi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_sha1 = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_HMAC = common dso_local global i32 0, align 4
@NID_sha256 = common dso_local global i32 0, align 4
@NID_aes_192_ctr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_multi_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_multi_set() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  %3 = call i32* @RAND_DRBG_new(i32 0, i32 0, i32* null)
  store i32* %3, i32** %2, align 8
  %4 = call i32 @TEST_ptr(i32* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @disable_crngt(i32* %7)
  %9 = call i32 @TEST_true(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %0
  br label %63

12:                                               ; preds = %6
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @NID_sha1, align 4
  %15 = load i32, i32* @RAND_DRBG_FLAG_HMAC, align 4
  %16 = call i32 @RAND_DRBG_set(i32* %13, i32 %14, i32 %15)
  %17 = call i32 @TEST_true(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %63

20:                                               ; preds = %12
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @NID_sha1, align 4
  %23 = load i32, i32* @RAND_DRBG_FLAG_HMAC, align 4
  %24 = call i32 @RAND_DRBG_set(i32* %21, i32 %22, i32 %23)
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %63

28:                                               ; preds = %20
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @NID_sha256, align 4
  %31 = call i32 @RAND_DRBG_set(i32* %29, i32 %30, i32 0)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %63

35:                                               ; preds = %28
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @NID_sha256, align 4
  %38 = call i32 @RAND_DRBG_set(i32* %36, i32 %37, i32 0)
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %63

42:                                               ; preds = %35
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @NID_aes_192_ctr, align 4
  %45 = call i32 @RAND_DRBG_set(i32* %43, i32 %44, i32 0)
  %46 = call i32 @TEST_true(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %63

49:                                               ; preds = %42
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @NID_aes_192_ctr, align 4
  %52 = call i32 @RAND_DRBG_set(i32* %50, i32 %51, i32 0)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %63

56:                                               ; preds = %49
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @RAND_DRBG_instantiate(i32* %57, i32* null, i32 0)
  %59 = call i32 @TEST_int_gt(i32 %58, i32 0)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %56
  store i32 1, i32* %1, align 4
  br label %63

63:                                               ; preds = %62, %61, %55, %48, %41, %34, %27, %19, %11
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @uninstantiate(i32* %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @RAND_DRBG_free(i32* %66)
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @RAND_DRBG_new(i32, i32, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @disable_crngt(i32*) #1

declare dso_local i32 @RAND_DRBG_set(i32*, i32, i32) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @RAND_DRBG_instantiate(i32*, i32*, i32) #1

declare dso_local i32 @uninstantiate(i32*) #1

declare dso_local i32 @RAND_DRBG_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
