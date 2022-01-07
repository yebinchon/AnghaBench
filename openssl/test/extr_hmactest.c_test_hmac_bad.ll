; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_hmactest.c_test_hmac_bad.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_hmactest.c_test_hmac_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@test = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_hmac_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hmac_bad() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 0, i32* %2, align 4
  %3 = call i32* (...) @HMAC_CTX_new()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @TEST_ptr(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %0
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @HMAC_CTX_get_md(i32* %8)
  %10 = call i32 @TEST_ptr_null(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @HMAC_Init_ex(i32* %13, i32* null, i32 0, i32* null, i32* null)
  %15 = call i32 @TEST_false(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  %18 = load i32*, i32** %1, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @HMAC_Update(i32* %18, i32 %22, i32 %26)
  %28 = call i32 @TEST_false(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %17
  %31 = load i32*, i32** %1, align 8
  %32 = call i32* (...) @EVP_sha1()
  %33 = call i32 @HMAC_Init_ex(i32* %31, i32* null, i32 0, i32* %32, i32* null)
  %34 = call i32 @TEST_false(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load i32*, i32** %1, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @HMAC_Update(i32* %37, i32 %41, i32 %45)
  %47 = call i32 @TEST_false(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36, %30, %17, %12, %7, %0
  br label %51

50:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @HMAC_CTX_free(i32* %52)
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32* @HMAC_CTX_new(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_ptr_null(i32) #1

declare dso_local i32 @HMAC_CTX_get_md(i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @HMAC_Init_ex(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @HMAC_Update(i32*, i32, i32) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i32 @HMAC_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
