; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_ctx_check_ct_flag.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_ctx_check_ct_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @test_ctx_check_ct_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ctx_check_ct_flag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [30 x i32*], align 16
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @BN_CTX_start(i32* %6)
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds [30 x i32*], [30 x i32*]* %5, i64 0, i64 0
  %11 = call i64 @OSSL_NELEM(i32** %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @BN_CTX_get(i32* %14)
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds [30 x i32*], [30 x i32*]* %5, i64 0, i64 %16
  store i32* %15, i32** %17, align 8
  %18 = call i32 @TEST_ptr(i32* %15)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %35

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds [30 x i32*], [30 x i32*]* %5, i64 0, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %26 = call i32 @BN_get_flags(i32* %24, i32 %25)
  %27 = call i32 @TEST_false(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %35

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %8

34:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29, %20
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @BN_CTX_end(i32* %36)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i64 @OSSL_NELEM(i32**) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @BN_get_flags(i32*, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
