; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_curve448_internal_test.c_dohash.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_curve448_internal_test.c_dohash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dohash.hashout = internal constant [64 x i32] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64)* @dohash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dohash(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 (...) @EVP_shake256()
  %10 = call i32 @EVP_DigestInit_ex(i32* %8, i32 %9, i32* null)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @EVP_DigestUpdate(i32* %13, i32* %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @EVP_DigestFinalXOF(i32* %19, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @dohash.hashout, i64 0, i64 0), i32 256)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %12, %3
  store i32* null, i32** %4, align 8
  br label %24

23:                                               ; preds = %18
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @dohash.hashout, i64 0, i64 0), i32** %4, align 8
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32*, i32** %4, align 8
  ret i32* %25
}

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_shake256(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i64) #1

declare dso_local i32 @EVP_DigestFinalXOF(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
