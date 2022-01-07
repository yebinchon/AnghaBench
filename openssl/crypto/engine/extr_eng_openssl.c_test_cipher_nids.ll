; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_openssl.c_test_cipher_nids.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_openssl.c_test_cipher_nids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_cipher_nids.cipher_nids = internal global [4 x i32] zeroinitializer, align 16
@test_cipher_nids.pos = internal global i32 0, align 4
@test_cipher_nids.init = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @test_cipher_nids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cipher_nids(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  store i32** %0, i32*** %2, align 8
  %4 = load i32, i32* @test_cipher_nids.init, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = call i32* (...) @test_r4_cipher()
  store i32* %7, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @EVP_CIPHER_nid(i32* %10)
  %12 = load i32, i32* @test_cipher_nids.pos, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @test_cipher_nids.pos, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* @test_cipher_nids.cipher_nids, i64 0, i64 %14
  store i32 %11, i32* %15, align 4
  br label %16

16:                                               ; preds = %9, %6
  %17 = call i32* (...) @test_r4_40_cipher()
  store i32* %17, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @EVP_CIPHER_nid(i32* %20)
  %22 = load i32, i32* @test_cipher_nids.pos, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @test_cipher_nids.pos, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* @test_cipher_nids.cipher_nids, i64 0, i64 %24
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* @test_cipher_nids.pos, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* @test_cipher_nids.cipher_nids, i64 0, i64 %28
  store i32 0, i32* %29, align 4
  store i32 1, i32* @test_cipher_nids.init, align 4
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i32**, i32*** %2, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_cipher_nids.cipher_nids, i64 0, i64 0), i32** %31, align 8
  %32 = load i32, i32* @test_cipher_nids.pos, align 4
  ret i32 %32
}

declare dso_local i32* @test_r4_cipher(...) #1

declare dso_local i32 @EVP_CIPHER_nid(i32*) #1

declare dso_local i32* @test_r4_40_cipher(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
