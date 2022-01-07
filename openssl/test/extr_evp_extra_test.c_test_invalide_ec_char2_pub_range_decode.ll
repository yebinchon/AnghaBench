; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_invalide_ec_char2_pub_range_decode.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_invalide_ec_char2_pub_range_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@ec_der_pub_keys = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_invalide_ec_char2_pub_range_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_invalide_ec_char2_pub_range_decode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ec_der_pub_keys, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ec_der_pub_keys, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32* @BIO_new_mem_buf(i32 %11, i32 %17)
  store i32* %18, i32** %4, align 8
  %19 = call i64 @TEST_ptr(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %43

22:                                               ; preds = %1
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @d2i_EC_PUBKEY_bio(i32* %23, i32* null)
  store i32* %24, i32** %5, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ec_der_pub_keys, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @TEST_ptr(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32, %22
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @TEST_ptr_null(i32* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ true, %32 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %21
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @EC_KEY_free(i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @BIO_free(i32* %46)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_new_mem_buf(i32, i32) #1

declare dso_local i32* @d2i_EC_PUBKEY_bio(i32*, i32*) #1

declare dso_local i64 @TEST_ptr_null(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
