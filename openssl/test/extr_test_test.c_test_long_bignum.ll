; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_test_test.c_test_long_bignum.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_test_test.c_test_long_bignum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_long_bignum.as = private unnamed_addr constant [319 x i8] c"123456789012345678901234567890123456789012345678901212345678901234567890123456789012345678901234567890121234567890123456789012345678901234567890123456789012123456789012345678901234567890123456789012345678901212345678901234567890123456789012345678901234567890121234567890123456789012345678901234567890123456789012FFFFFF\00", align 16
@__const.test_long_bignum.bs = private unnamed_addr constant [111 x i8] c"12345678901234567890123456789012345678901234567890121234567890123456789012345678901234567890123456789013987657\00", align 16
@__const.test_long_bignum.cs = private unnamed_addr constant [66 x i8] c"-123456789012345678901234567890123456789012345678901234567890ABCD\00", align 16
@__const.test_long_bignum.ds = private unnamed_addr constant [65 x i8] c"-23456789A123456789B123456789C123456789D123456789E123456789FABCD\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_long_bignum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_long_bignum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [319 x i8], align 16
  %7 = alloca [111 x i8], align 16
  %8 = alloca [66 x i8], align 16
  %9 = alloca [65 x i8], align 16
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %10 = bitcast [319 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([319 x i8], [319 x i8]* @__const.test_long_bignum.as, i32 0, i32 0), i64 319, i1 false)
  %11 = bitcast [111 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([111 x i8], [111 x i8]* @__const.test_long_bignum.bs, i32 0, i32 0), i64 111, i1 false)
  %12 = bitcast [66 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([66 x i8], [66 x i8]* @__const.test_long_bignum.cs, i32 0, i32 0), i64 66, i1 false)
  %13 = bitcast [65 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds ([65 x i8], [65 x i8]* @__const.test_long_bignum.ds, i32 0, i32 0), i64 65, i1 false)
  %14 = getelementptr inbounds [319 x i8], [319 x i8]* %6, i64 0, i64 0
  %15 = call i32 @BN_hex2bn(i32** %2, i8* %14)
  %16 = call i64 @TEST_true(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %0
  %19 = getelementptr inbounds [111 x i8], [111 x i8]* %7, i64 0, i64 0
  %20 = call i32 @BN_hex2bn(i32** %3, i8* %19)
  %21 = call i64 @TEST_true(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 0
  %25 = call i32 @BN_hex2bn(i32** %4, i8* %24)
  %26 = call i64 @TEST_true(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %30 = call i32 @BN_hex2bn(i32** %5, i8* %29)
  %31 = call i64 @TEST_true(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load i32*, i32** %2, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @TEST_BN_eq(i32* %34, i32* %35)
  %37 = call i32 @TEST(i32 0, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @TEST_BN_eq(i32* %38, i32* %39)
  %41 = call i32 @TEST(i32 0, i32 %40)
  %42 = and i32 %37, %41
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @TEST_BN_eq(i32* %43, i32* null)
  %45 = call i32 @TEST(i32 0, i32 %44)
  %46 = and i32 %42, %45
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @TEST_BN_eq(i32* null, i32* %47)
  %49 = call i32 @TEST(i32 0, i32 %48)
  %50 = and i32 %46, %49
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @TEST_BN_ne(i32* %51, i32* null)
  %53 = call i32 @TEST(i32 1, i32 %52)
  %54 = and i32 %50, %53
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @TEST_BN_eq(i32* %55, i32* %56)
  %58 = call i32 @TEST(i32 0, i32 %57)
  %59 = and i32 %54, %58
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %33, %28, %23, %18, %0
  %62 = phi i1 [ false, %28 ], [ false, %23 ], [ false, %18 ], [ false, %0 ], [ %60, %33 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %1, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @BN_free(i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @BN_free(i32* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @BN_free(i32* %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @BN_free(i32* %70)
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @TEST_true(i32) #2

declare dso_local i32 @BN_hex2bn(i32**, i8*) #2

declare dso_local i32 @TEST(i32, i32) #2

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #2

declare dso_local i32 @TEST_BN_ne(i32*, i32*) #2

declare dso_local i32 @BN_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
