; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_load_providers.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_load_providers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**)* @load_providers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_providers(i32** %0, i32** %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32** %0, i32*** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32* (...) @OPENSSL_CTX_new()
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %46

14:                                               ; preds = %2
  %15 = call i64 (...) @test_get_argument_count()
  %16 = icmp ugt i64 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %46

18:                                               ; preds = %14
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i64, i64* %7, align 8
  %21 = call i64 (...) @test_get_argument_count()
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = call i8* @test_get_argument(i64 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32* @OSSL_PROVIDER_load(i32* %26, i8* %27)
  %29 = load i32**, i32*** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  store i32* %28, i32** %31, align 8
  %32 = load i32**, i32*** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @TEST_ptr(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  br label %46

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %19

43:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32**, i32*** %3, align 8
  store i32* %44, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %38, %17, %13
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32* @OPENSSL_CTX_new(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i64 @test_get_argument_count(...) #1

declare dso_local i8* @test_get_argument(i64) #1

declare dso_local i32* @OSSL_PROVIDER_load(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
