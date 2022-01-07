; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_tls13secretstest.c_test_secret.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_tls13secretstest.c_test_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@KEYLEN = common dso_local global i32 0, align 4
@IVLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Failed to get hash\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Secret generation failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Key generation failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"IV generation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64, i8*, i8*, i8*)* @test_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_secret(i32* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %24 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  %31 = load i32, i32* @KEYLEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %20, align 8
  %34 = load i32, i32* @IVLEN, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %21, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @ssl_handshake_md(i32* %37)
  store i32* %38, i32** %22, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = trunc i64 %29 to i32
  %41 = call i32 @ssl_handshake_hash(i32* %39, i8* %30, i32 %40, i64* %16)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %7
  %44 = call i32 @TEST_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %97

45:                                               ; preds = %7
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %22, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @tls13_hkdf_expand(i32* %46, i32* %47, i8* %48, i8* %49, i64 %50, i8* %30, i64 %51, i8* %27, i64 %52, i32 1)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = call i32 @TEST_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %97

57:                                               ; preds = %45
  %58 = load i64, i64* %16, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i8*, i8** %13, align 8
  %61 = load i64, i64* %16, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @TEST_mem_eq(i8* %27, i32 %59, i8* %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %97

66:                                               ; preds = %57
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %22, align 8
  %69 = load i32, i32* @KEYLEN, align 4
  %70 = call i32 @tls13_derive_key(i32* %67, i32* %68, i8* %27, i8* %33, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = call i32 @TEST_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %97

74:                                               ; preds = %66
  %75 = load i32, i32* @KEYLEN, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = load i32, i32* @KEYLEN, align 4
  %78 = call i32 @TEST_mem_eq(i8* %33, i32 %75, i8* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %97

81:                                               ; preds = %74
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %22, align 8
  %84 = load i32, i32* @IVLEN, align 4
  %85 = call i32 @tls13_derive_iv(i32* %82, i32* %83, i8* %27, i8* %36, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = call i32 @TEST_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %97

89:                                               ; preds = %81
  %90 = load i32, i32* @IVLEN, align 4
  %91 = load i8*, i8** %15, align 8
  %92 = load i32, i32* @IVLEN, align 4
  %93 = call i32 @TEST_mem_eq(i8* %36, i32 %90, i8* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %97

96:                                               ; preds = %89
  store i32 1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %97

97:                                               ; preds = %96, %95, %87, %80, %72, %65, %55, %43
  %98 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ssl_handshake_md(i32*) #2

declare dso_local i32 @ssl_handshake_hash(i32*, i8*, i32, i64*) #2

declare dso_local i32 @TEST_error(i8*) #2

declare dso_local i32 @tls13_hkdf_expand(i32*, i32*, i8*, i8*, i64, i8*, i64, i8*, i64, i32) #2

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #2

declare dso_local i32 @tls13_derive_key(i32*, i32*, i8*, i8*, i32) #2

declare dso_local i32 @tls13_derive_iv(i32*, i32*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
