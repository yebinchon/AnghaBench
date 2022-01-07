; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_test.c_test_rsa_security_bit.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_test.c_test_rsa_security_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@test_rsa_security_bit.vals = internal constant [8 x i8] c"\80\01\02\04\08\10 @", align 1
@rsa_security_bits_cases = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_rsa_security_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rsa_security_bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2000 x i8], align 16
  store i32 %0, i32* %2, align 4
  %9 = call i32* (...) @RSA_new()
  store i32* %9, i32** %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rsa_security_bits_cases, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rsa_security_bits_cases, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 7
  %24 = sdiv i32 %23, 8
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @TEST_ptr(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @TEST_int_le(i32 %29, i32 2000)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %1
  br label %60

33:                                               ; preds = %28
  %34 = getelementptr inbounds [2000 x i8], [2000 x i8]* %8, i64 0, i64 0
  %35 = load i32, i32* %4, align 4
  %36 = srem i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* @test_rsa_security_bit.vals, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @memset(i8* %34, i8 zeroext %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds [2000 x i8], [2000 x i8]* %8, i64 0, i64 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @BN_bin2bn(i8* %43, i32 %44, i32* null)
  %46 = getelementptr inbounds [2000 x i8], [2000 x i8]* %8, i64 0, i64 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @BN_bin2bn(i8* %46, i32 %47, i32* null)
  %49 = call i32 @RSA_set0_key(i32* %42, i32 %45, i32 %48, i32* null)
  %50 = call i64 @TEST_true(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %33
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @RSA_security_bits(i32* %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @TEST_uint_eq(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %52, %33
  br label %60

60:                                               ; preds = %59, %32
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @RSA_free(i32* %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i32 @memset(i8*, i8 zeroext, i32) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @RSA_set0_key(i32*, i32, i32, i32*) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i64 @TEST_uint_eq(i32, i32) #1

declare dso_local i32 @RSA_security_bits(i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
