; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_test.c_test_rsa_oaep.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_test.c_test_rsa_oaep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_rsa_oaep.ptext_ex = internal global [9 x i8] c"T\85\9B4,I\EA*\00", align 1
@RSA_PKCS1_OAEP_PADDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Skipping: No OAEP support\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_rsa_oaep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rsa_oaep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %9, align 4
  store i32 8, i32* %8, align 4
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @rsa_setkey(i32** %4, i8* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %19 = call i32 @RSA_public_encrypt(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_oaep.ptext_ex, i64 0, i64 0), i8* %16, i32* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = call i64 (...) @pad_unknown()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @TEST_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %114

27:                                               ; preds = %22, %1
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @TEST_int_eq(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %114

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %39 = call i32 @RSA_private_decrypt(i32 %34, i8* %35, i8* %36, i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @TEST_mem_eq(i8* %40, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_oaep.ptext_ex, i64 0, i64 0), i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %114

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %52 = call i32 @RSA_private_decrypt(i32 %47, i8* %48, i8* %49, i32* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @TEST_mem_eq(i8* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_rsa_oaep.ptext_ex, i64 0, i64 0), i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %114

59:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %90, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = xor i32 %69, 1
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %67, align 1
  %72 = load i32, i32* %9, align 4
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %77 = call i32 @RSA_private_decrypt(i32 %72, i8* %73, i8* %74, i32* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @TEST_int_le(i32 %78, i32 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %64
  br label %114

82:                                               ; preds = %64
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = xor i32 %87, 1
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %60

93:                                               ; preds = %60
  store i32 -1, i32* %11, align 4
  br label %94

94:                                               ; preds = %110, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @RSA_PKCS1_OAEP_PADDING, align 4
  %104 = call i32 @RSA_private_decrypt(i32 %99, i8* %100, i8* %101, i32* %102, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @TEST_int_le(i32 %105, i32 0)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %98
  br label %114

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %94

113:                                              ; preds = %94
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %108, %81, %58, %45, %32, %25
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @RSA_free(i32* %115)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @rsa_setkey(i32**, i8*, i32) #1

declare dso_local i32 @RSA_public_encrypt(i32, i8*, i8*, i32*, i32) #1

declare dso_local i64 @pad_unknown(...) #1

declare dso_local i32 @TEST_info(i8*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @RSA_private_decrypt(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i32 @RSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
