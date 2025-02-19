; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_fbytes.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_fbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32)* }

@fbytes.fbytes_counter = internal global i32 0, align 4
@use_fake = common dso_local global i64 0, align 8
@old_rand = common dso_local global %struct.TYPE_2__* null, align 8
@numbers = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @fbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbytes(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %8 = load i64, i64* @use_fake, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @old_rand, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i8*, i32)*, i32 (i8*, i32)** %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 %13(i8* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  store i64 0, i64* @use_fake, align 8
  %18 = call i32* (...) @BN_new()
  store i32* %18, i32** %7, align 8
  %19 = call i32 @TEST_ptr(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i32, i32* @fbytes.fbytes_counter, align 4
  %23 = load i32*, i32** @numbers, align 8
  %24 = call i32 @OSSL_NELEM(i32* %23)
  %25 = call i32 @TEST_int_lt(i32 %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load i32*, i32** @numbers, align 8
  %29 = load i32, i32* @fbytes.fbytes_counter, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BN_hex2bn(i32** %7, i32 %32)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @BN_num_bytes(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @TEST_int_le(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BN_bn2binpad(i32* %43, i8* %44, i32 %45)
  %47 = call i32 @TEST_true(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42, %36, %27, %21, %17
  br label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @fbytes.fbytes_counter, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32*, i32** @numbers, align 8
  %54 = call i32 @OSSL_NELEM(i32* %53)
  %55 = srem i32 %52, %54
  store i32 %55, i32* @fbytes.fbytes_counter, align 4
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %50, %49
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @BN_free(i32* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_int_lt(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_hex2bn(i32**, i32) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
