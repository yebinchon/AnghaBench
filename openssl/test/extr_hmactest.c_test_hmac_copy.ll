; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_hmactest.c_test_hmac_copy.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_hmactest.c_test_hmac_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@test = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_hmac_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hmac_copy() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %8 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32* (...) @HMAC_CTX_new()
  store i32* %12, i32** %2, align 8
  %13 = call i32* (...) @HMAC_CTX_new()
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @TEST_ptr(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %0
  br label %73

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 7
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 7
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (...) @EVP_sha1()
  %33 = call i32 @HMAC_Init_ex(i32* %23, i32 %27, i32 %31, i32 %32, i32* null)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %22
  %37 = load i32*, i32** %2, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 7
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 7
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @HMAC_Update(i32* %37, i32 %41, i32 %45)
  %47 = call i32 @TEST_true(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %36
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @HMAC_CTX_copy(i32* %50, i32* %51)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @HMAC_Final(i32* %56, i8* %11, i32* %6)
  %58 = call i32 @TEST_true(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55, %49, %36, %22
  br label %73

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = call i8* @pt(i8* %11, i32 %62)
  store i8* %63, i8** %1, align 8
  %64 = load i8*, i8** %1, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 7
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @TEST_str_eq(i8* %64, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %73

72:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %71, %60, %21
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @HMAC_CTX_free(i32* %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @HMAC_CTX_free(i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @HMAC_CTX_new(...) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @HMAC_Init_ex(i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @HMAC_Update(i32*, i32, i32) #2

declare dso_local i32 @HMAC_CTX_copy(i32*, i32*) #2

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #2

declare dso_local i8* @pt(i8*, i32) #2

declare dso_local i32 @TEST_str_eq(i8*, i32) #2

declare dso_local i32 @HMAC_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
